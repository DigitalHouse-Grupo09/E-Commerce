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
router.get('/checkout', controller.checkout);
router.post('/checkout', controller.checkoutConfirm)

//
// export
//
module.exports = router;
