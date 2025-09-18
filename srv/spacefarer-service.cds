using galactic.spacefarer as db from '../db/schema';

@requires: 'authenticated-user' // all entities require authentication
service SpacefarerService {
    @odata.draft.enabled
    @restrict: [
        {
            grant: 'READ',
            to   : [
                'admin',
                'user'
            ]
        },
        {
            grant: [
                'CREATE',
                'UPDATE',
                'DELETE'
            ],
            to   : 'admin'
        }
    ]
    entity Departments as projection on db.Departments;

    @odata.draft.enabled
    @restrict: [
        {
            grant: 'READ',
            to   : [
                'admin',
                'user'
            ]
        },
        {
            grant: [
                'CREATE',
                'UPDATE',
                'DELETE'
            ],
            to   : 'admin'
        }
    ]
    entity Positions   as projection on db.Positions;

    @odata.draft.enabled
    @restrict: [
        {
            grant: 'READ',
            to   : [
                'admin',
                'user'
            ]
        },
        {
            grant: [
                'CREATE',
                'UPDATE',
                'DELETE'
            ],
            to   : 'admin'
        }
    ]
    entity Spacefarers as projection on db.Spacefarers;

    // create an event for onboarding a new spacefarer
    event spacefarerOnboarded : {
        id     : UUID;
        name   : String;
        deptId : UUID;
        posId  : UUID;
    };
}
