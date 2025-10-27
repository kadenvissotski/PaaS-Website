const { body } = require('express-validator');

// Validation schema for inserting and editing weapons
const weaponValidationRules = [
    body('weapon_name')
        .notEmpty().withMessage('Weapon name is required'),

    body('type')
        .notEmpty().withMessage('Type is required'),

    body('damage')
        .isInt({ min: 0 }).withMessage('Damage must be a non-negative number'),

    body('effect')
        .notEmpty().withMessage('Effect is required'),

    body('material_name')
        .notEmpty().withMessage('Material name is required'),

    body('total_needed')
        .isInt({ min: 1 }).withMessage('Total needed must be a positive number'),

    body('locations')
        .notEmpty().withMessage('Locations are required')
];

module.exports = { weaponValidationRules };
