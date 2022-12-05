package com.klu.model;

import java.util.ArrayList; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.*;
import com.klu.repository.BillsRepository;
import com.klu.repository.UserRepository;

@Service
public class usermanager {

	@Autowired
	UserRepository ur;
	
	@Autowired
	BillsRepository br;
	
	public String Login(Long ss,String pass) {
		return ur.UserLogin(ss,ss, pass);
	}
	
	public List<String> readbills(String name){
		List<String> list = new ArrayList<String>();
		for(bills u: br.Readbills(name))
			list.add(toJsonString(u));
		return list;
		
	}
	
	public List<String> getdiss(long scno){
		List<String> list = new ArrayList<String>();
		for(bills u: br.getdiss(scno))
			list.add(toJsonString(u));
		return list;
		
	}
	
	public List<String> getbills(Long id){
		List<String> list = new ArrayList<String>();
		for(bills u: br.getbills(id))
			list.add(toJsonString(u));
		return list;
		
	}
	
	public void deletebill(Long id) {
		bills b = br.findById(id).get();
		br.delete(b);
	}
	
	public void deleteuser(long scno) {
		ur.Deleteuser(scno);
	}
	
	public int readdues(Long eid) {
		try {
			return ur.countdues(eid);
		}
		catch(Exception e) {
			return -1;
		}
	}
	
	public String phnopass(Long phn) {
		return (String) ur.Phonenumber(phn);
	}
	
	public Long phnopass2(Long phn) {
		return  ur.Phonenumber2(phn);
	}
	
	public String emailget(long phn) {
		return  ur.email(phn);
	}
	
	public String namerequest(Long bno) {
		return ur.name(bno);
	}
	
	public String updatepassword(Long id,String pass) {
		User u = ur.findById(id).get();
		u.setPassword(pass);
		ur.save(u);
		return "sucessfully upadated";
	}
	
	public String updatePhonenumber(Long id,Long Number) {
		User u = ur.findById(id).get();
		u.setPhnumber(Number);
		ur.save(u);
		return "succesfull";
	}
	
	public Long ID(Long scno) {
		return ur.ID(scno);
	}
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}
	
	public long getid(Long bno) {
		return ur.getid(bno);
	}
	
	public String updatemail(long id,String email) {
		try {
			User u = ur.findById(id).get();
			u.setEmail(email);
			ur.save(u);
			return null;
		}
		catch(Exception e) {
			return "error updation";
		}
	}
	
	public String getservice(long eid) {
		return ur.bills(eid);
	}
	
}
