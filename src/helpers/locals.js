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
    return value.value;
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

module.exports = {
  attr,
  formatPrice,
  formatDiscount
};
