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
router.get('/help', controller.help);
router.get('/regretful', controller.regretful);



//
// export
//
module.exports = router;
