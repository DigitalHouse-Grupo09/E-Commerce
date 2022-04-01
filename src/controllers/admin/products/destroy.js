//
// imports
//
const { Product } = require('../../../database');

//
// endpoints
//

//
// product deletion
//
const destroy = async (req, res) => {
    // Normalize body
    const { id } = req.params;

    // Try to get model
    try {
        const product = await Product.findOne({
            where: { id }
        });

        if (!product) {
            console.error('Error on destroy model', e);
            return res.status(404).render('admin/products/details', {
                errors: [{
                    param: 'general',
                    msg: 'El producto que intentar borrar no existe.'
                }],
                product
            });
        }

        // Try to destroy model
        product.destroy();

        // Redirect to home
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on destroy model', e);
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
module.exports = { destroy };
