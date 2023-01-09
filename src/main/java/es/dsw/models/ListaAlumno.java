package es.dsw.models;

import java.util.ArrayList;

public class ListaAlumno {

	private ArrayList<Alumno> Lista = null;
	
	public ListaAlumno() {
		this.Lista = null;
	}
	
	public ListaAlumno(Alumno objAlumno) {
		this.Lista = new ArrayList<Alumno>();
		this.Lista.add(objAlumno);
	}
	
	public void setAlumno(Alumno objAlumno) {
		this.Lista.add(objAlumno);
	}
	
	public int getNumAlumnos() {
		if (this.Lista != null)
			return this.Lista.size();
		else return 0;
	}

	public ArrayList<Alumno> getLista() {
		return this.Lista;
	}


}