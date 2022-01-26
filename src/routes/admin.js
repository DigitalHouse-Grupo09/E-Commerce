//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/admin');
const middlewares = require('../middlewares');

//
// mapping
//
// public routes
router.get('/login', controller.login);
router.post('/login', controller.loginPost);
// router.get('/register', controller.register);
// router.post('/register', controller.registerPost);

// private routes
router.get('/', middlewares.session, controller.main);
router.all('/logout', middlewares.session, controller.logout);
router.get('/products/create', middlewares.session, controller.create);
router.post('/products/create', middlewares.session, controller.createPost);
router.get('/products/update/:id', middlewares.session, controller.update);
router.put('/products/update/:id', middlewares.session, controller.updatePut);
router.delete('/products/destroy/:id', middlewares.session, controller.destroy);

//
// export
//
module.exports = router;