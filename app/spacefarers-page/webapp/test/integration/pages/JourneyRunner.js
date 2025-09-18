sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"spacefarers/spacefarerspage/test/integration/pages/SpacefarersList",
	"spacefarers/spacefarerspage/test/integration/pages/SpacefarersObjectPage"
], function (JourneyRunner, SpacefarersList, SpacefarersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('spacefarers/spacefarerspage') + '/test/flp.html#app-preview',
        pages: {
			onTheSpacefarersList: SpacefarersList,
			onTheSpacefarersObjectPage: SpacefarersObjectPage
        },
        async: true
    });

    return runner;
});

