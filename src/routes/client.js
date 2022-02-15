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
router.post('/login', controller.loginPost);
router.get('/register', controller.register);
router.post('/register', controller.registerPost);

//
// export
//
module.exports = router;