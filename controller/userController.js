var User        = require('../model/userModel');
var uuidv1      = require('uuid/v1'); //uuidv1()
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var config      = require('../config/config');
var bcrypt      = require('bcrypt');

var Register  = function(req, res){
    User.create({
        nama : req.body.nama,
        username : req.body.username,
        alamat : req.body.alamat,
        password: bcrypt.hashSync(req.body.password, 10),
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
        res.json({
            message: 'success register',
            data:data
        });
    })
    .catch(function(err){
        console.log(err);
        res.json(err);
    })
};

var Read    = function(req, res){
    User.findAll({ 
        attributes: ['id','nama','username','alamat'],
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
        res.json({
            message : err
        })
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
    User.findOne({
        where : {
            username: req.body.username
        }
    })
    .then(function(data){
        console.log(bcrypt.hashSync(req.body.password, 10));
        if(data.password == bcrypt.hashSync(req.body.password, data.password)){
            res.json({
                message: 'success login',
                token: data.token
            })
        }else{
            res.json({
                message : 'invalid password',
                data: data
            })
        }
    })
    .catch(function(err){
        res.json({
            message : 'username not found'
        })
    })
}

var Logout  = function(req, res){
    User.update({
        token: ''
        },{
            where: {
                id: req.params.id
            }
        }
    )
    .then(function(data){
        res.json({
            message: 'sukses',
            data: data
        })
    })
    .catch(function(err){
        console.log(err);
        res.json({ message : err })
    })
}

module.exports = {
    Register : Register,
    Read: Read,
    Update: Update,
    Profile: Profile,
    Delete: Delete,
    Login: Login,
    Logout: Logout
}