//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/client');
const middlewares = require('../middlewares');
const upload = require('../helpers/image');

//
// mapping
//
// public routes
router.get('/login', controller.login);
router.post('/login', middlewares.validation.validateLogin, controller.loginPost);
router.get('/register', controller.register);
router.post('/register', middlewares.validation.validateRegister, controller.registerPost);

//
// export
//
module.exports = router;