package examen.mvc.models;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import examen.mvc.beans.Cliente;
import examen.mvc.beans.Localidad;

public class ClienteModel extends Model {

	public void crear(String nombre, Long localidad) {
		Transaction t = ses.beginTransaction();
		Localidad l = new LocalidadModel().buscar(localidad);
		Cliente c = new Cliente(nombre, l);
		ses.save(c);
		t.commit();
		ses.close();

	}

	public List<Cliente> listar() {
		List <Cliente>lista= ses.createQuery("from Cliente").list();
		ses.close();
		return lista;
	}

}
