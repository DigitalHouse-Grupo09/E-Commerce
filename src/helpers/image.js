//
// imports
//
const path = require('path');
const multer = require('multer');

//
// constants
//
const basedir = path.resolve(__dirname, '../../public');
const mimetypes = {
  'image/png': 'gif',
  'image/png': 'png',
  'image/bmp': 'bmp',
  'image/jpg': 'jpg',
  'image/jpeg': 'jpeg',
  'image/webp': 'webp'
};

//
// storage creation
//
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, `${basedir}/assets/img/books`);
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
      cb(null, `${file.fieldname}-${uniqueSuffix}.${mimetypes[file.mimetype]}`);
    }
});

const upload = multer({ storage: storage });

module.exports = upload;
