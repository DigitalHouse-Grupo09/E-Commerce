//
// endpoints
//
// cart
const cart = (req, res) => res.render('cart');

const checkout = (req, res) => res.render('cart/checkout');

const checkoutConfirm = (req, res) => res.redirect('/');

//
// export
//
module.exports = { cart, checkout, checkoutConfirm };
