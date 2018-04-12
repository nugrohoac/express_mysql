var Country     = require('../model/countryModel');
var uuidv1      = require('uuid/v1'); //uuidv1()
var dateforrmat = require('dateformat');
var jwt         = require('jsonwebtoken');
var config      = require('../config/config');

var Create  = function(req, res){
    Country.create({
        country_name: req.body.country_name,
        country_villagers: req.body.country_villagers,
        token: jwt.sign({
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
    Country.findAll({ 
        attributes: ['country_id','country_name','country_villagers'],
        limit: 5,
        offset: req.params.page * 5,
        order: [['country_id', 'DESC']]
    })
    .then(function(data){
        res.json({
            error:false,
            message:'Country list',
            data:data
        });
    })
    .catch(function(err){
        res.json({ error:  err })
        console.log('error');
    });
};

var Update  = function(req, res){
    Country.update({
            country_name: req.body.country_name,
            country_villagers: req.body.country_villagers
        },{
            where: {
                country_id: req.body.id
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

var Detail = function(req, res){
    Country.findOne({
        where : {
            country_id: req.params.id
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
    Country.destroy({ 
        where : { 
            country_id: req.params.id
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
    Create : Create,
    Read: Read,
    Update: Update,
    Delete: Delete,
    Detail: Detail
}