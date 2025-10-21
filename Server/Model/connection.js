//Data base library
const mysql = require('mysql2/promise');


let connection = null;

//async keyword that allows use to use the await keyword
//await is a promise (stop and do before moving on)

async function query(sql, params) {
    //Singleton DB connection
    if (null === connection) {
        connection = await mysql.createConnection({
            host: "student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com",
            user: "in_class_activity",
            password: "in_class_activity",
            database: 'in_class_activity'
        });
    }
   
    //STOP AND WAIT FOR THE DB TO RETURN THE RESULTS
    const [results, ] = await connection.execute(sql, params);


    return results;
}

//Allows other modules to use this method
module.exports = {
    query
}
