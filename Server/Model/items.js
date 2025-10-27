const connection = require('./connection');

async function getAll() {
    return await connection.query(`SELECT * FROM Items`);
}

module.exports = {
    getAll
}
