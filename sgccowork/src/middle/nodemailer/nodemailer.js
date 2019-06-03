const app = require('../../config/server');
const nodemailer = app.get('email');
const dbConnect = require('../../config/dbConnect');
const connection = dbConnect();

module.exports = {

	enviarCorreo: function (req, res, next) {

		const transporter = nodemailer.createTransport({
		  service: 'gmail',
		  auth: {
		    user: 'cop009@alumnos.ucn.cl',
		    pass: 'kikito123'
		  }

		});

		const to = req.body.email;
		const subject = req.body.asunto;
		const mensaje = req.body.mensaje;

		const mailOptions = {

			  from: 'cop009@alumnos.ucn.cl',
			  to: to,
			  subject: subject,
			  text: mensaje

		};

		transporter.sendMail( mailOptions , function (error, info) {

		  if (error) {
			throw error;
		  } else {
		    next();
		  }
		});
	},
	enviarVerificacion: function (req, res , next) {

		const transporter = nodemailer.createTransport({
		  service: 'gmail',
		  auth: {
		    user: 'cop009@alumnos.ucn.cl',
		    pass: 'kikito123'
		  }

		});

		const to = req.body['correo_electronico'];
		const subject = 'No reply';
		const host = 'http://localhost:3000'
		const link =  host + '/pass?' + req.body['rut'] + '?' + req.body['correo_electronico'];
		const mensaje = 'correo de verificación \n link: ' + link;

		const mailOptions = {

			  from: 'cop009@alumnos.ucn.cl',
			  to: to,
			  subject: subject,
			  text: mensaje

		};

		transporter.sendMail( mailOptions , function (error, info) {

		  if (error) {
		  	throw error;
		  } else {
		    next();
		  }
		});
	},
	recuperarPass: function(req , res , resul , next){
		const transporter = nodemailer.createTransport({
		  service: 'gmail',
		  auth: {
		    user: 'cop009@alumnos.ucn.cl',
		    pass: 'kikito123'
		  }

		});
		const to = resul[0].correo_electronico;
		const subject = 'No reply';
		const pass = resul[0].password;
		const mensaje = 'password utilizado \n pass: ' + pass;

		const mailOptions = {

			  from: 'cop009@alumnos.ucn.cl',
			  to: to,
			  subject: subject,
			  text: mensaje

		};

		transporter.sendMail( mailOptions , function (error, info) {

		  if (error) {
		  	throw error;
		  } else {
		    next();
		  }
		}); 
	
	}

}