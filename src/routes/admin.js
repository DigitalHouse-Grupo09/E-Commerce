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
router.get('/products/create', controller.create);
router.post('/products/create', controller.createPost);
router.get('/products/update/:id', controller.update);
router.put('/products/update/:id', controller.updatePut);
router.delete('/products/destroy/:id', controller.destroy);

//
// export
//
module.exports = router;