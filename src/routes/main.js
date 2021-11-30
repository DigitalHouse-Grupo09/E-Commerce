//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/main');

//
// mapping
//
router.get('/', controller.home);

//
// export
//
module.exports = router;
