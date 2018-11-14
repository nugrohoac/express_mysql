var express         = require('express');
var donwloadController  = require('../controller/downloadController');
var downloadRouter      = express.Router();

downloadRouter.route('/fetch')
    .get(donwloadController.download);

module.exports = downloadRouter;