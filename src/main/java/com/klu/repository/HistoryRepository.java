package com.klu.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;

import com.klu.entity.History;

@Repository
public interface HistoryRepository extends JpaRepository<History,Long>{
	
	@Query("select h from History h where h.paymentno =:payno")
	public List<History> readnp(@Param("payno") Long payno);
	
	@Query("select h from History h where h.servicenumber =:sno")
	public List<History> listhistory(@Param("sno") Long sno);
	
	@Transactional
	@Modifying
	@Query("delete from History h where h.servicenumber =:scno")
	public void deletehistory(@Param("scno") long bno);
	
}
