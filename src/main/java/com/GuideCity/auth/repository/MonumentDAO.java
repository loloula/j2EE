package com.GuideCity.auth.repository;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import com.GuideCity.auth.model.Celebrite;
import com.GuideCity.auth.model.Departement;
import com.GuideCity.auth.model.Lieu;
import com.GuideCity.auth.model.Monument;
import com.GuideCity.auth.model.Region;

@Component
public class MonumentDAO implements IMonumentDAO {

	@Autowired
	MonumentRepository monumentRepository ;
	@Autowired
	CelebriteRepository celebriteRepository ;
	@Autowired
	LieuRepository lieuRepository ;
	@Autowired
	DepartementRepository departementRepository ;
	@Autowired
	RegionRepository regionRepository ;

	public boolean save(Monument monument) throws Exception {
		
		monumentRepository.save(monument);
		return false;
	}

	@Override
	public boolean deleteById(String codeM) throws Exception {
		// TODO Auto-generated method stub
		monumentRepository.deleteById(codeM);
		return false;
	}

	
	//#########################""Celebrite#############################"
public boolean save(Celebrite celebrite) throws Exception {
		
	celebriteRepository.save(celebrite);
		return false;
	}

@Override
public boolean deleteById(int numC) throws Exception {
	celebriteRepository.deleteById(numC);
	return false;
}

@Override
public boolean delete(Celebrite cele) throws Exception {
	celebriteRepository.delete(cele);
	return false;
}


//#############  Lieu ###############################################
@Override
public boolean save(Lieu lieu) throws Exception {
	lieuRepository.save(lieu);
	return false;
}


//#############  Departement ###############################################
@Override
public boolean save(Departement dep) throws Exception {
	departementRepository.save(dep);
	return false;
}


//#############  Region ###############################################
@Override
public boolean save(Region reg) throws Exception {
	regionRepository.save(reg);
	return false;
}



	}