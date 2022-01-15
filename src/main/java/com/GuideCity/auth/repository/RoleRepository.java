package com.GuideCity.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.GuideCity.auth.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
