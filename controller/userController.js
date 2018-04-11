var User    = require('../model/userModel');

var Read    = function(req, res){
    User.findAll({ attributes: ['id','nama','alamat','token'], limit: 5 }).then(function(data){
        res.json({
            error:false,
            message:'users list',
            data:data,
            token: 'token'
        });
    }).catch(function(err){
        res.json({ error:  err })
        console.log('error');
    });
};

var Update  = function(req, res){
    User.update(
        {
            nama: 'Cahyo',
            alamat: 'Jl. Menujut kebenaran'
        },
        {
            where: {id: 2}
        }
    ).then(function(rowsUpdate){
        res.json({sukses: 'sukses'});
    }).catch(function(err){
        console.log(err);
        res.json(err);
    })
}

module.exports = {
    Read: Read,
    Update: Update
}