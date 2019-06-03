	$('input[name=pass]').change( function ( socket ) {
		var pass = $('input[name=pass]').val();
		var pass1 = $('input[name=pass1]').val();
		if( !(pass == '') ){
		
			//pinta rojo
			if( !(pass == pass1) ){
				$('input[name=pass1]').css( 'background-color' , '#FFA07A' );
			}else{
			//pinta verde
			$('input[name=pass1]').css( 'background-color' , '#82E0AA' );
			}
			
		}else{
			//pinta rojo
			if( !(pass1 == '') ){
				$('input[name=pass1]').css( 'background-color' , '#FFA07A' );
			}else{
				$('input[name=pass1]').css( 'background-color' , '#FFFFFF' );	
			}
		}
		
	});

  	$('input[name=pass1]').change( function () {
		var pass = $('input[name=pass]').val();
		var pass1 = $('input[name=pass1]').val();
		if( !(pass == '') ){
		
			//pinta rojo
			if( !(pass == pass1) ){
				$('input[name=pass1]').css( 'background-color' , '#FFA07A' );
			}else{
			//pinta verde
			$('input[name=pass1]').css( 'background-color' , '#82E0AA' );
			}
			
		}else{
			//pinta rojo
			if( !(pass1 == '') ){
				$('input[name=pass1]').css( 'background-color' , '#FFA07A' );
			}else{
				$('input[name=pass1]').css( 'background-color' , '#FFFFFF' );	
			}
		}
		
	});

  	$('input[name=visible]').click(function(){
  		$('input[name=pass]').attr( 'type' , 'text' );
  		$('input[name=pass1]').attr( 'type' , 'text' );
  	});
  	$('input[name=invisible]').click(function(){
  		$('input[name=pass]').attr( 'type' , 'password' );
  		$('input[name=pass1]').attr( 'type' , 'password' );
  	});


