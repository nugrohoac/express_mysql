// include config database
var database        = require('../config/database');

var User = database.sequelize.define('tb_user', {
    user_id: database.Sequelize.INTEGER,
    user_name: database.Sequelize.STRING,
    user_email: database.Sequelize.STRING,
    user_address: database.Sequelize.STRING,
    token: database.Sequelize.STRING
});