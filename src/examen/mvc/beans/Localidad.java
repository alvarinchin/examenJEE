package examen.mvc.beans;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Localidad {
	private String nombre;
	private String provincia;
	private Long id;
	private Collection<Cliente> clientes;


	public Localidad(){
		this.clientes = new ArrayList<Cliente>();
		
	}
	
	public Localidad(String nombre, String provincia,
			Collection<Cliente> clientes) {
		this.nombre = nombre;
		this.provincia = provincia;
		this.clientes = clientes;
	}

	public Localidad(String nombre, String provincia) {
		this.nombre = nombre;
		this.provincia = provincia;
		this.clientes = new ArrayList<Cliente>();
		
	}

	@Column(unique = true)
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@OneToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "localidad")
	public Collection<Cliente> getClientes() {
		return clientes;
	}

	public void setClientes(Collection<Cliente> clientes) {
		this.clientes = clientes;
	}

	public void addCliente(Cliente cliente) {
		this.clientes.add(cliente);
	}

	

}
