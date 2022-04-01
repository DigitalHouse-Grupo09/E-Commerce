//
// imports
//
const { Product } = require('../database');

//
// endpoints
//
// products by id
const productById = async (req, res, next) => {
    const slug = req.params.slug;
    const parts = slug.split('-id-');
    const id = Number(parts[parts.length - 1]);
    const product = await Product.scope('fully').findOne({
        where: { id }
    });

    if (!product) {
        // Strategy used for response with 404
        return next();
    }

    // Strategy used for response with 404
    if (product.slug !== slug) {
        return res.redirect(product.slug);
    }
    return res.render('products/details', { product });
};

//
// export
//
module.exports = { productById };
