const dbConnect = require('../../../config/dbConnect');
const connection = dbConnect();

module.exports = {
	getUsuario: function(req , res){
		var usuario;
		connection.query('SELECT nombres , apellido_pap , id_nacionalidad FROM cliente INNER JOIN usuario ON cliente.id_usuario = usuario.rut', function(err, resul){
			if(err) throw err;
			usuario = resul;
			res.render('cowork/usuario', {
				user: usuario
			});

		});

	}
}