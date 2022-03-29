//
// imports
//
const crypto = require('../../helpers/crypto');
const { User } = require('../../database');
const { ROLE_ADMIN } = require('../../constants/users');

//
// endpoints
//

//
// login
//
const login = (req, res) => res.render('admin/login');

const loginPost = async (req, res) => {
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

        console.log(user)

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
