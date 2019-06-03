const acceso = require('../../../controller/acceso');

module.exports = (app) => {
  
  	app.get('/menucowork', acceso.logeado , acceso.administrador , function(req, res) {
    res.render('cowork/menuprincipal');
    });
	



};