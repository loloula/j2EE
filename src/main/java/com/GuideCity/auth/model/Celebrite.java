package com.GuideCity.auth.model;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Persistence;

@Entity
public class Celebrite implements Serializable{
	@Id
    private int numcelebrite ;
	@Column
    private String nomC;
    private String nationalite;
    private String prenomC;
    private String epoque;
    @ManyToMany(mappedBy = "celebrite")
    private List<Monument> monument = new ArrayList<>();
    public Celebrite() {
    	
    }
	public Celebrite(int numCelebrite, String nomC, String nationalite, String prenomC, String epoque) {
		super();
		this.numcelebrite = numCelebrite;
		this.nomC = nomC;
		this.nationalite = nationalite;
		this.prenomC = prenomC;
		this.epoque = epoque;
	}

	public int getNumcelebrite() {
		return numcelebrite;
	}

	public void setNumcelebrite(int numCelebrite) {
		this.numcelebrite = numCelebrite;
	}

	public String getNomC() {
		return nomC;
	}

	public void setNomC(String nomC) {
		this.nomC = nomC;
	}

	public String getNationalite() {
		return nationalite;
	}

	public void setNationalite(String nationalite) {
		this.nationalite = nationalite;
	}

	public String getPrenomC() {
		return prenomC;
	}

	public void setPrenomC(String prenomC) {
		this.prenomC = prenomC;
	}

	public String getEpoque() {
		return epoque;
	}

	public void setEpoque(String epoque) {
		this.epoque = epoque;
	}
	public List<Monument> getMonument() {
		return monument;
	}
	public void setMonument(List<Monument> monument) {
		this.monument = monument;
	}

	
    

}
