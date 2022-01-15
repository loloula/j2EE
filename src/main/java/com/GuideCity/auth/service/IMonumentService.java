package com.GuideCity.auth.service ;

import org.springframework.stereotype.Service;

import com.GuideCity.auth.model.*;

//import fr.umontpellier.monspri1.semestre1.Departement;
//import fr.umontpellier.monspri1.semestre1.Monument;

@Service
public interface IMonumentService {
	//################# Monument #####################
	boolean save(Monument monument) throws Exception;
	boolean deleteById (String codeM) throws Exception ;
 
	
	//###############Celebrite########################
	boolean save(Celebrite celebrite) throws Exception;
	boolean deleteById (int numC) throws Exception ;
	boolean delete (Celebrite cele) throws Exception ;
	//###############Lieu########################
	boolean save(Lieu lieu) throws Exception;
	
	//###############Departement########################
	boolean save(Departement dep) throws Exception;
	
	//###############Region########################
	boolean save(Region reg) throws Exception;
	
	
	Iterable<Monument> findAll() throws Exception; 
	Iterable<Departement> findAllDep() throws Exception;
	Iterable<Lieu> findAllcommune() throws Exception;
	Iterable<Celebrite> findAllceleb() throws Exception;
	Iterable<Region> findAllregion() throws Exception;
}