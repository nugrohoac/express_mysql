//initialize base on library
var express     = require('express');
var cors        = require('cors');
var app         = express();
var morgan      = require('morgan');
var bodyParser  = require('body-parser');
var jwt         = require('jsonwebtoken');
var http        = require('http');
var https       = require('https');
var fs          = require('fs');
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var bcrypt      = require('bcrypt');

//initialize base on directory
var config          = require('./config/config');
var UserRoute       = require('./routes/userRoute');
var CountryRoute    = require('./routes/countryRoute');
var LoginRoute      = require('./routes/loginRouter');
var jwtMiddleware   = require('./middleware/jwt');

//setup on running
var port        = process.env.PORT || 3000;
app.use(cors());
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended : true }));
app.use(bodyParser.json());

var options     = {
    key:    fs.readFileSync('ssl/server.key', 'utf8'),
    cert:   fs.readFileSync('ssl/server.cert', 'utf8')
};

//http.createServer(app).listen(port);
https.createServer(options, app).listen(port);

console.log('Example app listening https://localhost:' + port + '/');

//without token
app.use('/user', UserRoute);

//middleware
app.use(jwtMiddleware.jwtMiddleware);

//use token
app.use('/country', CountryRoute);