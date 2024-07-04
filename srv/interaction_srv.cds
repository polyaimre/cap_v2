using app.interactions as db from '../db/interactions';

service CatalogService {
    @requires: 'authentitaced-user'
    entity Groups as projection on db.Groups;

    @requires: 'Admin'
    @restrict: [{grant: 'READ', where: 'country_code = ''HU'''}]
    entity Teams  as projection on db.Teams;

}
