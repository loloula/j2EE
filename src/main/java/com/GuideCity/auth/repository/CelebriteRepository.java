package com.GuideCity.auth.repository;

import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.GuideCity.auth.model.Celebrite;



@Repository
public interface CelebriteRepository extends CrudRepository<Celebrite,Integer> {
	

}
