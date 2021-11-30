//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/products');

//
// mapping
//
router.get('/:id', controller.productById);

//
// export
//
module.exports = router;
