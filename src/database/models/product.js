'use strict';

//
// constants
//
const alias = 'Product';
const config = {
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    deletedAt: false,
    scopes: {
        fully: {
            include: ['category', 'images', 'authors', {
                association: 'attributes',
                include: ['attribute'],
                as: 'attributes'
            }],
            order: [
                ['images', 'priority', 'ASC']
            ]
        }
    }
};

// include: ,

//
// define
//
module.exports = (sequelize, dataTypes) => {
    //
    // columns
    //
    const columns = {
        id: {
            type: dataTypes.BIGINT(20).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        id_category: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        slug: {
            type: dataTypes.STRING,
            allowNull: false
        }
    };

    //
    // sequelize define
    //
    const Model = sequelize.define(alias, columns, config);

    //
    // helpers
    //
    Model.associate = function (models) {
        // category relationship
        Model.belongsTo(models.Category, {
            as: 'category',
            foreignKey: 'id_category'
        });

        // images relationship
        Model.hasMany(models.Image, {
            as: 'images',
            foreignKey: 'id_product',
            timestamps: true,
            createdAt: 'created_at',
            updatedAt: 'updated_at',
            onDelete: 'cascade'
        });

        // authors relationship
        Model.belongsToMany(models.Author, {
            as: 'authors',
            through: 'product_authors',
            foreignKey: 'id_product',
            foreignKeyConstraint: true,
            otherKey: 'id_author',
            timestamps: true,
            createdAt: 'created_at',
            updatedAt: 'updated_at',
            onDelete: 'cascade'
        });

        // // attributes relationship
        Model.hasMany(models.ProductAttribute, {
            as: 'attributes',
            foreignKey: 'id_product',
            foreignKeyConstraint: true,
            otherKey: 'id_attribute',
            timestamps: true,
            createdAt: 'created_at',
            updatedAt: 'updated_at',
            onDelete: 'cascade'
        });
    };

    return Model;
};
