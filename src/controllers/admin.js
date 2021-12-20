const controller = {
    main: (req, res) => res.render('admin'),
    create: (req, res) => res.render('admin/create'),
    update: (req, res) => res.render('admin/update'),
    delete: (req, res) => res.render('admin/delete'),
}

module.exports = controller;

