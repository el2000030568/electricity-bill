package com.klu.repository;


import javax.transaction.Transactional; 

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.klu.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User,Long>{
	
	@Query("select id from User u where u.billno =:bno")
	public long getid(@Param("bno") Long bno);
	
	@Query("select billno from User u where u.billno =:eid")
	public String bills(@Param("eid") Long eid);
	
	@Query("select name from User u where u.password =:pass and (u.billno =:ss or u.phnumber =:ss1)")
	public String UserLogin(@Param("ss1") Long ss1,@Param("ss") Long ss,@Param("pass") String pass);
	
	@Query("SELECT COUNT(b) FROM bills b where b.servicenumber =:eid")
	public int countdues(@Param("eid") Long eid);
    
	@Query("select billno from User u where u.phnumber =:phn")
	public String Phonenumber(@Param("phn") Long phn);
	
	@Query("select id from User u where u.phnumber =:phn")
	public Long Phonenumber2(@Param("phn") Long phn);
	
	@Query("select email from User u where u.billno =:phn")
	public String email(@Param("phn") Long phn);

	@Query("select name from User u where u.billno =:bno")
	public String name(@Param("bno") Long bno);
	
	@Query("select id from User u where u.billno =:bno")
	public Long ID(@Param("bno") Long bno);
	
	@Transactional
	@Modifying
	@Query("delete from User u where u.billno =:bno")
	public void Deleteuser(@Param("bno") long bno);
	
}
