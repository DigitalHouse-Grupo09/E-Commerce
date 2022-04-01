//
// endpoints
//
const create = require('./create');
const update = require('./update');
const destroy = require('./destroy');

//
// export
//
module.exports = { ...create, ...update, ...destroy };
