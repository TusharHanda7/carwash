const cds = require('@sap/cds');
module.exports = srv => {
    srv.on('getMaterial', async(req) => {
        const res = await cds.run('select * from CARWASH_DB_MASTER_ZMATERIAL')
        return res;
    });
}