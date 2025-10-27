const connection = require('./connection');

async function getAll() {
    return await connection.query(`
        SELECT 
            weapon_id, weapon_name, type, damage, effect,
            material_name, total_needed, locations
        FROM Combined_NieR_Data
    `);
}

async function getById(id) {
    return await connection.query(`
        SELECT 
            weapon_id, weapon_name, type, damage, effect,
            material_name, total_needed, locations
        FROM Combined_NieR_Data
        WHERE weapon_id = ?
    `, [id]);
}

async function insert(parameters = {}) {
    const insertSQL = `
        INSERT INTO Combined_NieR_Data 
        (weapon_name, type, damage, effect, material_name, total_needed, locations)
        VALUES (?, ?, ?, ?, ?, ?, ?)
    `;
    return await connection.query(insertSQL, [
        parameters.weapon_name,
        parameters.type,
        parseInt(parameters.damage),
        parameters.effect,
        parameters.material_name,
        parseInt(parameters.total_needed),
        parameters.locations
    ]);
}

async function edit(id, parameters = {}) {
    const updateSQL = `
        UPDATE Combined_NieR_Data
        SET weapon_name = ?, type = ?, damage = ?, effect = ?, 
            material_name = ?, total_needed = ?, locations = ?
        WHERE weapon_id = ?
    `;
    return await connection.query(updateSQL, [
        parameters.weapon_name,
        parameters.type,
        parseInt(parameters.damage),
        parameters.effect,
        parameters.material_name,
        parseInt(parameters.total_needed),
        parameters.locations,
        id
    ]);
}

async function remove(id) {
    return await connection.query(`
        DELETE FROM Combined_NieR_Data WHERE weapon_id = ?
    `, [id]);
}

module.exports = {
    getAll,
    getById,
    insert,
    edit,
    remove
};
