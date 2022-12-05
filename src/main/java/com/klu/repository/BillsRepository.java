package com.klu.repository;

import java.util.List;  

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import com.klu.entity.bills;

@Repository
public interface BillsRepository extends JpaRepository<bills,Long>{

	  @Query("select u from bills u where u.servicenumber =:sv")
	  public List<bills> readpayment(@Param("sv") Long servicenumber);
	  
	  @Query("select b from bills b where b.id =:id")
	  public List<bills> uid(@Param("id") long id);
	  
	  @Query("select b from bills b where b.name =:name")
	  public List<bills> Readbills(@Param("name") String name);
	  
	  @Query("select b from bills b where b.servicenumber =:scno")
	  public List<bills> getdiss(@Param("scno") long scno);
	  
	  @Query("select b from bills b where b.id =:id")
	  public List<bills> getbills(@Param("id") Long id);
	  
	  @Transactional
	  @Modifying
	  @Query("delete from bills h where h.servicenumber =:scno")
	 public void deletebills(@Param("scno") long bno);
	  
	 @Query("select DISTINCT b.name , count(*) from bills b group by b.name")
	 public List<String> results();
	 
	 @Query("select count(*) from bills b")
	 public int dues();
	 
	 @Query("select sum(cost) from bills b")
	 public double bcost();
	 
}    
