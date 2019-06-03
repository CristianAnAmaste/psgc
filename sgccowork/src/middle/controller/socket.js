//instanciamos socketio
const app = require('../../config/server');
const io = app.get('socket');
//instanciamos base de datoas
const dbConnect = require('../../config/dbConnect');
const connect = dbConnect();

module.exports = {

	  provincia: function(estado){
    
      var reg = estado;

      connect.query('SELECT * FROM provincias WHERE region_id = ? ', reg.id , (err, res) => {
      	// devuelve las provincias 
        if( !(err) && res.length != 0 ) {

          io.emit('divprovincia', res );
      
        } else {
          //devulve false, y elimina las provincias 
          io.emit('divprovincia', false );
        }
        
      });
    },
    comuna: function(estado) {

      var com = estado;
      
      connect.query('SELECT * FROM comunas WHERE provincia_id = ?' , com , (err, res) => {
         // devuelve las provincias 
      if(  !(err) && res.length != 0 ) {

          io.emit('divcomunas', res );
      
        }else{
          //devulve false, y elimina las comunas 
          io.emit('divcomunas', false );
        }
       });
    },

    ocupacion: function(estado) {
        
      var ocu = estado;
      
      if(ocu == '86'){
        connect.query('SELECT * FROM ocupaciones WHERE id_ocupacion = ? ', ocu , (err, res) => {
        // devuelve las provincias 
          if( !(res == 'undefined' || estado == 0) ) {
            connect.query('SELECT * FROM institucion_superior', (err, res) => {

            io.emit( 'divinstitucion' , res );

          });

          } else {
            //devulve false, y elimina las instituciones   
            io.emit( 'divinstitucion' , false );
          }
        });
        
      }else{
      
        io.emit( 'divinstitucion' , false );
      
      }
    },
    usuarioRegistro: function(estado) {
      
      var us = estado;
      
      connect.query('SELECT * FROM usuario WHERE correo_electronico = ?' , us.usuario , function(err, res) {
        
        if( !(err) && res.length != 0 ){
         
          io.emit('verifica' , true);

        }else{

          connect.query('SELECT * FROM cliente WHERE correo_electronico = ?' , us.usuario , function(err, res) {
            if( !(err) && res.length != 0 ) {
              io.emit('verifica' , true);
            }else{
              io.emit('verifica' , false);
            }
          });

        }
      });
    },
    rutRegistro: function(estado) {
      var rut = estado;
      connect.query('SELECT * FROM cliente WHERE id_usuario = ?' , rut.rut , function(err, res) {
        
        if( !(err) && res.length != 0 ) {
          io.emit('verificarut' , true);
         
        }else{

          connect.query('SELECT * FROM usuario WHERE rut = ?' , rut.rut , function(err, res) {
            if( !(err) && res.length != 0 ) {
              io.emit('verificarut' , true);
            }else{
              io.emit('verificarut' , false);
            }
          });
      }
      });
    } /*,

    usuarioLogin: function(estado) {
      
      var us = estado;
      
      connect.query('SELECT * FROM usuario WHERE correo_electronico = ?' , us.usuario , (err, res) => {
        
        if( !(err) && res.length != 0 ){
         
          io.emit('verificar' , true);

        }else{

          io.emit('verificar' , false);

        }
      });
    } */

}