//
// admin session
//
const sessionMiddleware = (req, res, next) => {
    if (req.session) {
        // Set session on all views
        res.locals = res.locals || {};
        res.locals.session = res.locals.session || {};
        res.locals.session.user = req.session.admin || req.session.client;
        res.locals.session.isLogged = !!res.locals.session.user;
    }
    return next();
};

//
// admin session
//
const adminMiddleware = (req, res, next) => {
    if (!req.session || !req.session.admin) {
        return res.redirect('/admin/login');
    }
    return next();
};

//
// client session
//
const clientMiddleware = (req, res, next) => {
    if (!req.session || !req.session.client) {
        return res.redirect('/client/login');
    }
    return next();
};

//
// export
//
module.exports = { sessionMiddleware, adminMiddleware, clientMiddleware };
