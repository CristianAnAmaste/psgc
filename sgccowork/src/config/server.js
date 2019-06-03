//modulos de node
const express = require('express');
const cookieParser = require('cookie-parser');
const path = require('path');
const bodyParser = require('body-parser');


//iniciamos express
const app = express();

const lifetime = 1000*60*60; // una hora ( milisegundos)
//constantes
const {
	PORT = 3000,
	SESS_NAME = 'iduser',
	SESS_SECRET = 'secret',
	SESS_TIME = lifetime
} = process.env;


//requiere express 
const passport = require ('passport');
const flash = require('connect-flash');
const session = require('express-session');
const socketio = require('socket.io');
const nodemailer = require('nodemailer');


// configuracion del server
app.set('port', PORT);
app.set('passport', passport);
//configurar ejs para las vistas del sistema
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '../app/views'));
//ruta utilizar Javascript o CSS // archivos estaticos
app.use(express.static(path.join(__dirname, '../static')));


// passport

//manipular valores como en php
app.use(bodyParser.urlencoded({extended: false}));
//configurar cookie-parser, validator y session
app.use(express.json());
//app.use(check());
app.use(cookieParser());
//configurar session
app.use(session({
	name: SESS_NAME,
	resave: true,
	saveUninitialized: true,
	secret: SESS_SECRET,
	cookie:{
		maxAge: SESS_TIME
		}
}));

//inicializando passport
app.use(passport.initialize());
app.use(passport.session());
//envio de mensajes flash
app.use(flash());


//iniciamos server con listen 
const server = app.listen(app.get('port'), function(){
	console.log("server",app.get('port'));
});

//enviar listen
app.set('listen', server);
//socket io // y lo enviamos
const puerto = app.get('listen');

const io = socketio(puerto);

app.set('socket' , io);

//nodemailer
app.set('email' , nodemailer);

//exportamos app
module.exports = app;

