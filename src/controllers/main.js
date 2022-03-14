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
const regretful = (req, res) => res.render('home/regretful');
const contact = (req, res) => res.render('home/contact');
const privacy = (req, res) => res.render('home/privacy');



//
// export
//
module.exports = { home, help, regretful, contact, privacy };
