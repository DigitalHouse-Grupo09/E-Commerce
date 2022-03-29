//
// imports
//
const multer = require('multer');
const { products } = require('../../models');

//
// endpoints
//

//
// product creation
//
const create = (req, res) => res.render('admin/products/create');

//
// post creation
//
const createPost = (req, res) => {
    // Normalize body
    const { title, description, price, discount, author, publishedAt, pages, language, format, presentation } = req.body;
    // Normalize body

    try {
        // Try to insert model
        Products.create({
            title,
            description,
            image: req.files,
            price,
            discount,
            author,
            publishedAt,
            pages,
            language,
            format,
            presentation
        });
        // Redirect to models
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on create model', e);
        return res.status(400).render('admin/products/create', {
            errors: [{
                param: 'general',
                msg: e.message
            }],
            old: req.body
        });
    }
};

//
// product updation
//
const update = (req, res, next) => {
    const product = products.getById(Number(req.params.id));

    if (!product) {
        return next();
    }

    res.render('admin/products/update', {
        product
    });
};

const updatePut = (req, res) => {
    // Normalize body
    const { id } = req.params;
    const { title, description, image, price, discount, author, publishedAt, pages, language, format, presentation } = req.body;
    const data = { id, title, description, image, price, discount, author, publishedAt, pages, language, format, presentation };

    // Try to get model
    const product = products.getById(Number(id));

    try {
        // Try to update model
        products.update(product.id, data);
        // Redirect to home
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on update model', e);
        return res.status(400).render('admin/products/update', {
            errors: [{
                param: 'general',
                msg: e.message
            }],
            product: data
        });
    }
};

//
// product deletion
//
const destroy = (req, res) => {
    // Normalize body
    const { id } = req.params;

    // Try to get model
    const product = products.getById(Number(id));

    try {
        // Try to destroy model
        products.destroy(product.id);
        // Redirect to home
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on update model', e);
        return res.status(400).render('admin/products/details', {
            errors: [{
                param: 'general',
                msg: e.message
            }],
            product
        });
    }
};

//
// export
//
module.exports = { create, createPost, update, updatePut, destroy };
