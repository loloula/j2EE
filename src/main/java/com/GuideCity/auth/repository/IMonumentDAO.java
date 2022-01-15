package com.GuideCity.auth.repository;


import org.springframework.stereotype.Component;

import com.GuideCity.auth.model.Celebrite;
import com.GuideCity.auth.model.Departement;
import com.GuideCity.auth.model.Lieu;
import com.GuideCity.auth.model.Monument;
import com.GuideCity.auth.model.Region;




@Component
public interface IMonumentDAO {
	 //########## Monument ###############################
	 boolean save (Monument monument) throws Exception ;
	 boolean deleteById (String codeM) throws Exception ;
	// Monument trouvemonument(String codeM) throws Exception; 
	 
	 
	 //############# Celebrité ##########################
	 boolean save (Celebrite celebrite) throws Exception ;
	 boolean deleteById (int numC) throws Exception ;
	 boolean delete(Celebrite cele) throws Exception ;
	 
	 
	 //############## Lieu ##############################
	 boolean save (Lieu lieu) throws Exception ;
	 
	 
	 //############## Departement #######################
	 boolean save (Departement dep) throws Exception ;
	 
	 //##############  Region  ##########################
	 boolean save (Region reg) throws Exception ;
	 
	 
	 //############## User  #############################
	 
}
