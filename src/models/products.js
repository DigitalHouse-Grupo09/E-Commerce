//
// imports
//
const fs = require('fs');
const path = require('path');
const minimatch = require('minimatch');
let products = require('../data/products.json');

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
    'editorial',
    'presentation'
];

//
// helpers
//
const save = models => {
    // Save products on file
    fs.writeFileSync(productsFilePath, JSON.stringify(models, null, 1), 'utf-8');

    // Restore with new products
    products = models;
};

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
     * @param data[editorial]       {string} Product editorial
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
        const { title, description, image, price, discount = 0, author, publishedAt, pages, language, editorial, presentation } = data;
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
            editorial,
            presentation
        };

        // Save product on products array
        products.push(product);

        // Save products
        save(products);

        return product;
    },

    /**
     * Update and store exists product
     *
     * @param id                 {number} Unique Product identifier (ID)
     * @param data               {object} Product properties
     * @param data[title]        {string} Product title
     * @param data[description]  {string} Product description
     * @param data[price]        {number} Product price
     * @param data[discount]     {number} Product discount. Default is 0
     * @param data[author]       {string} Product author
     * @param data[publishedAt]  {date}   Product date published at. Default is now
     * @param data[pages]        {number} Product pages
     * @param data[language]     {string} Product language
     * @param data[editorial]       {string} Product editorial
     * @param data[presentation] {string} Product presentation
     *
     * @return Product
     */
    update: function (id, data) {
        // List all products
        const products = this.getAll();
        // List all products
        const product = products.find(product => product.id === id);
        // Destructuring of the request body, to avoid junk properties
        const { title, description, image, price, discount = 0, author, publishedAt, pages, language, editorial, presentation } = data;
        // Update current product
        product.pages = Number(pages);
        product.price = Number(price);
        product.discount = Number(discount);
        product.title = title;
        product.description = description;
        product.image = image;
        product.author = author;
        product.publishedAt = publishedAt;
        product.language = language;
        product.editorial = editorial;
        product.presentation = presentation;

        // Save products
        save(products);

        return product;
    },

    /**
     * Delete exists product
     *
     * @param id {number} Unique Product identifier (ID)
     *
     * @return Product
     */
    destroy: function (id) {
        // List all products
        let products = this.getAll();
        // List all products
        const product = products.find(product => product.id === id);
        // List products filtered by id
        products = products.filter(product => product.id !== id);

        // Save products
        save(products);

        return product;
    }
};

//
// export
//
module.exports = () => modelProducts;
