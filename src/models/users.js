//
// imports
//
const fs = require('fs');
const path = require('path');
const minimatch = require('minimatch');
let users = require('../data/users.json');

//
// constants
//
const usersFilePath = path.resolve(__dirname, '../data/users.json');
const searcheableProperties = [
    'email'
];

//
// helpers
//
const save = models => {
    // Save users on file
    fs.writeFileSync(usersFilePath, JSON.stringify(models, null, 1), 'utf-8');

    // Restore with new users
    users = models;
};

//
// class
//
const modelUsers = {
    /**
     * List all users
     *
     * @return array<User>
     */
    getAll: function () {
        return users;
    },

    /**
     * Filter users by keywords
     *
     * @param keywords {string} Searched words
     *
     * @return array<User>
     */
    filter: function (keywords) {
        // Add wildcards to keywords for optimize search
        const term = `*${keywords}*`;

        // Search matches in all available properties
        return this.getAll().filter(user => searcheableProperties.some(property => minimatch(String(user[property] || ''), term)));
    },

    /**
     * Get user by ID
     *
     * @param id {number} Searched user ID
     *
     * @return User || null
     */
    getById: function (id) {
        return this.getAll().find(user => user.id === id);
    }
};

//
// export
//
module.exports = () => modelUsers;
