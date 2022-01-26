//
// imports
//
const { products, users } = require('../models');

//
// endpoints
//
// admin home (main)
const main = (req, res) => res.render('admin/products', {
    products: products.getAll()
});

//
// login
//
const login = (req, res) => res.render('admin/login');

const loginPost = (req, res) => {
    // Normalize body
    const { email, password } = req.body;

    // Try to get model
    const user = users.getAll().find(user => user.email === email);

    // Check if user email exist
    if (!user || user.password !== password) {
        return res.status(400).render('admin/login', {
            errors: [{
                param: 'general',
                msg: 'Por favor verifique los datos ingresados. El correo electrónico o la contraseña no coinciden.'
            }]
        });
    }

    // Save session
    req.session.user = {
        idUser: user.id,
        email: user.email,
        name: user.name
    };

    // Redirect to home
    req.session.save(() => res.redirect('/admin'));
};

//
// logout
//
const logout = (req, res) => {
    req.session.destroy(() => res.redirect('/'));
};

//
// register
//
// const register = (req, res) => res.render('admin/register');

// const registerPost = (req, res) => {
//     console.log('Sended form for register:', req.body);
//     res.redirect(302, '/admin');
// };

//
// product creation
//
const create = (req, res) => res.render('admin/products/create');

const createPost = (req, res) => {
    // Normalize body
    const { title, description, image, price, discount, author, publishedAt, pages, language, format, presentation } = req.body;
    const data = { title, description, image, price, discount, author, publishedAt, pages, language, format, presentation };

    try {
        // Try to insert movie
        products.create(data);
        // Redirect to movies
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
module.exports = { main, login, loginPost, logout, create, createPost, update, updatePut, destroy };
