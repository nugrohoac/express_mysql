// include config database
var database        = require('../config/database');

var User = database.sequelize.define('users', {
    id: {
        type: database.Sequelize.INTEGER,
        primaryKey: true
    },
    // nama: database.Sequelize.INTEGER,
    // username: database.Sequelize.STRING, 
    // alamat: database.Sequelize.STRING,
    // password: database.Sequelize.STRING,
    // token: database.Sequelize.STRING
    name: database.Sequelize.INTEGER,
    email: database.Sequelize.STRING,
    phone_number: database.Sequelize.STRING
});

module.exports =  User;