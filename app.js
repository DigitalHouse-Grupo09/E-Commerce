//
// imports
//
const ejs = require('ejs');
const path = require('path');
const morgan = require('morgan');
const express = require('express');
const bodyParser = require('body-parser');
const favicon = require('serve-favicon');
const products = require('./data/products.json');
const categories = require('./data/categories.json');
const app = express();

//
// constants
//
const port = process.env.PORT || 3000;
const baseViewsPath = path.join(__dirname, 'views');

//
// middlewares
//
app.use(express.static('public'));
app.use(favicon(`${__dirname}/public/favicon.ico`));
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

//
// template engine
//
// add template engine for parse HTML files in views folder.
app.set('view engine', 'html');
app.set('views', `${__dirname}/views`);
app.engine('html', ejs.renderFile);
// locals 
app.locals = { ...app.locals || {}, categories };

//
// routes
//

// home
app.get('/', (req, res) => res.render('home', { products }));

// products
app.get('/products/:id', (req, res, next) => {
    const product = products.find(product => product.id === Number(req.params.id));

    if (!product) {
        return next();
    }
    return res.render('products/details', { product });
});

// cart
app.get('/cart', (req, res) => res.render('cart', { products }));

// register
app.get('/register', (req, res) => res.render('register'));
app.post('/register', (req, res) => {
    console.log('Sended form for register:', req.body);
    res.redirect(302, '/');
});

// login
app.get('/login', (req, res) => res.render('login'));
app.post('/login', (req, res) => {
    console.log('Sended form for login:', req.body);
    res.redirect(302, '/');
});

// error pages

// 404
app.use((req, res, next) => res.status(404).render('404'));

// uncached errors
app.use((error, req, res, next) => res.status(500).render('500', { error }));

//
// listen application
//
app.listen(port, () => console.log(`Servidor iniciado - http://localhost:${port}`));
