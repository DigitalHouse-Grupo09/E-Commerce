//
// imports
//
const products = require('../data/products.json');

//
// endpoints
//
// home
const home = (req, res) => res.render('home', { products });

//
// export
//
module.exports = { home };
