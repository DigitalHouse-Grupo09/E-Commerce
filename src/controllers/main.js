//
// imports
//
const products = require('../data/products.json').sort(() => .5 - Math.random());

//
// endpoints
//
// home
const home = (req, res) => res.render('home', { products });

//
// export
//
module.exports = { home };
