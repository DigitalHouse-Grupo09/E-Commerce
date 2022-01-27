//
// middleware
//
const middleware = (req, res, next) => {
    if (!req.session || !req.session.user) {
        return res.redirect('/admin/login');
    }
    // Set session on all views
    res.locals = res.locals || {};
    res.locals.session = req.session.user;
    return next();
};

//
// export
//
module.exports = middleware;
