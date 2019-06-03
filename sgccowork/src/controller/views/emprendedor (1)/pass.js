const dbConnect = require('../../../config/dbConnect');
const connection = dbConnect();

module.exports = {

	getPass: function (req, res) {
		res.render('emprendedor/pass',
    	{url: req.url });
    },
    postPass: function (req, res ){
		res.redirect('/login');
	},

	verificarUrl: function (req , res , next){
		var url = req.url;
		var url = url.split('?');
		if(url.length == 3 ) {
			connection.query('SELECT * FROM cliente WHERE id_usuario = ? AND correo_electronico = ?' , [ url[1] , url[2] ] , function(err , resul){
				if( !(resul.length > 0 ) ){
					res.redirect('/');
				}else{
					connection.query('SELECT * FROM usuario WHERE rut = ? AND correo_electronico = ?' , [ url[1] , url[2] ] , function(err , resul){
						if(resul.length > 0){
							res.redirect('/');
						}else{
							next();
						}
					});
				}
			});
		}else{
			res.redirect('/');
		}
	},
	claves: function(req, res, next){
		if ( !(req.body['pass'] == req.body['pass1']) ){
			res.redirect(req.body['link']);
		}else{
			next();
		}

	},

	crearusuario: function( req , res , next){
		var acceso = 3;
		var url = req.body['link'];
		url = url.split('?'); 
		connection.query('INSERT INTO usuario (rut , correo_electronico , password , id_nivel_acceso) VALUES ( ? , ? , ? , ? )', [ url[1] , url[2] , req.body['pass'] , acceso ] , function(err){
			if(err) throw err;

			next();
		});

	}

}