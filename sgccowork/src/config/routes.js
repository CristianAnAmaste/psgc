//ruta para iniciar server
const app = require('./server');
//passport, socket.io y nodemailer
const passport = app.get('passport');
const io = app.get('socket');
//const nodemailer = app.get('email');

//app cowork
require('../app/routes/cowork/menuprincipal')(app);
require('../app/routes/cowork/usuario')(app);
// emprendedor
require('../app/routes/emprendedor/registro')(app);
require('../app/routes/emprendedor/menuprincipal')(app);
require('../app/routes/emprendedor/pass')(app , passport);
// empresa
require('../app/routes/empresa/menuprincipal')(app);
//---------------//
//general
require('../app/routes/general/inicio')(app);
require('../app/routes/general/login')(app , passport);
require('../app/routes/general/menu')(app);
require('../app/routes/general/recuperarpass')(app);

//middle
require('../middle/socketio/sockets')(app , io);

//controller



module.exports = app;