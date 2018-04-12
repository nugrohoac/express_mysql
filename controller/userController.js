var User        = require('../model/userModel');
var uuidv1      = require('uuid/v1'); //uuidv1()
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var config      = require('../config/config');


var Register  = function(req, res){
    User.create({
        nama : req.body.nama,
        username : req.body.username,
        alamat : req.body.alamat,
        password: bcrypt.hash(req.body.password, 10),
        token : jwt.sign({
            name: req.body.nama,
            alamet: req.body.alamat,
            time: Date.now()
        },
        config.secret,{
            
        })
    })
    .then(function(data){
        console.log(data);
        res.json(data);
    })
    .catch(function(err){
        console.log(err);
        res.json(err);
    })
};

var Read    = function(req, res){
    User.findAll({ 
        attributes: ['id','nama','alamat','token'],
        limit: 5,
        order: [['id', 'DESC']]
    })
    .then(function(data){
        res.json({
            error:false,
            message:'users list',
            data:data
        });
    })
    .catch(function(err){
        res.json({ error:  err })
        console.log('error');
    });
};

var Update  = function(req, res){
    User.update({
            nama: req.body.nama,
            alamat: req.body.alamat
        },{
            where: {
                id: req.body.id
            }
        }
    )
    .then(function(data){
        res.json({
            sukses: 'sukses',
            data: data
        });
    })
    .catch(function(err){
        console.log(err);
        res.json({ message : err });
    })
}

var Profile = function(req, res){
    User.findOne({
        where : {
            id: req.params.id
        }
    })
    .then(function(data){
        res.json({
            error: false,
            message: 'succes',
            token: data.token,
            data: data,
        })
    })
    .catch(function(err){
        console.log(err);
        res.json({ message : err })
    })
}

var Delete  = function(req, res){
    User.destroy({ 
        where : { 
            id: 3 
        } 
    })
    .then(function(data){
        console.log(data);
    })
    .catch(function(err){
        console.log(err);
    })
}

var Login   = function(req, res){
    var token = req.token;
    var username = req.body.username;
    var password = req.body.password;
    User.findOne({

    })
}

module.exports = {
    Register : Register,
    Read: Read,
    Update: Update,
    Profile: Profile,
    Delete: Delete 
}

// if(bcrypt.compareSync('somePassword', hash)) {
//  // Passwords match
// } else {
//  // Passwords don't match
// }