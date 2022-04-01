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
    const id = parts[parts.length - 1];
    const product = await Product.scope('fully').findOne({
        where: {
            id: Number(id)
        }
    });
console.log(JSON.stringify(product,null,2));
    if (!product) {
        // Strategy used for response with 404
        return next();
    }
    return res.render('products/details', { product });
};

//
// export
//
module.exports = { productById };
