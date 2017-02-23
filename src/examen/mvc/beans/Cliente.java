package examen.mvc.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Cliente {
	private Long id;
	private String nombre;
	private Localidad localidad;

	public Cliente() {

	}

	public Cliente(String nombre, Localidad localidad) {
		super();
		this.nombre = nombre;
		this.localidad = localidad;
	}

	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(unique = true)
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	public Localidad getLocalidad() {
		return localidad;
	}

	
	public void setLocalidad(Localidad localidad) {
		this.localidad = localidad;

	}
}
