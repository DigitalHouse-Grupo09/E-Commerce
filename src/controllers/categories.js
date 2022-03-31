//
// imports
//
const { Product, Category } = require('../database');

//
// endpoints
//
// products by category
const productByCategory = async (req, res, next) => {
    const slug = req.params.slug;
    const category = await Category.findOne({
        where: { slug }
    });

    if (!category) {
        // Strategy used for response with 404
        return next();
    }

    const options = {
        where: {
            id_category: category.id
        }
    };

    return res.render('categories/search', {
        products: (await Product.scope('fully').findAll(options)),
        category
    });
};

//
// export
//
module.exports = { productByCategory };
