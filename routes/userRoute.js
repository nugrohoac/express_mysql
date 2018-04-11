var express         = require('express');
var UserController  = require('../controller/userController');
var UserRouter      = express.Router();

UserRouter.route('/read')
    .get(UserController.Read);
UserRouter.route('/update')
    .get(UserController.Update);
UserRouter.route('/detail')
    .get(UserController.Detail)

module.exports = UserRouter;