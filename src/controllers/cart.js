//
// endpoints
//
// cart
const cart = (req, res) => res.render('cart');

const checkout = (req, res) => res.render('cart/checkout');

//
// export
//
module.exports = { cart, checkout };
