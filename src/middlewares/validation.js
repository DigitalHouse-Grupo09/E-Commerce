const { check } = require('express-validator');

const validateRegister = [
	check('name')
		.notEmpty().withMessage('Debes completar el nombre')
		.bail()
		.isLength({ min: 2 }).withMessage('El nombre debe ser más largo'),
	check('email')
		.notEmpty().withMessage('Debes completar el email')
		.bail()
		.isEmail().withMessage('Debes completar un email valido'),
	check('password')
		.notEmpty().withMessage('Debes completar la contraseña')
		.bail()
		.isLength({ min: 4 }).withMessage('La contraseña debe ser más larga')
];

const validateLogin = [
	check('email')
		.notEmpty().withMessage('Debes completar el email')
		.bail()
		.isEmail().withMessage('Debes completar un email valido'),
	check('password')
		.notEmpty().withMessage('Debes completar la contraseña')
		.bail()
		.isLength({ min: 4 }).withMessage('La contraseña debe ser más larga')
];

module.exports = { validateRegister, validateLogin };