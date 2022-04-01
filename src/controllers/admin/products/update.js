//
// imports
//
const { products } = require('../../../models');

//
// endpoints
//

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
    const { title, description, image, price, discount, author, publishedAt, pages, language, editorial, presentation } = req.body;
    const data = { id, title, description, image, price, discount, author, publishedAt, pages, language, editorial, presentation };

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
// export
//
module.exports = { update, updatePut };
