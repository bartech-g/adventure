using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.Positions with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Position Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: descr,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Position Name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: descr,
        },
    ],
);

annotate service.Positions with {
    department @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Departments',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: department_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'name',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'descr',
            },
        ],
    }
};
