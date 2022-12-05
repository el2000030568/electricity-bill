package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.Request;

@Repository
public interface RequestRepository extends JpaRepository<Request,Long>{
	
	@Query("select r from Request r")
	public List<Request> ReadRequests();
	
	@Query("select r from Request r where r.id =:id")
	public List<Request> idrequest(@Param("id") Long id);
	
	@Query("select DISTINCT b.name , count(*) from Request b group by b.name")
	 public List<String> reqresults();
	
	@Query("select count(*) from Request b")
	public int getcountreq();
	
}
