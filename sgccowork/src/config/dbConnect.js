//conexion a bd del proyecto
const mysql = require('mysql');

module.exports = () => {

	var conectado = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'bd123456',
    database: 'sgc_proyecto',
    port: 5000
  });

  conectado.connect((error) => {
    if(error){
      console.log(error.code);
    }
  });
  return conectado;

}