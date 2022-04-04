//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/client');
const middlewares = require('../middlewares');
const upload = require('../helpers/avatar');

//
// mapping
//
// public routes
router.get('/login', controller.login);
router.post('/login', middlewares.validation.validateLogin, controller.loginPost);
router.get('/register', controller.register);
router.post('/register', middlewares.validation.validateRegister, controller.registerPost);
router.get('/account', middlewares.session.clientMiddleware, controller.account);
router.put('/account', middlewares.session.clientMiddleware, upload.single('image'), controller.accountPut);

//
// export
//
module.exports = router;