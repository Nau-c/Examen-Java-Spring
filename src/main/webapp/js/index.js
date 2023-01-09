/*
Función para mostrar el formulario
*/

/*
Evento click con ajax
*/

$(document).ready(function() {
	$("#showForm").click(function() {
		showFormulario();
	})
	$("#buttonEnviar").click(function() {
		datoFormulario();
	})
	
})

/*Desde el Formulario Orginial cargamos al intermedio donde recogemso datos*/
function showForm() {
	$("#newStudentButton").load("./formulario");
	 /*addButton = document.getElementById("newStudentForm").style.display = "block";*/
	
};


/*
Recoger los datos y almacenar en variable de sesión
*/

function Formulario(){

 //Se recogen los datos del formulario.
 var data_nombre = $('#nombre').val();
 var data_apellidos = $('#apellidos').val();
 var data_edad = $('#edad').val();

 //Se reinicia la capa donde se cargará la respuesta. El método html de jquery permite cargar html de forma dinámica en un contenedor.
 $('#newStudentForm').html('');

 //Se invoca a la función ajax de jquery.
	$.ajax({
		url     : './datoFormulario',
        method  : 'POST',
        data    : {nombre:data_nombre, apellidos:data_apellidos, edad:data_edad},
	    success : function(resultText){
                    $('#newStudentForm').html(resultText);
                    $('formulario').html("");
        
                  },
        error   : function(jqXHR, exception){
                    $('#Error').html('<p>Ha ocurrido un error fatal.</p>');
                  }
    });
}




