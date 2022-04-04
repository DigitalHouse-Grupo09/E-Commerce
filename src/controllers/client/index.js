//
// endpoints
//
const { login, loginPost, logout, register, registerPost } = require('./auth');
const { account, accountPut } = require('./account');

//
// export
//
module.exports = { login, loginPost, logout, register, registerPost, account, accountPut };
