//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/categories');

//
// mapping
//
router.get('/:slug', controller.productByCategory);

//
// export
//
module.exports = router;
