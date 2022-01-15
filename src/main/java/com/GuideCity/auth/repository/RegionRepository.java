package com.GuideCity.auth.repository;

import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.GuideCity.auth.model.Celebrite;
import com.GuideCity.auth.model.Region;



@Repository
public interface RegionRepository extends CrudRepository<Region,String> {
	

}
