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

const validateAdminProduct = [
    check('title')
        .notEmpty().withMessage('Debes completar el titulo'),
    check('description')
        .notEmpty().withMessage('Debes completar la descripción'),
    check('price')
        .notEmpty().withMessage('Debes completar el precio')
        .bail()
        .isLength({ min: 1 }).withMessage('Debes completar el precio')
        .bail()
        .custom(v => !isNaN(Number(v))).withMessage('El precio debe ser un valor númerico'),
    check('discount')
        .notEmpty().withMessage('Debes completar el descuento')
        .bail()
        .isLength({ min: 1 }).withMessage('Debes completar el descuento')
        .bail()
        .custom(v => !isNaN(Number(v)) && Number(v) > -1 && Number(v) < 101).withMessage('El descuento debe ser un valor númerico entre 0 y 100'),
    check('category')
        .notEmpty().withMessage('Debes completar la categoría'),
    check('author')
        .notEmpty().withMessage('Debes completar el autor')
];

module.exports = { validateRegister, validateLogin, validateAdminProduct };