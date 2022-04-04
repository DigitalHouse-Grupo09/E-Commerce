//
// imports
//
const { sequelize, User } = require('../../database');

//
// endpoints
//

//
// account
//
const account = async (req, res) => responseAccount(req, res);

const accountPut = async (req, res) => {
    // Retrieve model id
    const id = req.session.client.idUser;
    // Normalize body
    const data = req.body;
    // Normalize file
    const image = req.file;

    try {
        await sequelize.transaction(async (transaction) => {
            const current = await User.scope('fully').findOne({ where: { id } }, { transaction });

            // Try to update product model
            current.set({
                full_name: data.full_name,
                email: data.email
            });

            if (image) {
                current.set({
                    avatar: `/assets/img/users/${image.filename}`
                });
            }

            await current.save({ transaction });
        });

        // Redirect to models
        res.redirect('/client/account?sucess=1');

    // Handle errors
    } catch(e) {
        console.error('Error on update model', e);
        return responseAccount(req, res, 400, {
            errors: [{
                param: 'general',
                msg: e.message
            }],
            old: req.body
        });
    }
};

//
// helpers
//
const responseAccount = async (req, res, status = 200, data = {}) => {
    const id = req.session.client.idUser;
    const user = await User.scope('fully').findOne({ where: { id } });

    res.status(status).render('client/account', { user, ...data });
};

//
// exports
//
module.exports = { account, accountPut }