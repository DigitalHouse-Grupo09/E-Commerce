//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/cart');

//
// mapping
//
router.get('/', controller.cart);

//
// export
//
module.exports = router;
