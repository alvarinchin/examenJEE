package examen.mvc.models;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import examen.mvc.beans.Localidad;

public class LocalidadModel extends Model {

	public void crear(String nombre, String provincia) {
		Transaction t = ses.beginTransaction();
		Localidad l = new Localidad(nombre,provincia);	
		ses.save(l);
		t.commit();
		ses.close();
	}
	public List<Localidad> listar(){
		List <Localidad>lista= ses.createQuery("from Localidad").list();
		ses.close();
		return lista;
	}
	public Localidad buscar(Long id){
		Localidad l=ses.get(Localidad.class, id);
		ses.close();
		return l;
	}

}
