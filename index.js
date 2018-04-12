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

//initialize base on directory
var config      = require('./config/config');
var UserRoute   = require('./routes/userRoute');
var CountryRoute    = require('./routes/countryRoute');

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

https.createServer(options, app).listen(port);
//http.createServer(app).listen(port);

console.log('Example app listening https://localhost:' + port + '/');

app.use('/user', UserRoute);

app.use(function(req, res, next){
    if(req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer'){
        var token = req.headers.authorization.split(' ')[1];
        jwt.verify(token,config.secret,function(err, decode){
            if(err){
                res.json({
                    status:401,
                    success: false,
                    message: 'Failed Authectication token'
                })
            }
        })
        next();
    }else{
        res.json({
            status: 401,
            message: 'Authetication failed, please send token',
            token: '',
        })
    }
});

app.use('/country', CountryRoute);