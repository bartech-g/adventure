// srv/spacefarer-service.js
const cds = require("@sap/cds");

module.exports = cds.service.impl(function () {
  const { Spacefarers } = this.entities;

  // BEFORE CREATE
  this.before("CREATE", "Spacefarers", (req) => {
    console.log("before create log: " + this, this.entities, Spacefarers);
    const { stardustCollection, wormholeNavigationSkill, firstName, lastName } =
      req.data || {};

    const bad = [];
    if (!(typeof stardustCollection === "number") || stardustCollection < 0)
      bad.push("stardustCollection (> 0)");
    if (
      !(typeof wormholeNavigationSkill === "number") ||
      wormholeNavigationSkill < 0
    )
      bad.push("wormholeNavigationSkill (> 0)");

    if (bad.length) {
      throw new cds.error(`Invalid input for ${bad.join(", ")}.`, {
        code: "VALIDATION_ERROR",
        status: 400,
      });
    }
  });

  // AFTER CREATE
  this.after("CREATE", "Spacefarers", async (data, req) => {
    req.notify?.(
      `✨ Cosmic congrats, ${data.firstName} ${data.lastName}! Your adventure has begun.`
    ) ||
      req.info?.(
        200,
        `✨ Cosmic congrats, ${data.firstName} ${data.lastName}! Your adventure has begun.`
      );

    await this.emit("spacefarerOnboarded", {
      id: data.ID,
      name: `${data.firstName} ${data.lastName}`,
      deptId: data.department_ID || null,
      posId: data.position_ID || null,
    });

    cds
      .log("onboard")
      .info(
        `New spacefarer onboarded: ${data.ID} - ${data.firstName} ${data.lastName}`
      );
  });
});
