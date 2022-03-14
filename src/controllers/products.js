//
// imports
//
const { products } = require('../models');

//
// endpoints
//
// products by id
const productById = (req, res, next) => {
    const product = products.getById(Number(req.params.id));

    if (!product) {
        // Strategy used for response with 404
        return next();
    }
    return res.render('products/details', { product });
};

const results = (req, res, next) => {
    
}

//
// export
//
module.exports = { productById };
