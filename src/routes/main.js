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
router.post('/', controller.search);
router.get('/help', controller.help);
router.get('/regretful', controller.regretful);
router.get('/contact', controller.contact);
router.get('/privacy', controller.privacy);



//
// export
//
module.exports = router;
