const acceso = require('../../../controller/acceso');

module.exports = (app) => {
  
  	
	app.get('/menuemprendedor', acceso.logeado , acceso.emprendedor , function(req, res) {
    res.render('emprendedor/menuprincipal');
    });




};