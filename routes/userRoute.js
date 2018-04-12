var express         = require('express');
var UserController  = require('../controller/userController');
var UserRouter      = express.Router();

UserRouter.route('/read')
    .get(UserController.Read);
UserRouter.route('/update')
    .post(UserController.Update);
UserRouter.route('/profile/:id')
    .get(UserController.Profile);
UserRouter.route('/delete/:id')
    .get(UserController.Delete);
UserRouter.route('/register')
    .post(UserController.Register);

module.exports = UserRouter;