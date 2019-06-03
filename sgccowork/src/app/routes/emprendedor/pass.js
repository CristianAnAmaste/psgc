const acceso = require('../../../controller/acceso');
const pass = require('../../../controller/views/emprendedor/pass');

module.exports = (app , passport) => {

	app.get('/pass', acceso.logeadoNo , pass.verificarUrl , pass.getPass );

	app.post('/pass' , pass.claves , pass.crearusuario , pass.postPass );

}