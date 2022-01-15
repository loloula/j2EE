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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Persistence;

@Entity
public class Monument implements Serializable {
	@Id
	private String codeM;
	@Column
	private String nomM;
	private String proprietaire;
	private String typeM;
	private float longitude;
	private float latitude;
	
	private String codelieu;
	  @ManyToMany (fetch = FetchType.EAGER)
	    @JoinTable( name = "associea",
	                joinColumns = @JoinColumn( name = "codeM" ),
	                inverseJoinColumns = @JoinColumn( name = "numcelebrite" ) )
	    private List<Celebrite> celebrite = new ArrayList<>();
	      
	
	//EntityManagerFactory emf = Persistence.createEntityManagerFactory("bdprojet");
	//EntityManager em = emf.createEntityManager();
	public Monument() {

	}

	/*public Monument(String codeM, String nomM, String proprietaire, String typeM, float longitude, float latitude,
			String codeLieu, Set<Celebrite> celebrite) {
		super();
		this.codeM = codeM;
		this.nomM = nomM;
		this.proprietaire = proprietaire;
		this.typeM = typeM;
		this.longitude = longitude;
		this.latitude = latitude;
		this.codeLieu = codeLieu;
		this.celebrite = celebrite;
	}*/

	

	public Monument( String codeM , String nomM , String proprietaire, String typeM ,float longitude , float latitude , String codelieu) {
		this.codeM=codeM;
		this.nomM=nomM;
		this.proprietaire=proprietaire;
		this.typeM=typeM;
		this.longitude=longitude;
		this.latitude=latitude;
		
		this.codelieu=codelieu;

	}
	
	public String getCodeM() {
		return codeM;
	}

	public void setCodeM(String codeM) {
		this.codeM = codeM;
	}

	public String getNomM() {
		return nomM;
	}

	public void setNomM(String nomM) {
		this.nomM = nomM;
	}

	public String getProprietaire() {
		return proprietaire;
	}

	public void setProprietaire(String proprietaire) {
		this.proprietaire = proprietaire;
	}

	public String getTypeM() {
		return typeM;
	}

	public void setTypeM(String typeM) {
		this.typeM = typeM;
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

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = Lieu.class)
    @JoinColumn(name="codelieu")
	
	public String getCodelieu() {
		return codelieu;
	}

	public void setCodelieu(String codelieu) {
		this.codelieu = codelieu;
	}

	
   public List<Celebrite> getCelebrite() {
		return celebrite;
	}

	public void setCelebrite(List<Celebrite> celebrite) {
		this.celebrite = celebrite;
	}

public void creermonument(Monument m) {
	   m = new Monument(m.codeM , m.nomM ,  m.proprietaire, m.typeM ,m.longitude , m.latitude , m.codelieu);
	   //em.persist(m);
   }


}
