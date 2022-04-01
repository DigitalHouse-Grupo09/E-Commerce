//
// imports
//
const numeral = require('numeral');

//
// constants
//
const defaultAmountFormat = '0,0.00';
const mapCurrencies = {
  AR$: '$'
};

//
// functions
//

/**
 * For easy find product attribute on EJS templates
 */
const attr = (attrs = [], name, defaultValue) => {
  const value = attrs.find(attr => attr.attribute && attr.attribute.description === name);

  if (value) {
    return decodeUtf8(value.value);
  }
  return defaultValue;
};

/**
 * For easy format product price on EJS templates
 */
const formatPrice = (price = 0, currency = 'AR$') => {
  return `${mapCurrencies[currency] || currency} ${numeral(price).format(defaultAmountFormat)}`;
};

/**
 * For easy format product price discount on EJS templates
 */
const formatDiscount = (discount = 0, type = '%') => {
  switch (type) {
    case '%':
      return `${numeral(discount).format(defaultAmountFormat)}`;

    default:
      return formatPrice(discount, type);
  }
};

/**
 * For easy take a first element from array on EJS templates
 */
const firstOrDefault = (array, defaultValue, key) => {
  let value = defaultValue;

  if (array && array.length) {
    value = array[0];

    if (key && value) {
      value = value[key];
    }
  }
  return value;
};

/**
 * For easy take a first image from product on EJS templates
 */
const firstImage = (product = {}) => {
  return firstOrDefault(product.images, '/assets/img/books/placeholder.jpeg', 'src');
};

/**
 * For easy take all authors name from product on EJS templates
 */
const authorsName = (product = {}, defaultValue = '') => {
  // Check if has any author
  if (product.authors && product.authors.length) {
    // Reduce author to single array with full author name
    return product.authors.reduce((carry, author) => {
      // For each author, save full name on carry array
      carry.push(author.full_name);
      return carry;
    }, [])
      // Join authors name
      .join(', ');
  }
  return defaultValue;
};

/**
 * Encode UT8 characters
 */
function encodeUtf8(s) {
  try {
    return unescape(encodeURIComponent(s));
  }
  catch (e) {
    return s;
  }
}

/**
 * Decode UT8 characters
 */
function decodeUtf8(s) {
  try {
    return decodeURIComponent(escape(s));
  }
  catch (e) {
    return s;
  }
}

module.exports = {
  attr,
  formatPrice,
  formatDiscount,
  firstOrDefault,
  firstImage,
  authorsName,
  encodeUtf8,
  decodeUtf8
};
