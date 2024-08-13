using { carwash.db } from '../db/datamodel';
using { carwash.cds } from '../db/cdsviews';

service CarwashService @(path:'CarwashService') {

    entity Request @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'RequestViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'RequestManager' ]
            }
        ]) as projection on db.master.zrequest;
    entity RequestItem as projection on db.master.zrequest_item;
    entity Material as projection on cds.cdsviews.Material;
    function getMaterial() returns String;
}