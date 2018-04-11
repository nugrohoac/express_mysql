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
var UserRoute   = require('./routes/userRoute');

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

app.use('/user', UserRoute);