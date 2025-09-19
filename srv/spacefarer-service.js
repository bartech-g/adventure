const cds = require("@sap/cds");
const { message } = require("@sap/cds/lib/log/cds-error");

class SpacefarerService extends cds.ApplicationService {
  async init() {
    const { Spacefarers } = this.entities;

    // BEFORE CREATE/UPDATE: validate positive numbers + small cleanup
    this.before(["CREATE", "UPDATE"], Spacefarers, (req) => {
      this.#validateSpacefarer(req);
    });

    // AFTER CREATE: notify + emit integration event
    this.after("CREATE", Spacefarers, async (data, req) => {
      this.#congratulate(data, req);
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

    return super.init();
  }

  #validateSpacefarer(req) {
    const { stardustCollection, wormholeNavigationSkill } = req.data || {};

    // const violations = [];
    const isPositive = (n) => typeof n === "number" && n > 0; // "positive numbers only"

    if (!isPositive(stardustCollection)) {
      return req.error("POSITIVE_INT_VALIDATION_ERROR", ["stardustCollection"]);
    }
    // violations.push("stardustCollection (> 0)");
    if (!isPositive(wormholeNavigationSkill)) {
      return req.error({
        status: 400,
        code: "POSITIVE_INT_VALIDATION_ERROR",
        message: "POSITIVE_INT_VALIDATION_ERROR",
        target: "wormholeNavigationSkill",
        args: ["wormholeNavigationSkill"],
      });
    }

    // violations.push("wormholeNavigationSkill (> 0)");

    // if (violations.length) {
    //   throw new cds.error(`Invalid input for ${violations.join(", ")}.`, {
    //     code: "VALIDATION_ERROR",
    //     status: 400,
    //   });
    // }
  }

  #congratulate(data, req) {
    const msg = `✨ Cosmic congrats, ${data.firstName} ${data.lastName}! Your adventure has begun.`;
    req.notify?.(msg) || req.info?.(200, msg);
  }
}

module.exports = SpacefarerService;
