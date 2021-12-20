//
// imports
//
const { products } = require('../models');

//
// endpoints
//
// cart
const cart = (req, res) => res.render('cart', { products: products.getAll() });

//
// export
//
module.exports = { cart };
