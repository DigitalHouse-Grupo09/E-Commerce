//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/cart');
const middlewares = require('../middlewares');
const upload = require('../helpers/image');

//
// mapping
//
router.get('/', controller.cart);
router.post('/', middlewares.session.clientMiddleware, controller.pay)

//
// export
//
module.exports = router;
