// include config database
var database        = require('../config/database');

var User = database.sequelize.define('tests', {
    id: {
        type: database.Sequelize.INTEGER,
        primaryKey: true
    },
    nama: database.Sequelize.INTEGER,
    alamat: database.Sequelize.STRING,
    token: database.Sequelize.STRING,
    exclude: ['created_at', 'updated_at']
});

module.exports =  User;