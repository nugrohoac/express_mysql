//include dependency
var Sequelize       = require('sequelize');

//include config
var config          = require('./config');

//setting up the config
var sequelize       = new Sequelize(
                        config.database,
                        config.username,
                        config.password,{
                            host: config.host,
                            port: config.port,
                            dialect: config.dialec,
                            logging: false,
                            freezeTableName: true,
                            operatorsAliases: false
                        }
                    );

// check connections status
sequelize.authenticate().then(function(err){
    if(err)
        console.log('There is connection in ERROR');
    
    console.log('Connection has been estabiled successfully');
});

module.exports = {
    sequelize: sequelize,
    Sequelize: Sequelize
};