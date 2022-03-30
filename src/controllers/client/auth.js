//
// imports
//
const crypto = require('../../helpers/crypto');
const { User } = require('../../database');
const { ROLE_CLIENT } = require('../../constants/users');
const { validationResult } = require('express-validator');

//
// login
//
const login = (req, res) => res.render('client/login');

const loginPost = async (req, res) => {
    // Validation
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
        return res.status(400).render('admin/login', {
            errors: errors.mapped(),
            old: req.body
        });
    }

    // Normalize body
    const { email, password } = req.body;

    // Prepare find options
    const options = {
        include: ['status', 'role'],
        where: {
            id_role: ROLE_CLIENT,
            password: crypto(password),
            email
        }
    };

    // Try to get model
    try {
        const user = await User.findOne(options);

        // Check if user email exist
        if (!user) {
            return res.status(400).render('client/login', {
                errors: [{
                    param: 'general',
                    msg: 'Por favor verifique los datos ingresados. El correo electrónico o la contraseña no coinciden.'
                }]
            });
        }

        // Save session
        req.session.client = {
            idUser: user.id,
            email: user.email,
            name: user.name,
            user
        };

        // Redirect to home
        req.session.save(() => res.redirect('/'));
    }
    catch (e) {
        return res.status(400).render('client/login', {
            errors: [{
                param: 'general',
                msg: 'Por favor verifique los datos ingresados. El correo electrónico o la contraseña no coinciden.'
            }]
        });
    }
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
const register = (req, res) => res.render('client/register');

const registerPost = (req, res) => {
    const clients = users.getAll();

    const newClient = {
        id: users.getAll().length +1,
        email: req.body.email,
        password: req.body.password,
        name: req.body.name,
        type: "client"
    };

    clients.push(newClient);

    users.save(clients);

    res.render("client/login");
};

//
// exports
//
module.exports = { login, loginPost, logout, register, registerPost }