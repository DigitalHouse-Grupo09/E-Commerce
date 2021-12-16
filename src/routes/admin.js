//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/admin');

//
// mapping
//
router.get('/', controller.main);
router.get('/create', controller.create);
router.get('/update', controller.update);
router.get('/delete', controller.delete);

//
// export
//
module.exports = router;