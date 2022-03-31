//
// imports
//
const { products } = require('../models');

//
// endpoints
//
// cart
const cart = (req, res) => res.render('cart', { products: products.getAll() });

const pay = (req, res) => res.render('cart/pay')

//
// export
//
module.exports = { cart, pay };
