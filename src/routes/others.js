//
// imports
//
const express = require('express');
const router = express.Router();
const controller = require('../controllers/others');

//
// mapping
//
router.get('/faq', controller.faq);
router.get('/help', controller.help);
router.get('/regretful', controller.regretful);
router.get('/contact', controller.contact);
router.get('/privacy', controller.privacy);
router.get('/test', controller.test);

//
// export
//
module.exports = router;
