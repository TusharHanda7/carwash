namespace carwash.cds;
using { carwash.db.master } from './datamodel';

context cdsviews {
    define view![Request] as 
    select from master.zrequest{
        ID as![ID],
        REQUESTNUM as![RequestNum],
        // createdAt as![CreatedAt],
        // createdBy as![CreatedBy],
        GROSS_AMOUNT as![GrossAmount],
        CURRENCY as![Currency],
        TAX_AMOUNT as![TaxAmount],
        NET_AMOUNT as![NetAmount],
        SITE as![Site],
    };
    define view![RequestItem] as 
    select from master.zrequest_item{
        REQUESTNUM as![ID],
        ITEM_NO as![ItemNo],
        MATERIAL as![Material],
        MATERIALDESC as![MaterialDesc],
        GROSS_AMOUNT as![GrossAmount],
        CURRENCY as![Currency],
        TAX_AMOUNT as![TaxAmount],
        NET_AMOUNT as![NetAmount],
    }
    define view![Material] as 
    select from master.ZMATERIAL{
        Material,
        MaterialDesc,
        Price,
        Currency
    }
}