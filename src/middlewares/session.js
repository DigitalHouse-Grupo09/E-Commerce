//
// admin session
//
const adminMiddleware = (req, res, next) => {
    if (!req.session.admin) {
        return res.redirect('/admin/login');
    }
    // Set session on all views
    res.locals = res.locals || {};
    res.locals.session = req.session.user;
    return next();
};

//
// client session
//
const clientMiddleware = (req, res, next) => {
    if (!req.session.client) {
        return res.redirect('/client/login');
    }
    // Set session on all views
    res.locals = res.locals || {};
    res.locals.session = req.session;
    return next();
};

//
// export
//
module.exports = { adminMiddleware, clientMiddleware };
