var User        = require('../model/userModel');
var uuidv1      = require('uuid/v1'); //uuidv1()
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var config      = require('../config/config');
var bcrypt      = require('bcrypt');
var validator   = require("email-validator");

var Register  = function(req, res){
    console.log(req.body.name);
    if(!/\d/.test(req.body.name)){
        if(validator.validate(req.body.email)){
            console.log(req.body.phone_number);
            if(!/^[a-zA-Z]+$/.test(req.body.phone_number)){
                User.create({
                    name : req.body.name,
                    email : req.body.email,
                    phone_number : req.body.phone_number
                })
                .then(function(data){
                    res.json({
                        message: 'success insert user',
                        data:data
                    });
                })
                .catch(function(err){
                    console.log(err);
                    res.json(err);
                })
            }else{
                res.json({
                    message: "phone number is contain alphabet"
                });
            }
        }else{
            res.json({
                message : "email is not valid"
            });
        }
    }else{
        res.json({
            message : "name is contain number"
        });
    }
    
};

var Read    = function(req, res){
    User.findAll({ 
        attributes: ['id','name','email','phone_number'],
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
    if(!/\d/.test(req.body.name)){
        if(validator.validate(req.body.email)){
            if(!/^[a-zA-Z]+$/.test(req.body.phone_number)){
                User.update({
                    name : req.body.name,
                    email : req.body.email,
                    phone_number : req.body.phone_number
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
            }else{
                res.json({
                    message: "phone number is contain alphabet"
                });
            }

        }else{
            res.json({
                message : "email is not valid"
            });
        }
    }else{
        res.json({
            message : "name is contain number"
        });
    }
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
        //console.log(bcrypt.hashSync(req.body.password, 10));
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