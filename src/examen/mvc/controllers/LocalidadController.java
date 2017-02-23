package examen.mvc.controllers;

import java.util.List;

import javax.servlet.annotation.WebServlet;

import org.mvc.Controller;

import examen.mvc.beans.Localidad;
import examen.mvc.models.LocalidadModel;
@SuppressWarnings("serial")
@WebServlet({ "/localidad", "/localidad/*" })
public class LocalidadController extends Controller {
	
	public void indexGet() {
		view("localidad/index.jsp");
	}

	public void crearGet() {
		view("localidad/crearLocalidad.jsp");
	}

	public void crearPost() {
		String nombre= request.getParameter("nombre");
		String provincia= request.getParameter("provincia");
		try{
			new LocalidadModel().crear(nombre,provincia);
			response.sendRedirect(baseURL+"localidad/listar");
			
		}catch (Exception e){
			view("error/error.jsp");
		}
	}

	public void listarGet() {
		List<Localidad> lista = new LocalidadModel().listar();
		datos.put("localidades", lista);
		view("localidad/listarLocalidades.jsp");
		
		
	}

	public void listarPost() {
		listarGet();
	}
}
