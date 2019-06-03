const acceso = require('../../../controller/acceso');

module.exports = (app) => {

app.get('/menu' , acceso.logeado , acceso.menulogeado)

}