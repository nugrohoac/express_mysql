var express         = require('express');
var UserController  = require('../controller/userController');
var UserRouter      = express.Router();


UserRouter.route('/update')
    .post(UserController.Update);
UserRouter.route('/register')
    .post(UserController.Register);
UserRouter.route('/login')
    .post(UserController.Login);

UserRouter.route('/read')
    .get(UserController.Read);
UserRouter.route('/profile/:id')
    .get(UserController.Profile);
UserRouter.route('/delete/:id')
    .get(UserController.Delete);
UserRouter.route('/logout/:id')
    .get(UserController.Logout);

module.exports = UserRouter;