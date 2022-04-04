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
const update = async (req, res, next) => responseUpdateForm(req.params.id, res, next);

//
// post creation
//
const updatePut = async (req, res, next) => {
    // Retrieve model id
    const id = req.params.id;
    // Normalize body
    const data = req.body;
    // Normalize file
    const image = req.file;

    try {
        await sequelize.transaction(async (transaction) => {
            const current = await Product.scope('fully').findOne({ where: { id } }, { transaction });
            let actions = await prepareAttributes(current, data);
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
            current.set({
                id_category: category.id,
                slug: `${slug}-id-${current.id}`
            });
            await current.save({ transaction });

            // Try to insert/update/destroy product model
            for (let action in actions) {
                const attributes = actions[action];

                if (!attributes || !attributes.length) {
                    continue;
                } 

                for (let attribute of attributes) {
                    switch (action) {
                        // Try to insert attribute models
                        case 'add':
                            await ProductAttribute.create({ id_product: id, ...attribute }, { transaction });
                            break;

                        // Try to update attribute models
                        case 'update':
                            await ProductAttribute.update({ value: attribute.value }, {
                                transaction,
                                where: {
                                    id_product: id,
                                    id_attribute: attribute.id_attribute
                                }
                            });
                            break;

                        // Try to destroy attribute models
                        case 'destroy':
                            await ProductAttribute.destroy({
                                transaction,
                                force: true,
                                where: {
                                    id_product: id,
                                    id_attribute: attribute.id_attribute
                                }
                            });
                            break;
                    }
                }
            }

            if (current.authors[0].id !== Number(author.id)) {
                // Try to update author relationship model
                await ProductAuthor.update({ id_author: author.id }, {
                    transaction,
                    where: {
                        id_product: id
                    }
                });
            }

            if (image) {
                // Try to update image relationship model
                await Image.update({ src: `/assets/img/books/${image.filename}`, priority: 1 }, {
                    transaction,
                    where: {
                        id_product: id
                    }
                });
            }

            // Try to update price relationship model
            await Price.update({
                amount: data.price,
                currency: data.currency || 'AR$',
                discount_amount: data.discount || 0,
                discount_currency: data.discount_currency || 'AR$'
            }, {
                transaction,
                where: {
                    id_product: id
                }
            });
        });

        // Redirect to models
        res.redirect('/admin');

    // Handle errors
    } catch(e) {
        console.error('Error on update model', e);
        return responseUpdateForm(id, res, next, 400, {
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
const responseUpdateForm = async (id, res, next, status = 200, data = {}) => {
    const product = await Product.scope('fully').findOne({ where: { id } });

    if (!product) {
        return next();
    }

    // Prepare attributes
    product.attributes.forEach(attribute => (product[attribute.attribute.description] = attribute.value));

    // Prepare images
    product.image = (product.images && product.images.length && product.images[0]) || {};

    // Prepare author
    product.author = product.authors[0];

    return res.status(status).render('admin/products/update', {
        categories: (await Category.findAll()),
        authors: (await Author.findAll()),
        product,
        ...data
    });
};

const prepareAttributes = async (product, data = {}) => {
    const attributes = await Attribute.findAll();
    const actions = {
        add: [],
        update: [],
        destroy: []
    };

    Object.keys(data).forEach(key => {
        const attribute = attributes.find(a => a.description === key);

        if (!attribute) {
            return;
        }

        // Check if is necesary destroy attribute
        if (!data[key]) {
            actions.destroy.push({
                id_attribute: attribute.id
            });
        }
        else {
            const current = product.attributes.find(a => a.attribute.description === key);

            // Check if is necesary add attribute
            if (!current) {
                actions.add.push({
                    id_attribute: attribute.id,
                    value: data[key]
                });
            }
            // Check if is necesary update attribute
            else if (current.value !== data[key]) {
                actions.update.push({
                    id_attribute: attribute.id,
                    value: data[key]
                });
            }
        }
    });

    return actions;
};

const prepareSlug = (title = '') => title.split(' ').reduce((acc, val) => acc.concat(val.toLowerCase()), []).join('_');

//
// export
//
module.exports = { update, updatePut };
