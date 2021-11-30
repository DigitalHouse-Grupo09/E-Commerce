//
// imports
//
const products = require('../data/products.json');

//
// endpoints
//
// cart
const cart = (req, res) => res.render('cart', { products });

//
// export
//
module.exports = { cart };
