package com.GuideCity.auth.service;



import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GuideCity.auth.model.*;
import com.GuideCity.auth.repository.MonumentDAO;
import com.GuideCity.auth.repository.MonumentRepository;


@Service
@Transactional
public class MonumentService implements IMonumentService {
	protected EntityManager em;
	@Autowired
    MonumentDAO monumentDAO;
	@Autowired
    MonumentRepository monumentRepository;

	public MonumentService(EntityManager em) {
	    this.em = em;
	  }
	//#######################  Monument ##########################
    public boolean save(Monument monument) throws Exception {
    	monumentDAO.save(monument);
		return false;
	}
	@Override
	public boolean deleteById(String codeM) throws Exception {
		// TODO Auto-generated method stub
		monumentDAO.deleteById(codeM);
		return false;
	}
	
    
    public Iterable<Monument> findAll() { 
    	Query query = em.createQuery("SELECT m FROM Monument m");
        return (Iterable<Monument>) query.getResultList();   
    }
    
    public void ajoutemonument( String codeM , String nomM , String proprietaire, String typeM ,float longitude , float latitude , String codeLieu) {
		  new Monument ( codeM , nomM ,  proprietaire,  typeM ,longitude , latitude , codeLieu);
	  }
    public Iterable<Monument> mounumentparcommune(String nomcommune){
	    Query query = em.createQuery("Select l.nomcom, m.nomM, m.proprietaire, m.typeM,m.longitude,m.latitude from  Monument m,Lieu l  where l.nomcom=?1 and m.codelieu=l.codelieu ");
	    query.setParameter(1, nomcommune);
	    return (Iterable<Monument>) query.getResultList();
	  }
    public Monument mounument(String codeM){
	    Query query = em.createQuery("Select m from  Monument m  where m.codeM=?1 ");
	    query.setParameter(1, codeM);
	    return (Monument) query.getResultList().get(0);
	  }
//#############Celebrite##################"
	@Override
	public boolean save(Celebrite celebrite) throws Exception {
		monumentDAO.save(celebrite);
		return false;
	}
	@Override
	public boolean deleteById(int numC) throws Exception {
		monumentDAO.deleteById(numC);
		return false;
	}
	@Override
	public boolean delete(Celebrite cele) throws Exception {
		monumentDAO.delete(cele);
		return false;
	}
	 public Iterable<Celebrite> unecelebrite(int celebrite){
		 Query query = em.createQuery("Select m from  Celebrite m  where m.numcelebrite=?1  ");
		 query.setParameter(1, celebrite);
		    return (Iterable<Celebrite>) query.getResultList();
		  }
	@Override
	public Iterable<Celebrite> findAllceleb() {
		//TypedQuery<Celebrite> query = em.createQuery("select c from Celebrite c,IN(c.monument) m where m.codeM =?1", Celebrite.class).setParameter(1, codeM);
        
		return em.createQuery("SELECT c FROM Celebrite c", Celebrite.class).getResultList(); 
	}
	
	
	
	//###################### Lieu ########################
	@Override
	public boolean save(Lieu lieu) throws Exception {
		monumentDAO.save(lieu);
		return false;
	}

	
	
	//###################### Departement ########################
	@Override
	public boolean save(Departement dep) throws Exception {
		monumentDAO.save(dep);
		return false;
	}

	
	
	//###################### Region ########################
	@Override
	public boolean save(Region reg) throws Exception {
		monumentDAO.save(reg);
		return false;
	}
	
    
	@Override
	public Iterable<Departement> findAllDep() {
		Query query = em.createQuery("SELECT d FROM Departement d");
        return (Iterable<Departement>) query.getResultList();  
	}

	@Override
	public Iterable<Lieu> findAllcommune() throws Exception {
		Query query = em.createQuery("SELECT l FROM Lieu l");
		return (Iterable<Lieu>) query.getResultList(); 
	}
	@Override
	public Iterable<Region> findAllregion() throws Exception {
		
		Query query = em.createQuery("SELECT r FROM Region r");
		return (Iterable<Region>) query.getResultList(); 
	}
	 public static float distFrom(Monument m1, Monument m2) {
		    double earthRadius = 6371000; //meters
		    double dLat = Math.toRadians(m2.getLatitude()-m1.getLatitude());
		    double dLng = Math.toRadians(m2.getLongitude()-m2.getLongitude());
		    double a = Math.sin(dLat/2) * Math.sin(dLat/2) +
		               Math.cos(Math.toRadians(m1.getLatitude())) * Math.cos(Math.toRadians(m2.getLatitude())) *
		               Math.sin(dLng/2) * Math.sin(dLng/2);
		    double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
		    float dist = (float) (earthRadius * c);

		    return dist;
		    }


	


	
}