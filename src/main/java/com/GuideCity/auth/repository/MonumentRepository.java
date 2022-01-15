package com.GuideCity.auth.repository;

import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.GuideCity.auth.model.Monument;



@Repository
public interface MonumentRepository extends CrudRepository<Monument,String> {
	

}
