const acceso = require('../../../controller/acceso');
const pass = require('../../../controller/views/general/recuperarpass');
const email = require('../../../middle/nodemailer/nodemailer');

module.exports = (app) => {

app.get('/recuperarpass' , acceso.logeadoNo , pass.getRecuperar );

app.post('/recuperarpass' , function(req , res , next) { 
	pass.verificarCorreo(req , res, next , email) 
}
, pass.postRecuperar );

}

