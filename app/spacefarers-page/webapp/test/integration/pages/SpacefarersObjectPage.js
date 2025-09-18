sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'spacefarers.spacefarerspage',
            componentId: 'SpacefarersObjectPage',
            contextPath: '/Spacefarers'
        },
        CustomPageDefinitions
    );
});