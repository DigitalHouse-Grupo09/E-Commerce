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
const modelProducts = {
    /**
     * List all products
     *
     * @return array<Product>
     */
    getAll: function () {
        return products;
    },

    /**
     * Filter products by keywords
     *
     * @param keywords {string} Searched words
     *
     * @return array<Product>
     */
    filter: function (keywords) {
        // Add wildcards to keywords for optimize search
        const term = `*${keywords}*`;

        // Search matches in all available properties
        return this.getAll().filter(product => searcheableProperties.some(property => minimatch(String(product[property] || ''), term)));
    },

    /**
     * Get product by ID
     *
     * @param id {number} Searched product ID
     *
     * @return Product || null
     */
    getById: function (id) {
        return this.getAll().find(product => product.id === id);
    },

    /**
     * Create and store new product
     *
     * @param data               {object} Product properties
     * @param data[title]        {string} Product title
     * @param data[description]  {string} Product description
     * @param data[price]        {number} Product price
     * @param data[discount]     {number} Product discount. Default is 0
     * @param data[author]       {string} Product author
     * @param data[publishedAt]  {date}   Product date published at. Default is now
     * @param data[pages]        {number} Product pages
     * @param data[language]     {string} Product language
     * @param data[format]       {string} Product format
     * @param data[presentation] {string} Product presentation
     *
     * @return Product
     */
    create: function (data) {
        // List all products
        const products = this.getAll();
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
};

//
// export
//
module.exports = modelProducts;