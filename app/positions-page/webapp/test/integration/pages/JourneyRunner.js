sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"positions/positionspage/test/integration/pages/PositionsList",
	"positions/positionspage/test/integration/pages/PositionsObjectPage"
], function (JourneyRunner, PositionsList, PositionsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('positions/positionspage') + '/test/flp.html#app-preview',
        pages: {
			onThePositionsList: PositionsList,
			onThePositionsObjectPage: PositionsObjectPage
        },
        async: true
    });

    return runner;
});

