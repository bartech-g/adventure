using SpacefarerService as service from '../../srv/spacefarer-service';
annotate service.Spacefarers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stardustCollection',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'wormholeNavigationSkill',
                Value : wormholeNavigationSkill,
            },
            {
                $Type : 'UI.DataField',
                Label : 'originPlanet',
                Value : originPlanet,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spacesuitColor',
                Value : spacesuitColor,
            },
            {
                $Type : 'UI.DataField',
                Value : department_ID,
                Label : 'department',
            },
            {
                $Type : 'UI.DataField',
                Value : position_ID,
                Label : 'position',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stardustCollection',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Label : 'wormholeNavigationSkill',
            Value : wormholeNavigationSkill,
        },
        {
            $Type : 'UI.DataField',
            Label : 'originPlanet',
            Value : originPlanet,
        },
        {
            $Type : 'UI.DataField',
            Value : department_ID,
            Label : 'department',
        },
        {
            $Type : 'UI.DataField',
            Value : position_ID,
            Label : 'position',
        },
    ],
);

annotate service.Spacefarers with {
    department @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Departments',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : department_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'descr',
                },
            ],
        },
        Common.ExternalID : department.name,
    )
};

annotate service.Spacefarers with {
    position @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Positions',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : position_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'descr',
                },
            ],
        },
        Common.ExternalID : position.name,
    )
};

