//
// imports
//
const crypto = require('../../helpers/crypto');
const { User } = require('../../database');
const { ROLE_ADMIN } = require('../../constants/users');
const { validationResult } = require('express-validator');

//
// endpoints
//

//
// login
//
const login = (req, res) => res.render('admin/login');

const loginPost = async (req, res) => {
    // Validation
    const errors = validationResult(req);

    if(errors.isEmpty()) {

        // Normalize body
        const { email, password } = req.body;

        // Prepare find options
        const options = {
            include: ['status', 'role'],
            where: {
                id_role: ROLE_ADMIN,
                password: crypto(password),
                email
            }
        };

        // Try to get model
        try {
            const user = await User.findOne(options);

            // Check if user email exist
            if (!user) {
                return res.status(400).render('admin/login', {
                    errors: [{
                        param: 'general',
                        msg: 'Por favor verifique los datos ingresados. El correo electrónico o la contraseña no coinciden.'
                    }]
                });
            }

            // Save session
            req.session.admin = {
                idUser: user.id,
                email: user.email,
                name: user.name,
                user: user
            };

            // Redirect to home
            req.session.save(() => res.redirect('/admin'));
        }
        catch (e) {
            return res.status(400).render('admin/login', {
                errors: [{
                    param: 'general',
                    msg: 'Por favor verifique los datos ingresados. El correo electrónico o la contraseña no coinciden.'
                }]
            });
        }

    } else {

        res.render('admin/login', { errors: errors.mapped(), old: req.body })

    }

    
};

//
// logout
//
const logout = (req, res) => {
    req.session.destroy(() => res.redirect('/'));
};

//
// export
//
module.exports = { login, loginPost, logout };
