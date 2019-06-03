const LocalStrategy = require('passport-local').Strategy;
const passportquery = require('../controller/passport');

module.exports = function( passport ){

	passport.serializeUser(passportquery.serialize);

	passport.deserializeUser(passportquery.deserialize);


	passport.use('local' , 
		new LocalStrategy({
		usernameField: 'username',
		passwordField: 'password',
		passReqToCallback: true

	}, passportquery.session ));

};