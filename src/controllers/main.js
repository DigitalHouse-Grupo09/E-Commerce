//
// imports
//
const { products } = require('../models');

//
// endpoints
//
// home
const home = (req, res) => res.render('home', { products: products.getAll().sort(() => .5 - Math.random()) });
const help = (req, res) => res.render('home/help');

//
// export
//
module.exports = { home, help };
