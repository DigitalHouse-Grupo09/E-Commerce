//
// imports
//
const minimatch = require('minimatch');
const categories = require('../data/categories.json');

//
// constants
//
const searcheableProperties = [
    'title',
    'slug'
];

//
// class
//
class Categories {
    getAll () {
        return categories;
    }

    filter (keywords) {
        // Add wildcards to keywords for optimize search
        const term = `*${keywords}*`;

        // Search matches in all available properties
        return categories.filter(category => searcheableProperties.some(property => minimatch(String(category[property] || ''), term)));
    }

    getById (id) {
        return categories.find(category => category.id === id);
    }

    getBySlug (slug) {
        return categories.find(category => category.slug === slug);
    }
}

//
// export
//
module.exports = new Categories();
