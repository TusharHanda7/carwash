namespace carwash.db;
using { cuid, temporal, managed } from '@sap/cds/common';
using { carwash.common } from './common';
context master {
    entity zrequest : cuid,common.Amount {
        REQUESTNUM : String(10);
        SITE : String(5);
    }
    entity zrequest_item : common.Amount,managed {
        key REQUESTNUM : Association to zrequest;
        key ITEM_NO : Integer;
        MATERIAL : String(10);
        MATERIALDESC : String(40);
    }

    entity ZMATERIAL{
        key Material : String(10);
        MaterialDesc: String(40);
        Price:Decimal(10, 2);
        Currency: String(3);
    }
}