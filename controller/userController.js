var User    = require('../model/userModel');

var Read    = function(req, res){
    User.findAll({ attributes: ['id','nama','alamat','token'], limit: 5 }).then(function(data){
        res.json({
            error:false,
            message:'users list',
            data:data
        });
    }).catch(function(err){
        res.json({ error:  err })
        console.log('error');
    });
};

module.exports = {
    Read: Read
}