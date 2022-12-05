package com.klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.repository.AdminRepository;
import com.klu.repository.BillsRepository;
import com.klu.repository.RequestRepository;

@Service
public class adminmanager {
	
	@Autowired
	AdminRepository ar;
	
	@Autowired
	BillsRepository br;
	
	@Autowired
	RequestRepository rr;
	
	public String loginadmin(String name,String pass) {
		return ar.loginadmin(name, pass);
	}
	
	public String getname(String name) {
		return ar.name(name);
	}
  
	public int countdue() {
		return br.dues();
	}
	
	public double totalcost() {
		return br.bcost();
	}
	
	public double totalrequests() {
		return rr.getcountreq();
	}
	
	
}
