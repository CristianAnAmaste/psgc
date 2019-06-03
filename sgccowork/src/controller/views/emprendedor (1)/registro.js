const dbConnect = require('../../../config/dbConnect');
const connection = dbConnect();

module.exports = {
  
  checkRegistro: function(req , validar){
    var lista = { nombres:false,rut:false,apellido_pap:false, 
      apellido_mam:false,correo_electronico:false, telefono:false,genero:false,
      pais:false,region:false,ocupacion:false,
      nivel:false,calle:false,numero_calle:false }
    var checked;
    
      if(req.body['masculino']){ 
        lista.genero='masculino';
      }else if(req.body['femenino'] ){ 
        lista.genero='femenino';
      }else if(req.body['otro']){ 
        lista.genero='otro';
      }else{
        lista.genero=true;
      }
      if( !(req.body['nivel']) ){
        lista.nivel=true;
      }

      if(validar.mapped().nombres){
        lista.nombres='';
      }else{
        lista.nombres=req.body['nombres'];
      }

      if(validar.mapped().rut){
        lista.rut='';
      }else{
        lista.rut = req.body['rut'];
      }
      if(validar.mapped().apellido_pap){
        lista.apellido_pap='';
      }else{
        lista.apellido_pap = req.body['apellido_pap'];
      }
      if(validar.mapped().apellido_mam){
        lista.apellido_mam='';
      }else{
        lista.apellido_mam = req.body['apellido_mam'];
      }
      if(validar.mapped().correo_electronico){
        lista.correo_electronico='';
      }else{
        lista.correo_electronico = req.body['correo_electronico'];
      }
      if(validar.mapped().telefono){
        lista.telefono='';
      }else{
        lista.telefono=req.body['telefono'];
      }
      if(validar.mapped().pais){
        lista.pais='0';
      }else{
        lista.pais=req.body['pais'];
      }
      if(validar.mapped().region){
        lista.region='0';
      }else{
        lista.region=req.body['region'];
      }
      if(validar.mapped().ocupacion){
        lista.ocupacion='0';
      }else{
        lista.ocupacion=req.body['ocupacion'];
      }
      if(validar.mapped().calle){
        lista.calle='';
      }else{
        lista.calle=req.body['calle'];
      }
      if(validar.mapped().numero_calle){
        lista.numero_calle='';
      }else{
        lista.numero_calle=req.body['numero_calle'];
      }

    
    return lista;

  },

  reloadRegistro: function(req, checked, res){
    
    var paises, regiones, ocupaciones;
     
    connection.query('SELECT * FROM paises', (err, result) => {
      paises = result;
      connection.query('SELECT * FROM regiones', (err, result) => {
        regiones = result;
        connection.query('SELECT * FROM ocupaciones', (err, result) => {
          ocupaciones = result;
              res.render('emprendedor/registro', {
              pais: paises,
              region: regiones,
              ocupacion: ocupaciones,
              message: req.flash('message'),
              //
              nombres: checked.nombres,
              apellido_pap: checked.apellido_pap,
              apellido_mam: checked.apellido_mam,
              rut: checked.rut,
              correo_electronico: checked.correo_electronico,
              genero: checked.genero,
              telefono: checked.telefono,
              paisc: checked.pais,
              regionc: checked.region,
              calle: checked.calle,
              numero_calle: checked.numero_calle,
              ocupacionc: checked.ocupacion,
              nivel: checked.nivel

              });
           
            });
          });
        
    });

  },

	getRegistro: function(req, res) {
    
    
  	var paises, regiones, ocupaciones;
    connection.query('SELECT * FROM paises', (err, result) => {
  		paises = result;
      connection.query('SELECT * FROM regiones', (err, result) => {
        regiones = result;
        
  			connection.query('SELECT * FROM ocupaciones', (err, result) => {
  				ocupaciones = result;
  						res.render('emprendedor/registro', {
							pais: paises,
			        region: regiones,
							ocupacion: ocupaciones,
							message: '',
              //
              nombres: req.body['nombres'],
              apellido_pap: req.body['apellido_pap'],
              apellido_mam: req.body['apellido_mam'],
              rut: req.body['rut'],
              correo_electronico: req.body['correo_electronico'],
              genero: true,
              telefono: req.body['telefono'],
              paisc: req.body['pais'],
              regionc: req.body['region'],
              calle: req.body['calle'],
              numero_calle: req.body['numero_calle'],
              ocupacionc: req.body['ocupacion'],
              nivel: true

					    });
           
      			});
      		
      });
    });
    },

    realizarRegistro: function(req, resul , next) {
      var direccion , genero , emprende;
     

        connection.query('SELECT * FROM direccion WHERE nombre_calle = ? AND numero_calle = ? AND comuna_id = ?' , [ req.body['calle'], req.body['numero_calle'] , req.body['comuna'] ] , function(err , res) {
          direccion = res; 
          if( direccion.length == 0 ) {
        connection.query('INSERT INTO direccion (nombre_calle , numero_calle , comuna_id) values (? , ? , ?)', [ req.body['calle'], req.body['numero_calle'] , req.body['comuna'] ] , (err) => {
                if(err) throw err;
                connection.query('SELECT * FROM direccion WHERE nombre_calle = ? AND numero_calle = ? AND comuna_id = ?' , [ req.body['calle'], req.body['numero_calle'] , req.body['comuna'] ] , (err , res) =>{
                  direccion = res;
                   //registro genero en una variable
        
          if( !req.body['masculino'] ) {
          if( !req.body['femenino'] ) {
            genero = 'otro';
          }else{
            genero = 'femenino';
          }
        }else{
          genero = 'masculino';
        }
               

          if( req.body['nivel'] ) {
            emprende = 3;
            if(req.body['institucion']){
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion, id_nacionalidad , id_nivel , id_ocupacion , id_usuario , id_institucion ) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] , req.body['institucion'] ] ,
                                (err) => {
                                  if(err) throw err;
                                  next();
                                });
            }else{

            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion , id_nacionalidad , id_nivel , id_ocupacion , id_usuario ) VALUES (? , ? , ? , ? , ? , ?, ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] ] ,
                                (err) => {
                                   if(err) throw err;
                                   next();
                                  });
          }

          }else{
            emprende = 1;
            if(req.body['institucion']){
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion, id_nacionalidad , id_nivel , id_ocupacion , id_usuario , id_institucion ) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] , req.body['institucion'] ] ,
                                (err) => {
                                  if(err) throw err;
                                  next();
                                });
            }else{
              
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion , id_nacionalidad , id_nivel , id_ocupacion , id_usuario ) VALUES (? , ? , ? , ? , ? , ?, ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] ] ,
                                (err) => {
                                   if(err) throw err;
                                   next();
                                  });
            }
          }//else nivel

                }); // select
           }); //insert

      } else { //direccion
      
        //registro genero en una variable
        
          if( !req.body['masculino'] ) {
          if( !req.body['femenino'] ) {
            genero = 'otro';
          }else{
            genero = 'femenino';
          }
        }else{
          genero = 'masculino';
        }
        
        

         if( req.body['nivel'] ) {
            emprende = 3;
            if(req.body['institucion']){
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion, id_nacionalidad , id_nivel , id_ocupacion , id_usuario , id_institucion ) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] , req.body['institucion'] ] ,
                                (err) => {
                                  if(err) throw err;
                                  next();
                                });
            }else{

            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion , id_nacionalidad , id_nivel , id_ocupacion , id_usuario ) VALUES (? , ? , ? , ? , ? , ?, ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] ] ,
                                (err) => {
                                   if(err) throw err;
                                   next();
                                  });
          }

          }else{ // nivel
            emprende = 1;
            if(req.body['institucion']){
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion, id_nacionalidad , id_nivel , id_ocupacion , id_usuario , id_institucion ) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] , req.body['institucion'] ] ,
                                (err) => {
                                  if(err) throw err;
                                  next();
                                });
            }else{
              
            connection.query('INSERT INTO cliente (nombres , apellido_pap , apellido_mam , telefono , genero , correo_electronico , id_direccion , id_nacionalidad , id_nivel , id_ocupacion , id_usuario ) VALUES (? , ? , ? , ? , ? , ?, ? , ? , ? , ? , ?)',
                              [ req.body['nombres'] , req.body['apellido_pap'] , req.body['apellido_mam'] , req.body['telefono'] , genero , req.body['correo_electronico'] , direccion[0].id_direccion , req.body['pais'] , emprende , req.body['ocupacion'] , req.body['rut'] ] ,
                                (err) => {
                                   if(err) throw err;
                                   next();
                                  });
            }
          }//else nivel
          }//else direccion 
        }); // select inicial
  	
},
  postRegistro: function(req, res) {
      res.redirect('registroecho');
    }
}