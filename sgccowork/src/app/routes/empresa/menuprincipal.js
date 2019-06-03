const acceso = require('../../../controller/acceso');

module.exports = (app) => {
  
  	app.get('/menuempresa', acceso.logeado , acceso.empresa ,(req, res) => {
    res.render('empresa/menuprincipal');
    });



};