sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'departments.departmentspage',
            componentId: 'DepartmentsObjectPage',
            contextPath: '/Departments'
        },
        CustomPageDefinitions
    );
});