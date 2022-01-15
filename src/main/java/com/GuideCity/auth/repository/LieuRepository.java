package com.GuideCity.auth.repository;

import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.GuideCity.auth.model.Celebrite;
import com.GuideCity.auth.model.Lieu;



@Repository
public interface LieuRepository extends CrudRepository<Lieu,String> {
	

}
