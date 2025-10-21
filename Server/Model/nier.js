//Need DB connection for class to work
const connection = require('./connection');

//Gets all records related to 'nier' from the database
async function getAll(parameters = {}) {
    let selectSql = ``,
    queryParameters = [];


    return await connection.query(selectSql, queryParameters);
}

async function insert(parameters = {}) {
    let insertSql = ``,
    queryParameters = [];

    return await connection.query(insertSql, queryParameters);
}


async function getById(parameters = {}) {
    let selectSql = ``,
    queryParameters = [];


    return await connection.query(selectSql, queryParameters);
}

async function insert(parameters = {}) {
    let selectSql = ``,
    queryParameters = [];


    return await connection.query(selectSql, queryParameters);
}

async function edit(parameters = {}) {
    let selectSql = ``,
    queryParameters = [];


    return await connection.query(selectSql, queryParameters);
}

async function remove(parameters = {}) {
    let selectSql = ``,
    queryParameters = [];


    return await connection.query(selectSql, queryParameters);
}
module.exports = {
    getAll,
    insert,
    getById,
    edit,
    remove,

}
