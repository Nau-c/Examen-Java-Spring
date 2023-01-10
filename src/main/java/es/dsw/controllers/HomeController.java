package es.dsw.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import es.dsw.models.Alumno;
import es.dsw.models.ListaAlumno;



/*
 *a)Creé una controladora denominada HomeController y proceda a mapear la ruta /home
tal que delegue en la vista home.jsp (que ya tiene creado en este proyecto y cuenta con
código html, cs y js).
Además home debe ser el mapeo o ruta por defecto de esta aplicación
 */

@Controller
@SessionAttributes({"ListaAlumno"})

public class HomeController {

	  @RequestMapping(value= {"/", "/home"})
	  public String showHome() {
	    return "home";
	  }
	  
	  @GetMapping(value = {"/formulario"})
		public String showFormulario() {
			
			return "formulario";
		}
	  
	  /*
	   Recibir los datos por post y chequearlos
	   */
	  
	  
	  @PostMapping(value = {"/datoFormulario"})
	  public String datoFormulario(@RequestParam("nombre") String nombre,@RequestParam("apellidos") String apellidos, @RequestParam(name="edad", required=false, defaultValue = "-1") int edad, Model objModel) {
	  	  
		/*Alumno nuevoAlumno = new Alumno(nombre, apellidos, edad);
		List<Alumno> alumnos = (List<Alumno>) objModel.getAttribute("alumnos");
		*/
		Alumno nuevoAlumno = new Alumno(nombre, apellidos, edad);
		/*nuevoAlumno.setNombre(nombre);
		nuevoAlumno.setApellidos(apellidos);
		nuevoAlumno.setEdad(edad);*/
		  
		  
		/*if (alumnos == null) {
			alumnos = new ArrayList<Alumno>();
			
		}*/
		
		if(objModel.getAttribute("ListaAlumno") == null) {
			objModel.addAttribute("ListaAlumno", (new ListaAlumno(nuevoAlumno)));
		} else {
			ListaAlumno auxLista = (ListaAlumno) objModel.getAttribute("ListaAlumno");
			auxLista.setAlumno(nuevoAlumno);
		}
		
		
		/*
		* alumnos.add(nuevoAlumno);
		*objModel.addAttribute("alumnos", alumnos);
		*/
		 
		objModel.addAttribute("nombre", nombre);
		objModel.addAttribute("apellidos", apellidos);
		objModel.addAttribute("edad", edad);
		
		
		
		
	  	
	  	
	  	if ((nombre == "") || (apellidos == "")) {
	  		objModel.addAttribute("error", true);
	  		objModel.addAttribute("errorVacio", true);
	  	} else {
	  		objModel.addAttribute("errorVacio", false);
	  	}
	  	
	  	if (edad < 17) {
	  		objModel.addAttribute("error", true);
	  		objModel.addAttribute("errorEdad", true);
	  	} else {
	  		objModel.addAttribute("errorEdad", false);
	  	}
	  	
	 
	  
	  	return "datoFormulario";
	  }

	  
	  
	 		
}




