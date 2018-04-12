// include config database
var database        = require('../config/database');

var Country = database.sequelize.define('countrys', {
    country_id: {
        type: database.Sequelize.INTEGER,
        primaryKey: true
    },
    country_name : database.Sequelize.STRING,
    country_villagers: database.Sequelize.INTEGER
});

module.exports =  Country;