const dbConnect = require('../../config/dbConnect');
const connect = dbConnect();

module.exports = {

	//passport
	serialize: function(user, done){

		done(null, user.rut);

	},

	deserialize: function(rut, done) {

	    connect.query("SELECT * FROM usuario WHERE rut = ? ",[rut], function(err, rows){

	        done(err, rows[0]);

	   	});

	},

	session: function(req,username,password,done) {
		connect.query('SELECT * FROM usuario WHERE correo_electronico = ?', [username] , (err,rows) => {
	        if ( err )	return done( err );

	        if ( !rows.length ) {
	            return done( null , false , req.flash( 'message2' , 'Error de usuario.' )); // req.flash is the way to set flashdata using connect-flash
	        }

	        // if the user is found but the password is wrong
	        if ( !( password == rows[0].password ) )
	            return done( null , false , req.flash( 'message2' , 'Oops! Error de password.' )); // create the loginMessage and save it to session as flashdata

	        // all is well, return successful user
	        return done( null , rows[0] );
	    
	    });
	}
}
