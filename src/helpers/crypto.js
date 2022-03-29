//
// imports
//
const shajs = require('sha.js');

//
// exports
//
module.exports = password => shajs('sha256').update(password).digest('hex');
