const acceso = require('../../../controller/acceso');
const login = require('../../../controller/views/general/login');

module.exports = (app , passport) => { //passport
  
  //passport  */
  require('../../../middle/passport/passport')(passport);

  //vista */

app.get('/login', acceso.logeadoNo , login.getLogin );

//formulario
app.post('/login', passport.authenticate( 'local' ,
    {
    successRedirect: '/menu',
    failureRedirect:'/login',
    failureFlash: true
    }));

//logout
app.get('/logout', login.logout);

};