using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.Departments with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Department Name',
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
            Label: 'Department Name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: descr,
        },
    ],
);
