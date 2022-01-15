package com.GuideCity.auth.model;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Persistence;

@Entity
public class Region implements Serializable{
	@Id
	private String numreg;
	@Column
	private String nomregion;
	public Region() {
		
	}
	public Region(String numreg, String nomregion) {
		super();
		this.numreg = numreg;
		this.nomregion = nomregion;
	}
	public String getNumreg() {
		return numreg;
	}
	public void setNumreg(String numreg) {
		this.numreg = numreg;
	}
	public String getNomregion() {
		return nomregion;
	}
	public void setNomregion(String nomregion) {
		this.nomregion = nomregion;
	}
	

}
