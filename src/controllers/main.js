//
// imports
//
const { Sequelize, Product, ProductAttribute } = require('../database');

//
// constants
//
const regexpSpaces = /\\s+/g;

//
// endpoints
//
// home
const home = async (req, res) => {
    const search = (req.query.search || '').trim();
    let view = 'home';
    let products;
    let ids;

    // Handle search by input search bar on header
    if (search) {
        // Change render view
        view = 'home/search';

        // Initialize product on empty state
        products = [];

        // 1. Find id product; filtered by attributes value.
        ids = await ProductAttribute.findAll({
            attributes: ['id_product'],
            where: {
                value: {
                    [Sequelize.Op.like]: `%${search.toLowerCase().replace(regexpSpaces, '%')}%`
                }
            }
        });

        // Check if need find products
        if (ids && ids.length) {
            // 2. Find products; filtered by IDs.
            products = await Product.scope('fully').findAll({
                where: {
                    id: ids.map(id => id.id_product)
                }
            });
        }

    }
    // Handle normal home page
    else {
        products = await Product.scope('rand').findAll({
            limit: 5
        });
    }

    return res.render(view, { products, search })
};

const help = (req, res) => res.render('home/help');
const regretful = (req, res) => res.render('home/regretful');
const contact = (req, res) => res.render('home/contact');
const privacy = (req, res) => res.render('home/privacy');
const test = (req, res) => res.render('home/test');

//
// export
//
module.exports = { home, help, regretful, contact, privacy, test };
