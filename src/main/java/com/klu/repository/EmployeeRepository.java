package com.klu.repository;

import java.util.List; 

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.Employee;
import com.klu.entity.User;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Long>{

	
	@Query("select name from Employee e where e.name = :eid and e.password = :password")
	public String checkemployee(@Param("eid") String name,@Param("password") String password);
	
	@Query("select u from User u where u.billno =:bno")
	public List<User> readbnp(@Param("bno") Long bno);
	
	@Query("select e from Employee e")
	public List<Employee> viewemployee();
}
