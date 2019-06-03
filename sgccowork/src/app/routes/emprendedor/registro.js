const regist = require('../../../controller/views/emprendedor/registro');
const mail = require('../../../middle/nodemailer/nodemailer');
const { check , validationResult } = require('express-validator/check');


module.exports = (app) => {
  
//cargar vista inicial
  app.get('/registro', regist.getRegistro );

  app.get('/registroecho' , function(req , res ){
    res.render('emprendedor/registroecho');
  })


  // submit de formulario 

	app.post('/registro' , 
    check('nombres').not().isEmpty(),
    check('rut').isLength({ min:8 , max:11}).isNumeric(),
    check('apellido_pap').not().isEmpty().isAlpha('es-ES'),
    check('apellido_mam').not().isEmpty().isAlpha('es-ES') ,
    check('correo_electronico').isLength({ min:7 }).isEmail(),
    check('telefono').isLength({ min: 9 , max:14 }),
    check('pais').not().equals('0'), 
    check('region').not().equals('0'), 
    check('provincia').not().equals('0'),
    check('comuna').not().equals('0'),
    check('ocupacion').not().equals('0'),
    check('institucion').optional(),
    check('nivel').optional(),
    check('calle').not().isEmpty(),
    check('numero_calle').not().isEmpty().isLength( { max:6 } )
    , function(req , res , next) {

      var validar = validationResult(req);
      var checked;
      req.flash( 'message' , 'Error al ingresar información.' );
      if( !(validar.isEmpty()) ) {
        if(validar.array().length > 0){
          checked = regist.checkRegistro(req, validar);
          regist.reloadRegistro(req , checked , res);
        }
      } else { // ! validar
        if( req.body['masculino'] || req.body['femenino'] || req.body['otro'] ) {
          next();
        } else {
          checked = regist.checkRegistro(req, validar);
          regist.reloadRegistro(req , checked, res);
        }
      }   
    } 
    , regist.realizarRegistro
    , mail.enviarVerificacion 
    , regist.postRegistro );
  }; 

/*
*/
