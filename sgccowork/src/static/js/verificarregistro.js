//conectar socket 
 	const socket = io.connect( window.location.host );
	const sckt = io();

	//creamos variables
  	var region, prov;
// metodo para que escuche socket.io
  	$('select[name=region]').change( function ( socket ) {
		var region = { id: $(this).val()};
		//se envia el id de la region
		sckt.emit( 'provincia' , region );
		// creamos el select y las option con la provincias de la region
		sckt.on( 'divprovincia' , function(resultado){
			if( !(resultado == false)){
		$('#prv').css('display', 'block');
		$('select[name=provincia]').empty();
		$('select[name=provincia]').append('<option value="0" >--</option>');
		for(var i=0; resultado.length > i ; i++){
		$('select[name=provincia]').append('<option value="' + resultado[i].provincia_id + '" >' + resultado[i].provincia_nombre + '</option>');
		}
		}else{
		//si no se elige region se desaparece el bloque
		$('#prv').css('display', 'none');
		$('select[name=provincia]').empty();
		$('#cmn').css('display', 'none');
		$('select[name=comuna]').empty();
	}
		});
	
		
	});


$('select[name=provincia]').change( function ( socket ) {
		prov = $('select[name=provincia]').val();
		//se envia el id de la provincia
		sckt.emit( 'comuna' , prov );
		// creamos el select y las option con la comuna de la provincia
		sckt.on( 'divcomunas' , function(resultado){
			if( !(resultado == false)){
		$('#cmn').css('display', 'block');
		$('select[name=comuna]').empty();
		$('select[name=comuna]').append('<option value="0" >--</option>');
		for(var i=0; resultado.length > i ; i++){
		$('select[name=comuna]').append('<option value="' + resultado[i].comuna_id + '" >' + resultado[i].comuna_nombre + '</option>');
		}
	}else{
		//si no se elige provincia se desaparece el bloque
		$('#cmn').css('display', 'none');
		$('select[name=comuna]').empty();
	}
		});
	
		
	});

var ocup;

$('select[name=ocupacion]').change( function ( socket ) {
		ocup = $('select[name=ocupacion]').val();
		//se envia el id de la provincia
		sckt.emit( 'ocupacion' , ocup );
		// creamos el select y las option con la comuna de la provincia
		sckt.on( 'divinstitucion' , function(resultado){
			if( !(resultado == false)){
		$('#inst').css('display', 'block');
		$('select[name=institucion]').empty();
		$('select[name=institucion]').append('<option value="0" >--</option>');
		for(var i=0; resultado.length > i ; i++){
		$('select[name=institucion]').append('<option value="' + resultado[i].id_institucion_superior + '" >' + resultado[i].nombre_institucion_superior + '</option>');
		}
	}else{
		//si no se elige provincia se desaparece el bloque
		$('#inst').css('display', 'none');
		$('select[name=institucion]').empty();
	}
		});
	
		
	});

var correo;

$('input[name=correo_electronico]').change( function ( socket ) {
		correo = $('input[name=correo_electronico]').val();
		if( !(correo == '') ){
		var dato = {
			usuario: correo
		};
		//se envia el correo ingresado
		sckt.emit( 'correo' , dato );
		// creamos el select y las option con la comuna de la provincia
		sckt.on( 'verifica' , function(resultado){
			if( (resultado == true) ){
				
				$('input[name=correo_electronico]').val('');
		
			}
		});
	}
	
		
	});

var rut;

$('input[name=rut]').change( function ( socket ) {
		rut = $('input[name=rut]').val();
		if( !(rut == '') ){
		var dato = {
			rut: rut
		};
		//se envia el correo ingresado
		sckt.emit( 'rut' , dato );
		// creamos el select y las option con la comuna de la provincia
		sckt.on( 'verificarut' , function(resultado){
			if( (resultado == true) ){
				
				$('input[name=rut]').val('');
		
			}
		});
	}
	
		
	});



$('input[name=nombres]').on('input', function (e) {
    if (!/^[ a-zA-ZáéíóúüñÁÉÍÓÚÜÑ]*$/i.test(this.value)) {
        this.value = this.value.replace(/[^ a-zA-ZáéíóúüñÁÉÍÓÚÜÑ]+/ig,"");
    }
});

$( 'input[name=masculino]' ).on( 'click' , function() {
	
  	$('input[name=femenino]').prop('checked',false);
  	$('input[name=otro]').prop('checked',false);
  });

$( 'input[name=femenino]' ).on( 'click' , function() {
	
  	$('input[name=masculino]').prop('checked',false);
  	$('input[name=otro]').prop('checked',false);
  });
$( 'input[name=otro]' ).on( 'click' , function() {
	
  	$('input[name=masculino]').prop('checked',false);
  	$('input[name=femenino]').prop('checked',false);
  });



        //***********************************//
        // For select 2
        //***********************************//
        
    