package examen.mvc.controllers;

import java.util.List;

import javax.servlet.annotation.WebServlet;

import org.mvc.Controller;

import examen.mvc.beans.Cliente;
import examen.mvc.beans.Localidad;
import examen.mvc.models.ClienteModel;
import examen.mvc.models.LocalidadModel;
@SuppressWarnings("serial")
@WebServlet({ "/cliente", "/cliente/*" })
public class ClienteController extends Controller {
	
	public void indexGet() {
		view("cliente/index.jsp");
	}

	public void crearGet() {
		List<Localidad> l = new LocalidadModel().listar();
		datos.put("localidades", l);
		view("cliente/crearCliente.jsp");
	}

	public void crearPost() {
		String nombre= request.getParameter("nombre");
		Long localidadId= Long.parseLong(request.getParameter("localidad"));
		try{
			new ClienteModel().crear(nombre,localidadId);
			response.sendRedirect(baseURL+"cliente/listar");
			
		}catch (Exception e){
			view("error/error.jsp");
		}
	}

	public void listarGet() {
		List<Cliente> lista = new ClienteModel().listar();
		datos.put("clientes", lista);
		view("cliente/listarClientes.jsp");
		
		
	}

	public void listarPost() {
		listarGet();
	}
}
