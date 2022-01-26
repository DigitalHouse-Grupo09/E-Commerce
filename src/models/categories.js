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
// literal object categories
//
const modelCategories = {
    /**
     * List all categories
     *
     * @return array<Category>
     */
    getAll: function () {
        return categories;
    },

    /**
     * Filter categories by keywords
     *
     * @param keywords {string} Searched words
     *
     * @return array<Category>
     */
    filter: function (keywords) {
        // Add wildcards to keywords for optimize search
        const term = `*${keywords}*`;

        // Search matches in all available properties
        return this.getAll().filter(category => searcheableProperties.some(property => minimatch(String(category[property] || ''), term)));
    },

    /**
     * Get category by ID
     *
     * @param id {number} Searched category ID
     *
     * @return Category || null
     */
    getById: function (id) {
        return this.getAll().find(category => category.id === id);
    },

    /**
     * Get category by slug
     *
     * @param slug {string} Searched category slug
     *
     * @return Category || null
     */
    getBySlug: function (slug) {
        return this.getAll().find(category => category.slug === slug);
    }
}

//
// export
//
module.exports = () => modelCategories;
