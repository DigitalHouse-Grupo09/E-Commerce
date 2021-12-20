//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/users');

//
// mapping
//
router.get('/login', controller.login);
router.post('/login', controller.loginPost);
router.get('/register', controller.register);
router.post('/register', controller.registerPost);

//
// export
//
module.exports = router;
