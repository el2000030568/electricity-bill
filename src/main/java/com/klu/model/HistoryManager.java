package com.klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.History;
import com.klu.repository.HistoryRepository;

@Service
public class HistoryManager {
		
		@Autowired
		HistoryRepository hr;
		
		public String gethistory(History h) {
			try {
			 hr.save(h);
			 return "successfull";
			}
			catch(Exception e) {
				return "error";
			}
		} 
		
		public List<String> readnp(Long payno){
			List<String> l = new ArrayList<String>();
			for(History h : hr.readnp(payno))
				l.add(toJsonString(h));
			return l;
			
		}
		
		public List<String> historylist(Long sno){
			List<String> l = new ArrayList<String>();
			for(History h : hr.listhistory(sno))
				l.add(toJsonString(h));
			return l;
			
		}
		
		
		public String toJsonString(Object obj)
		{
			GsonBuilder gbuilder = new GsonBuilder();
			Gson gson = gbuilder.create();
			return gson.toJson(obj);
		}
		
		public void deletehistory(long scno) {
			hr.deletehistory(scno);
		}
		
}
