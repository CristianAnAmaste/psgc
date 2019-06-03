module.exports = {
	logeado: function( req , res , next ){
		if(req.user){
			next();
		}else{
			res.redirect('/login');
		}
	},
	logeadoNo: function( req , res, next){
		if(req.user){
			res.redirect('/');
		}else{
			next();
		}

	}, 
	menulogeado: function( req , res){
		if(req.user['id_nivel_acceso'] == '1'){
			res.redirect('/menucowork');
		}else{
			if(req.user['id_nivel_acceso'] == '3'){
				res.redirect('/menuemprendedor');
			}else{
				if(req.user['id_nivel_acceso'] == '4'){
				res.redirect('/menuempresa');
			}else{
				res.redirect('/');
			}
			}
		}
		
	},
	administrador: function(req , res , next){
		if(req.user['id_nivel_acceso'] == '1' || req.user['id_nivel_acceso'] == '0'){
			next();
		}else{
			if(req.user['id_nivel_acceso'] == '3'){
				res.redirect('/menuemprendedor');
			}else{
				if(req.user['id_nivel_acceso'] == '4'){
				res.redirect('/menuempresa');
			}else{
				res.redirect('/');
			}
			}
		}

	},
	emprendedor: function(req , res, next){
		if(req.user['id_nivel_acceso'] == '3' || req.user['id_nivel_acceso'] == '0'){
			next();
		}else{
			if(req.user['id_nivel_acceso'] == '1'){
				res.redirect('/menucowork');
			}else{
				if(req.user['id_nivel_acceso'] == '4'){
				res.redirect('/menuempresa');
				}else{
					res.redirect('/');
				}
			}
		}

	},
	empresa: function(req, res, next){
		if(req.user['id_nivel_acceso'] == '4' || req.user['id_nivel_acceso'] == '0'){
			next();
		}else{
			if(req.user['id_nivel_acceso'] == '1'){
				res.redirect('/menucowork');
			}else{
				if(req.user['id_nivel_acceso'] == '3'){
				res.redirect('/menuemprendedor');
				}else{
					res.redirect('/');
				}
			}
		}
	}

}