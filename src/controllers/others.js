//
// endpoints
//
const help = (req, res) => res.render('others/help');
const regretful = (req, res) => res.render('others/regretful');
const contact = (req, res) => res.render('others/contact');
const privacy = (req, res) => res.render('others/privacy');
const test = (req, res) => res.render('others/test');

//
// export
//
module.exports = { help, regretful, contact, privacy, test };
