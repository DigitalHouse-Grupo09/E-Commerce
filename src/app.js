//
// dependencies
//
require('dotenv').config();

//
// imports
//
const ejs = require('ejs');
const path = require('path');
const morgan = require('morgan');
const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const methodOverride = require('method-override');
const middlewares = require('./middlewares');
const { Category } = require('./database');
const locals = require('./helpers/locals');
const routes = require('./routes');
const app = express();

//
// constants
//
const port = process.env.PORT || 3000;

//
// middlewares
//
app.use(express.static('public'));
app.use(morgan('dev'));
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(methodOverride('_method'));
app.use(session({
    secret: process.env.SESSION_SECRET || 'bookify-1234abcd',
    saveUninitialized: false,
    resave: true
}));
app.use(middlewares.session.sessionMiddleware);

//
// template engine
//
// add template engine for parse HTML files in views folder.
app.set('view engine', 'ejs');
app.set('views', `${__dirname}/views`);
app.engine('ejs', ejs.renderFile);

// For configure locals, we need run async auto-executable process
(async () => {
    // locals
    app.locals = {
        ...app.locals || {},
        ...locals,
        categories: (await Category.findAll())
    };

    //
    // routes
    //
    app.use('/', routes.main);
    app.use('/', routes.others);
    app.use('/cart', routes.cart);
    app.use('/admin', routes.admin);
    app.use('/client', routes.client);
    app.use('/categories', routes.categories);
    app.use('/', routes.products);

    //
    // error pages
    //
    // 404
    app.use((req, res, next) => res.status(404).render('404'));
    // uncached errors
    app.use((error, req, res, next) => res.status(500).render('500', { error }));

    //
    // listen application
    //
    app.listen(port, () => console.log(`Servidor iniciado - http://localhost:${port}`));
})();
