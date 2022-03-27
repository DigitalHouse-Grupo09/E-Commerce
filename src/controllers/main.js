//
// imports
//
const { products } = require('../models');

//
// constants
//
const regexpSpaces = /\\s+/g;

//
// endpoints
//
// home
const home = (req, res) => res.render('home', { products: products.getAll().sort(() => .5 - Math.random()) });

// search
const search = (req, res) => {
	const search = (req.body.search || '').trim().toLowerCase().replace(regexpSpaces, '*');
	const filtered = products.filter(search);

	res.render('home/search', {
		products: filtered,
		search
	});
}

const help = (req, res) => res.render('home/help');
const regretful = (req, res) => res.render('home/regretful');
const contact = (req, res) => res.render('home/contact');
const privacy = (req, res) => res.render('home/privacy');
const test = (req, res) => res.render('home/test');

//
// export
//
module.exports = { home, search, help, regretful, contact, privacy, test };
