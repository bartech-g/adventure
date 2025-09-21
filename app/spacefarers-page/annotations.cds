using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.Spacefarers with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'First Name',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Last Name',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Stardust Collection',
                Value: stardustCollection,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Wormhole Navigation Skill',
                Value: wormholeNavigationSkill,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Origin Planet',
                Value: originPlanet,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Spacesuit Color',
                Value: spacesuitColor,
            },
            {
                $Type: 'UI.DataField',
                Value: department_ID,
                Label: 'Department',
            },
            {
                $Type: 'UI.DataField',
                Value: position_ID,
                Label: 'Position',
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
            Label: 'First Name',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Last Name',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Stardust Collection',
            Value: stardustCollection
        },
        {
            $Type: 'UI.DataField',
            Label: 'Wormhole Navigation Skill',
            Value: wormholeNavigationSkill,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Spacesuit Color',
            Value: spacesuitColor,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Origin Planet',
            Value: originPlanet,
        },
        {
            $Type: 'UI.DataField',
            Value: department_ID,
            Label: 'Department',
        },
        {
            $Type: 'UI.DataField',
            Value: position_ID,
            Label: 'Position',
        },
    ],
);

annotate service.Spacefarers with {
    department @(Common.ValueList: {
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
                Label            : 'Department Name',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'descr',
            },
        ],
    })
};

annotate service.Spacefarers with {
    position @(Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Positions',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: position_ID,
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
    })
};
