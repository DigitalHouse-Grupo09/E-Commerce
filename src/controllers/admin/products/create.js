//
// imports
//
const { sequelize, Category, Author, Product, Price, Image, Attribute, ProductAttribute, ProductImage, ProductAuthor } = require('../../../database');

//
// endpoints
//

//
// product creation
//
const create = async (req, res) => responseCreateForm(res);

//
// post creation
//
const createPost = async (req, res) => {
    // Normalize body
    const data = req.body;
    // Normalize file
    const image = req.file;

    try {
        await sequelize.transaction(async (transaction) => {
            let attributes = await prepareAttributes(data);
            let slug = prepareSlug(data.title);
            let author = {
                id: data.author
            };
            let category = {
                id: data.category
            };

            // Check if is necesary create new author model
            if (data.author_name) {
                author = await Author.create({ full_name: data.author_name }, { transaction });
            }

            // Check if is necesary create new category model
            if (data.category_name) {
                category = await Category.create({ full_name: data.category_name, slug: prepareSlug(data.category_name) }, { transaction });
            }

            // Try to insert product model
            const product = await Product.create({ id_category: category.id, slug }, { transaction });

            // Update product model with correct slug
            product.set({ slug: `${slug}-id-${product.id}` });
            await product.save({ transaction });

            for (let attribute of attributes) {
                // Try to insert attribute models
                await ProductAttribute.create({ id_product: product.id, ...attribute }, { transaction });
            }

            // Try to insert author relationship model
            await ProductAuthor.create({ id_product: product.id, id_author: author.id }, { transaction });

            // Try to insert image model
            await Image.create({ id_product: product.id, src: `/assets/img/books/${image.filename}`, priority: 1 }, { transaction });

            // Try to insert price model
            await Price.create({
                id_product: product.id,
                amount: data.price,
                currency: data.currency || 'AR$',
                discount_amount: data.discount || 0,
                discount_currency: data.discount_currency || 'AR$'
            }, { transaction });
        });

        // Redirect to models
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on create model', e);
        return responseCreateForm(res, 400, {
            errors: [{
                param: 'general',
                msg: e.message
            }],
            old: req.body
        });
    }
};

//
// helpers
//
const responseCreateForm = async (res, status = 200, data = {}) => {
    return res.status(status).render('admin/products/create', {
        categories: (await Category.findAll()),
        authors: (await Author.findAll()),
        ...data
    });
};

const prepareAttributes = async (data = {}) => {
    const attributes = await Attribute.findAll();

    return Object.keys(data).map(key => {
        const attribute = attributes.find(attribute => attribute.description === key);

        if (!attribute || !data[key]) {
            return null;
        }

        return {
            id_attribute: attribute.id,
            value: data[key]
        };
    })
        // Exclude null attributes
        .filter(attribute => attribute);
};

const prepareSlug = (title = '') => title.split(' ').reduce((acc, val) => acc.concat(val.toLowerCase()), []).join('_');

//
// export
//
module.exports = { create, createPost };
