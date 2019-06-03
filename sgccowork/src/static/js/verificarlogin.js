/*/conectar socket // esta escuchando
 
	const socket = io.connect( window.location.host );
  	const sckt = io();
	//creamos variables
  	var user;
// metodo para que escuche socket.io
  	$('input[name=username]').change( function ( socket ) {
		user = $('input[name=username]').val();
		if( !(user == "") ){
		var dato = {
			usuario: user
		};
		//se envia 
		sckt.emit( 'usuario' , dato );
		
		// 
		sckt.on( 'verificar' , function( resultado ){
			if( resultado == false ) {
				//pinta rojo
				$('input[name=username]').css( 'background-color' , '#FFA07A' );
			}else{
				//pinta green
				$('input[name=username]').css( 'background-color' , '#82E0AA' );
			}
		});
		}else{
			$('input[name=username]').css( 'background-color' , '#FFFFFF' );
		}
		
	}); */