//
// imports
//
const express = require('express');
const bodyParser = require('body-parser');
const favicon = require('serve-favicon');
const path = require('path');
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
app.use(favicon(`${__dirname}/public/logo.ico`));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

//
// routes
//

// home
app.get('/', (req, res) => res.sendFile(path.join(baseViewsPath, 'home.html')));

// register
app.get('/register', (req, res) => res.sendFile(path.join(baseViewsPath, 'register.html')));
app.post('/register', (req, res) => {
    console.log('Sended form for register:', req.body);
    res.redirect(302, '/');
});

// login
app.get('/login', (req, res) => res.sendFile(path.join(baseViewsPath, 'login.html')));
app.post('/login', (req, res) => {
    console.log('Sended form for login:', req.body);
    res.redirect(302, '/');
});

// error pages

// 404
app.use((req, res, next) => res.status(404).sendFile(path.join(baseViewsPath, '404.html')));

// uncached errors
app.use((error, req, res, next) => res.status(500).sendFile(path.join(baseViewsPath, '500.html')));

//
// listen application
//
app.listen(port, () => console.log(`Servidor iniciado - http://localhost:${port}`));
