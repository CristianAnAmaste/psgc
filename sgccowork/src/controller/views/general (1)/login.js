

module.exports = {
	getLogin: function(req, res) {
        res.render('general/login', { 
      message: req.flash('message2')
    });
},

	
	logout: function(req,res) {
    //esta es una llamada a la funcion logout de passport
    req.logout();
    res.redirect('/inicio'); //auth/signin
  }



}