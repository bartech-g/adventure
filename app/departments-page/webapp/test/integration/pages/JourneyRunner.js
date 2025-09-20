sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"departments/departmentspage/test/integration/pages/DepartmentsList",
	"departments/departmentspage/test/integration/pages/DepartmentsObjectPage"
], function (JourneyRunner, DepartmentsList, DepartmentsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('departments/departmentspage') + '/test/flp.html#app-preview',
        pages: {
			onTheDepartmentsList: DepartmentsList,
			onTheDepartmentsObjectPage: DepartmentsObjectPage
        },
        async: true
    });

    return runner;
});

