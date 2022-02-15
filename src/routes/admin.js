//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/admin');
const middlewares = require('../middlewares');
const upload = require('../helpers/image');

//
// mapping
//
// public routes
router.get('/login', controller.login);
router.post('/login', controller.loginPost);
// router.get('/register', controller.register);
// router.post('/register', controller.registerPost);

// private routes
router.get('/', middlewares.session.adminMiddleware, controller.main);
router.all('/logout', middlewares.session.adminMiddleware, controller.logout);
router.get('/products/create', middlewares.session.adminMiddleware, controller.create);
router.post('/products/create', middlewares.session.adminMiddleware, upload.single('image'), controller.createPost);
router.get('/products/update/:id', middlewares.session.adminMiddleware, controller.update);
router.put('/products/update/:id', middlewares.session.adminMiddleware, controller.updatePut);
router.delete('/products/destroy/:id', middlewares.session.adminMiddleware, controller.destroy);

//
// export
//
module.exports = router;