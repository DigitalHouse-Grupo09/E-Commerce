//
// imports
//
const { users } = require('../models');

//
// login
//
const login = (req, res) => res.render('client/login');

const loginPost = (req, res) => {
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

