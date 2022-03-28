//
// imports
//
const { products } = require('../../models');

//
// endpoints
//
const { login, loginPost, logout } = require('./auth');
const { create, createPost, update, updatePut, destroy } = require('./products');


// admin home (main)
const main = (req, res) => res.render('admin/products', {
    products: products.getAll()
});

//
// export
//
module.exports = { main, login, loginPost, logout, create, createPost, update, updatePut, destroy };
