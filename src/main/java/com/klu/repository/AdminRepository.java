package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin,Long>{
	
	    @Query("select a.name from Admin a where a.name =:name and a.password =:pass")
	    public String loginadmin(@Param("name") String name,@Param("pass") String pass);
	    
	    @Query("select name from Admin a where a.name =:name")
	    public String name(@Param("name") String name);

}
