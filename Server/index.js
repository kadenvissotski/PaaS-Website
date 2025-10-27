// SQL injection prevention due to:
// Proper use of parameterized queries (?)
// Input validation with express-validator
// No direct string concatenation of unchecked input into SQL

const express = require('express');
const multer = require('multer');
const { validationResult } = require('express-validator');
const { weaponValidationRules } = require('./validation');
const weapons = require('./Model/weapons');
const connection = require('./Model/connection');

const app = express();
app.use(cors());
app.use(express.static("public"));
const upload = multer();
const port = 80;

app.use(express.static(__dirname + '/public'));
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

// GET all weapons (with optional filters, sorting, limit)
app.get('/weapons/', upload.none(), async (req, res) => {
    let whereSQL = "WHERE 1=1";
    const queryParams = [];

    if (req.query.weapon_name) {
        whereSQL += " AND weapon_name LIKE ?";
        queryParams.push(`%${req.query.weapon_name}%`);
    }

    if (req.query.type) {
        whereSQL += " AND type = ?";
        queryParams.push(req.query.type);
    }

    if (req.query.minDamage) {
        whereSQL += " AND damage >= ?";
        queryParams.push(parseInt(req.query.minDamage));
    }

    const validSorts = ['weapon_name', 'type', 'damage'];
    let orderSQL = "";
    if (req.query.sort && validSorts.includes(req.query.sort)) {
        const dir = req.query.order === 'desc' ? 'DESC' : 'ASC';
        orderSQL = ` ORDER BY ${req.query.sort} ${dir}`;
    }

    let limitSQL = " LIMIT 10";
    if (req.query.limit === 'all') {
        limitSQL = "";
    } else if (!isNaN(parseInt(req.query.limit))) {
        limitSQL = ` LIMIT ${parseInt(req.query.limit)}`;
    }

    try {
        const result = await connection.query(`
            SELECT weapon_id, weapon_name, type, damage, effect,
                   material_name, total_needed, locations
            FROM Combined_NieR_Data
            ${whereSQL}
            ${orderSQL}
            ${limitSQL}
        `, queryParams);
        res.json({ data: result });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Error retrieving data.' });
    }
});

// GET one weapon by ID
app.get('/weapons/:id/', async (req, res) => {
    try {
        const result = await weapons.getById(req.params.id);
        res.json({ data: result });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Error retrieving weapon.' });
    }
});

// INSERT new weapon
app.post('/weapons/',
    upload.none(),
    weaponValidationRules,
    async (req, res) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({ message: 'Validation failed', errors: errors.array() });
        }

        try {
            await weapons.insert(req.body);
            res.json({ data: 'Weapon inserted successfully!' });
        } catch (err) {
            console.error(err);
            res.status(500).json({ message: 'Error inserting weapon.' });
        }
    }
);

// UPDATE existing weapon
app.put('/weapons/:id/',
    upload.none(),
    weaponValidationRules,
    async (req, res) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({ message: 'Validation failed', errors: errors.array() });
        }

        try {
            await weapons.edit(req.params.id, req.body);
            res.json({ data: 'Weapon updated successfully!' });
        } catch (err) {
            console.error(err);
            res.status(500).json({ message: 'Error updating weapon.' });
        }
    }
);

// DELETE weapon
app.delete('/weapons/:id/', async (req, res) => {
    try {
        await weapons.remove(req.params.id);
        res.json({ data: 'Weapon deleted successfully!' });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Error deleting weapon.' });
    }
});

// Start server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
