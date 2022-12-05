package com.klu.model;

import java.util.ArrayList;  
import java.util.List;
import java.util.Optional;

import org.hibernate.jdbc.Expectations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.*;
import com.klu.repository.BillsRepository;
import com.klu.repository.EmployeeRepository;
import com.klu.repository.UserRepository;

@Service
public class employeemanager {
	@Autowired
	EmployeeRepository ep;
	
	@Autowired
	UserRepository ur;
	
	@Autowired
	BillsRepository br;
	
	public String Checkemp(String name,String pass) {
		String p = ep.checkemployee(name, pass);
		return p;
	}
	
	public String saveemp(User u) {
		try {
		ur.save(u);
		return "successfull generated!";
		}
		catch(Exception e) {
			return null;
		}
	}
	
	public List<String> readbnp(Long bno){
		List<String> list = new ArrayList<String>();
		for(User u:ep.readbnp(bno))
			list.add(toJsonString(u));
		return list;
	}
	 
	
	public String bills(Long billno) {
		return ur.bills(billno);
	}
	
	public String billit(bills b) {
		try {
		br.save(b);
		return null;
		}
		catch(Exception e) {
		return e.getMessage();
		}
	}
	
	public List<String> paymentn(Long sn) {
		List<String> list = new ArrayList<String>();
		for(bills u:br.readpayment(sn))
			list.add(toJsonString(u));
		return list;
	}
	public List<String> uidd(long id) {
		List<String> list = new ArrayList<String>();
		for(bills u:br.uid(id))
			list.add(toJsonString(u));
		return list;
	}
	
	public String updatebill(int fc,double ba,long id,int cc,double tu,double a,double ed,double gc,double i,double oc,double sc, boolean s) {
		bills b = br.findById(id).get();
		try {
		b.setFixedcharges(fc);
		b.setBILL_AMT(ba);
		b.setCustomercharges(cc);
		b.setTrue_up(tu);
		b.setAdjustment(a);
		b.setElectricityduty(ed);
		b.setGridcharges(gc);
		b.setInterestoned(i);
		b.setOthercharges(oc);
		b.setStatus(s);
		b.setSurcharge(sc);
		br.save(b);
		return "succesfull";
		}
		catch(Exception e)
		{
			return e.getMessage();
		}
	} 
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}
	
	
	public void deletebyid(long id) {
		bills b = br.findById(id).get();
		br.delete(b);
	}
	
	public void deletebill(long scno) {
		br.deletebills(scno);
	}
	
	public String Save(Employee e) {
		try {
			ep.save(e);
			return "successfull";
		}
		catch(Exception exception) {
			return "already Created ";
		}
	}
	
	public List<String> viewemployee() {
		List<String> list = new ArrayList<String>();
		for(Employee e : ep.viewemployee())
			list.add(toJsonString(e));
		return list;
	}
	
	public String deleteemployee(Long id) {
		try {
			Employee e = ep.findById(id).get();
			ep.delete(e);
			return null;
		}
		catch(Exception e) {
			return "no id found";
		}
	}
	
	public List<String> Billsshow() {
		List<String> list = new ArrayList<String>();
		for(String e : br.results())
			list.add(toJsonString(e));
		return list;
	}
	
}
