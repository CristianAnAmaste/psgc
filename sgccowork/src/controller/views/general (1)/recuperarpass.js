const dbConnect = require('../../../config/dbConnect');
const connection = dbConnect();

module.exports = {
	getRecuperar: function(req, res){
		res.render('general/recuperarpass');

	},
	postRecuperar: function(req,res){
		res.redirect('/inicio');
	},

	verificarCorreo: function(req, res , next , email ){
		connection.query('SELECT * FROM usuario WHERE correo_electronico = ?' , [ req.body['correo_electronico'] ] , (err,resul)=>{
			if( !(resul.length > 0 ) ){
				res.redirect('/recuperarpass');
				}else{
					email.recuperarPass(req, res , resul , next);
				}
		});
		
	}


}