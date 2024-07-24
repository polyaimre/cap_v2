namespace app.interactions;
using from '../db/interactions';
//using V_INTERACTIONS  from '../db/interactions';

service CatalogService {
   // @requires: 'authentitaced-user'
    entity Groups as projection on interactions.Groups ;

   // @requires: 'Admin'
   // @restrict: [{grant: 'READ'}]
    entity Teams  as projection on  interactions.Teams;

    function sleep() returns Boolean;
    //@readonly
    entity V_INTERACTION as projection on interactions.V_INTERACTIONS;
}
