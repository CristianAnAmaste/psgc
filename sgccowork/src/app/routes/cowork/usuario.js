const acceso = require('../../../controller/acceso');
const user = require('../../../controller/views/cowork/usuario');

module.exports = (app) =>{
	app.get('/usuario', acceso.logeado , acceso.administrador , user.getUsuario );
}