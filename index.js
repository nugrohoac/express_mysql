//initialize base on library
var express     = require('express');
var app         = express();
var morgan      = require('morgan');
var bodyParser  = require('body-parser');
var jwt         = require('jsonwebtoken');
var http        = require('http');
var https       = require('https');
var fs          = require('fs');


//initialize base on directory
var config      = require('./config/config');


//setup on running
var port        = process.env.PORT || 3000;

app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended : true }));
app.use(bodyParser.json());

var options     = {
    key:    fs.readFileSync('ssl/server.key', 'utf8'),
    cert:   fs.readFileSync('ssl/server.cert', 'utf8')
};

https.createServer(options, app).listen(port);
//http.createServer(app).listen(port);

console.log('Example app listening https://localhost:' + port + '/');

app.get('/', function(req, res){

    var Sequelize       = require('sequelize');

    var sequelize       = new Sequelize(
        config.database,
        config.username,
        config.password,{
            host: config.host,
            port: config.port,
            dialect: config.dialec
        }
    );

    // include config database
    var database        = require('./config/database');

    var User = database.sequelize.define('tests', {
        id: {
            type: database.Sequelize.INTEGER,
            primaryKey: true
        },
        nama: database.Sequelize.INTEGER,
        alamat: database.Sequelize.STRING,
        token: database.Sequelize.STRING
    });

    //Applying Item Table to database
    // sequelize.sync({force:true}).then(function (err) {
    //     if(err){
    //     console.log('An error occur while creating table');
    //     }else{
    //     console.log('Item table created successfully');
    //     }
    // });

    User.findAll({ attributes: ['id','nama','alamat','token'], limit: 5 }).then(function(data){
        res.json({error:false,message:'users list',data:data});
    }).catch(function(err){
        console.log('error');
    });
});