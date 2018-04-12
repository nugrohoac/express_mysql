var User        = require('../model/userModel');
var uuidv1      = require('uuid/v1'); //uuidv1()
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var config      = require('../config/config');

var Register  = function(req, res){
    User.create({
        nama: req.body.nama,
        alamat: req.body.alamat,
        token: jwt.sign({
            name: req.body.nama,
            alamet:req.body.alamat
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
        attributes: ['id','nama','alamat','token'], limit: 5
    })
    .then(function(data){
        res.json({
            error:false,
            message:'users list',
            data:data,
            token: 'token'
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

module.exports = {
    Register : Register,
    Read: Read,
    Update: Update,
    Profile: Profile,
    Delete: Delete 
}