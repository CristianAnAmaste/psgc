const dbConnect = require('../../config/dbConnect');
const connect = dbConnect();
const sockets = require('../controller/socket');


module.exports = (app , io) => {

  // conexion socket.io
  var res;
  io.on('connection', function(socket) {
    //escucha registro
    //
    socket.on('correo' , sockets.usuarioRegistro );
    //
    socket.on('rut' , sockets.rutRegistro );
    //
    socket.on( 'provincia' , sockets.provincia );
    //  
    socket.on( 'comuna' , sockets.comuna );
    //
    socket.on( 'ocupacion' , sockets.ocupacion ); 

    //escucha login 
    //socket.on( 'usuario' , sockets.usuarioLogin );
  
  });


  };  
