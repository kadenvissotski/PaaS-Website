const mysql = require('mysql2/promise');

let connection = null;

async function query(sql, params) {
    //Singleton DB connection
    if (null === connection) {
        connection = await mysql.createConnection({
            host: "student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com",
            user: "kadenvissotski",
            password: "os9d5zP6VLcV802yKYrDT8jOyWkLgsGIugc",
            database: 'kadenvissotski'
        });
    }
    const [results, ] = await connection.execute(sql, params);
    return results;
}

module.exports = {
    query
}