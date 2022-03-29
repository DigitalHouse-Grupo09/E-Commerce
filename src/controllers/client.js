//
// imports
//
const { users } = require('../models');
const { validationResult } = require('express-validator');

//
// login
//
const login = (req, res) => res.render('client/login');

const loginPost = (req, res) => {
    //Validation
    const errors = validationResult(req);

    if(errors.isEmpty()) {

        // Normalize body
        const { email, password } = req.body;

        // Try to get model
        const user = users.getAll().find(user => user.email === email && user.type === "client");

        // Check if user email exist
        if (!user || user.password !== password) {
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
            name: user.name
        };

        // Redirect to home
        req.session.save(() => res.redirect('/'));

    } else {

        res.render('client/login', { errors: errors.mapped(), old: req.body })

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
    //Validation
    const errors = validationResult(req);

    if(errors.isEmpty()) {

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

    } else {

        res.render('client/register', { errors: errors.mapped(), old: req.body })

    }
};

//
// exports
//
module.exports = { login, loginPost, logout, register, registerPost }

