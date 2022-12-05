package com.klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.Request;
import com.klu.repository.RequestRepository;

@Service
public class requestmanager {

	@Autowired
	RequestRepository rr;
	
	public String requestsending(Request r) {
		try {
	        rr.save(r);
			return  "succefull";
		}
		catch(Exception e) {
			return e.getMessage();
		}
	}
	
	public List<String> ReadRequests(){
		List<String> l = new ArrayList<String>();
		for(Request r : rr.ReadRequests()) {
			l.add(toJsonString(r));
		}
		return l;
	}
	
	public List<String> idRequests(Long id){
		List<String> l = new ArrayList<String>();
		for(Request r : rr.idrequest(id)) {
			l.add(toJsonString(r));
		}
		return l;
	}
	
	public void Delete(long id) {
		Request q = rr.findById(id).get();
		rr.delete(q);
	}
	
	public List<String> requestsshow() {
		List<String> list = new ArrayList<String>();
		for(String e : rr.reqresults())
			list.add(toJsonString(e));
		return list;
	}
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}
	
}
