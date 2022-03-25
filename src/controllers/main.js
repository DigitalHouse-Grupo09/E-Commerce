//
// imports
//
const { products } = require('../models');

//
// endpoints
//
// home
const home = (req, res) => res.render('home', { products: products.getAll().sort(() => .5 - Math.random()) });


// search books
const search = (req, res) => {

	const searchElement = req.body.search.toLowerCase();

	const searchProducts = []

	products.getAll().map(product => {
		if(product.title.toLowerCase().includes(searchElement)) {
			return searchProducts.push(product)
		}
	})

	if(searchProducts.length > 0) {
		res.render('home/results', { products: searchProducts })
	} else {
		res.render('404')
	}
}

const help = (req, res) => res.render('home/help');
const regretful = (req, res) => res.render('home/regretful');
const contact = (req, res) => res.render('home/contact');
const privacy = (req, res) => res.render('home/privacy');




//
// export
//
module.exports = { home, search, help, regretful, contact, privacy };
