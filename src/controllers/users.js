//
// endpoints
//
// login
const login = (req, res) => res.render('login');
const loginPost = (req, res) => {
    console.log('Sended form for login:', req.body);
    res.redirect(302, '/');
};

// register
const register = (req, res) => res.render('register');
const registerPost = (req, res) => {
    console.log('Sended form for register:', req.body);
    res.redirect(302, '/');
};

//
// export
//
module.exports = { login, loginPost, register, registerPost };
