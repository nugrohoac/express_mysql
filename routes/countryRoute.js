var express             = require('express');
var CountryController   = require('../controller/countryController');
var CountryRouter       = express.Router();

CountryRouter.route('/create')
    .post(CountryController.Create);
CountryRouter.route('/update')
    .post(CountryController.Update);

CountryRouter.route('/read')
    .get(CountryController.Read);
CountryRouter.route('/profile/:id')
    .get(CountryController.Detail);
CountryRouter.route('/delete/:id')
    .get(CountryController.Delete);

module.exports = CountryRouter;