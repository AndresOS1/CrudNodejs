const {Sequelize, DataTypes, Model} = require('sequelize');

const db = require('../config/connection');

const Producto_Agri = db.define('producto_agricultor', {
    idAgroPro: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    agricultor_cond_numero: {
        type: DataTypes.INTEGER,
        foreignKey: true,
    },
    producto_cond_nombre: {
        type: DataTypes.INTEGER,
        foreignKey: true,
    }
},
{
    db,
    sequelize: db,
    modelName: 'Producto_Agri',
    tableName: 'producto_agricultor'
});

module.exports = Producto_Agri;