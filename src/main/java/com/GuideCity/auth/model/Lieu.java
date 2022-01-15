package com.GuideCity.auth.model;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="lieu")
public class Lieu implements Serializable{
	@Id
	public String codelieu;
	@Column
	public String dep ;
	
	public String  nomcom ;
	public float longitude ;
	public float latitude;
	
	public Lieu() {
		
	}
	public Lieu(String codeLieu ,String dep ,String  nomCom ,float longitude , float latitude
			) {
		this.codelieu=codeLieu;
		this.dep=dep;
		this.nomcom=nomCom;
		this.longitude=longitude;
		this.latitude=latitude;
	}
	
	public String getCodelieu() {
		return codelieu;
	}
	public void setCodelieu(String codelieu) {
		this.codelieu = codelieu;
	}
	public String getNomcom() {
		return nomcom;
	}
	public void setNomcom(String nomcom) {
		this.nomcom = nomcom;
	}
	@ManyToOne(cascade = CascadeType.ALL, targetEntity = Departement.class)
    @JoinColumn(name="dep")
	
	
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	

}
