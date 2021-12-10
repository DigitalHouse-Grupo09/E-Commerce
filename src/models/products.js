//
// imports
//
const fs = require('fs');
const path = require('path');
const minimatch = require('minimatch');
const products = require('../data/products.json');

//
// constants
//
const productsFilePath = path.resolve(__dirname, '../data/products.json');
const searcheableProperties = [
    'title',
    'description',
    'price',
    'author',
    'pages',
    'language',
    'format',
    'presentation'
];

//
// class
//
class Products {
    getAll () {
        return products;
    }

    filter (keywords) {
        // Add wildcards to keywords for optimize search
        const term = `*${keywords}*`;

        // Search matches in all available properties
        return products.filter(product => searcheableProperties.some(property => minimatch(String(product[property] || ''), term)));
    }

    getById (id) {
        return products.find(product => product.id === id);
    }

    create (data) {
        // Generate next product ID
        const nextId = (Math.max.apply(Math, products.map(product => product.id)) || 0) + 1;
        // Destructuring of the request body, to avoid junk properties
        const { title, description, price, discount = 0, author, publishedAt, pages, language, format, presentation } = data;
        // Create new product
        const product = {
            id: nextId,
            pages: Number(pages),
            price: Number(price),
            discount: Number(discount),
            title,
            description,
            image,
            author,
            publishedAt,
            language,
            format,
            presentation
        };

        // Save product on products array
        products.push(product);

        // Save products on file
        fs.writeFileSync(productsFilePath, JSON.stringify(products, null, 1), 'utf-8');
    }
}

//
// export
//
module.exports = new Products();
