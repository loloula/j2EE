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
import javax.persistence.Table;

@Entity
public class Departement  implements Serializable {
	@Id
	private String dep;
	@Column
	private String nomdep;
	private String cheflieu;
	private String numreg;
	public Departement() {
		
	}
	public Departement(String dep, String nomdep, String numreg) {
		this.dep = dep;
		this.nomdep = nomdep;
		this.numreg = numreg;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public String getNomdep() {
		return nomdep;
	}
	public void setNomdep(String nomdep) {
		this.nomdep = nomdep;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = Lieu.class)
    @JoinColumn(name="cheflieu")
	public String getcheflieu() {
		return cheflieu;
	}
	public void setcheflieu(String cheflieu) {
		this.cheflieu = cheflieu;
	}
	@ManyToOne(cascade = CascadeType.ALL, targetEntity = Region.class)
    @JoinColumn(name="numreg")
	public String getNumreg() {
		return numreg;
	}
	public void setNumreg(String numreg) {
		this.numreg = numreg;
	}

	

}
