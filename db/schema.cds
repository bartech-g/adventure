namespace galactic.spacefarer;

using {
    managed,
    cuid
} from '@sap/cds/common';

aspect primary : managed, cuid {}

type positiveInteger : Integer @assert.range: [
    (0),
    _
];

entity Departments : primary {
    name      : String(255) @mandatory;
    descr     : String(255);
    employees : Association to many Spacefarers
                    on employees.department = $self;
}

entity Positions : primary {
    name       : String(255) @mandatory;
    descr      : String(255);
    department : Association to Departments;
}

entity Spacefarers : primary {
    firstName               : String(255) @mandatory;
    lastName                : String(255) @mandatory;
    stardustCollection      : positiveInteger default 0;
    wormholeNavigationSkill : positiveInteger default 0;
    originPlanet            : String(255);
    spacesuitColor          : String(255);
    department              : Association to Departments;
    position                : Association to Positions;
}
