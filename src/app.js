//
// imports
//
const ejs = require('ejs');
const path = require('path');
const morgan = require('morgan');
const express = require('express');
const bodyParser = require('body-parser');
const methodOverride = require('method-override');
const { categories } = require('./models');
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
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(methodOverride('_method'));

//
// template engine
//
// add template engine for parse HTML files in views folder.
app.set('view engine', 'ejs');
app.set('views', `${__dirname}/views`);
app.engine('ejs', ejs.renderFile);
// locals 
app.locals = { ...app.locals || {}, categories: categories.getAll() };

//
// routes
//
app.use('/', routes.main);
app.use('/', routes.users);
app.use('/cart', routes.cart);
app.use('/products', routes.products);
app.use('/admin', routes.admin);


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
