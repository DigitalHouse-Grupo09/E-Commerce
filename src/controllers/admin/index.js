//
// imports
//
const { Product } = require('../../database');

//
// endpoints
//
const { login, loginPost, logout } = require('./auth');
const { create, createPost, update, updatePut, destroy } = require('./products');


// admin home (main)
const main = async (req, res) => res.render('admin/products', {
    products: (await Product.scope('fully').findAll())
});

//
// export
//
module.exports = { main, login, loginPost, logout, create, createPost, update, updatePut, destroy };
