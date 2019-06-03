const mail = require('../../../middle/nodemailer/nodemailer');

module.exports = (app) => {

  app.get('/', function (req, res) {
    var session=false;
    if(req.user){
      session=true;
    }
    res.render('general/inicio' , {
      sess: session
    });
  });
  
  app.get('/inicio', function (req, res) {
    var session=false;
    if(req.user){
      session=true;
    }
    res.render('general/inicio' , {
      sess: session
    });
  });

  app.post('/inicio' , function (req, res) {
  	res.redirect('/'); 
    });

};