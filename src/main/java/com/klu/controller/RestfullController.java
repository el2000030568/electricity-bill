package com.klu.controller;

import java.util.List;   

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.entity.*;
import com.klu.model.HistoryManager;
import com.klu.model.employeemanager;
import com.klu.model.requestmanager;
import com.klu.model.usermanager;

@RestController
@RequestMapping("/api")
public class RestfullController {
	@Autowired
	employeemanager em;
	
	@Autowired
	requestmanager rm;
	@Autowired
	usermanager um;
	@Autowired
	HistoryManager hm;
	public static String empname;
	public static Long serviceno;
	public static long id;
	public static long rid;
	
	@GetMapping("/employeelogin/{ename}/{epass}")
	public String emlogin(@PathVariable("ename") String name,@PathVariable("epass") String pass) {
		String p =  em.Checkemp(name, pass);
		if(p!=null) {
			empname = p;
			return "succesfull login";
		}
		else
			return "Keep login";
	}
	
	@GetMapping("/employeeHome")
	public String emphome() {	
		return empname;
	}
	
	@PostMapping("/generate")
	public String generateemp(@RequestBody User u) {
		String p = em.saveemp(u);
		if(p!=null)
			return "succesfully generated";
		else
			return "Error!";
	}
	@GetMapping("/bills/{scno}")
	public String bills(@PathVariable("scno") Long billno) {
		String sco = em.bills(billno);
		if(sco!=null) {
			serviceno = Long.parseLong(sco);
			return sco;
		}
		else
			return "Not Found";
	}
	
	@GetMapping("/loadusers")
	public String participants()
	{
		return em.readbnp(serviceno).toString();
	}
	
	@PostMapping("/billit")
	public String billit(@RequestBody bills b) {
		double uts = b.getUnits();
		double cost = 1;
		if(uts >=0 && uts <=30) {
			cost = uts * 1.90;
		}
		else if(uts >=31 && uts <=75) {
			cost = uts * 3.00;
		}
		else if(uts >=76 && uts <=125) {
			cost = uts * 4.50;
		}
		else if(uts >=126 && uts <=225) {
			cost = uts * 6.00;
		}
		else if(uts >=226 && uts <=400) {
			cost = uts * 8.75;
		}
		else {
			cost = uts * 9.75;
		}
		b.setCost(cost);
		String p = em.billit(b);
		if(p==null)
		return "succefully billed";
		else
			return p; 
		
	}
	
	@GetMapping("/serviceno/{sn}")
	public String sn(@PathVariable("sn") Long sn) {
		return em.paymentn(sn).toString();
	}
	
	@GetMapping("/id/{pno}")
	public String uid(@PathVariable("pno") long id1) {
		id = id1;
		return "Sucessfull!";
	}
	
	@GetMapping("/readbill")
	public String readbill() {
		return em.uidd(id).toString();
	}
	
	@PutMapping("/updatebill/{cc}/{tu}/{a}/{ed}/{gc}/{i}/{oc}/{sc}/{c}")
	public String updatebill(@PathVariable("cc") int cc,@PathVariable("tu") double tu,@PathVariable("a") double a,@PathVariable("ed") double ed,@PathVariable("gc") double gc,@PathVariable("i") double i,@PathVariable("oc") double oc,@PathVariable("sc") double sc,@PathVariable("c") double c) {
		double cost = 0;
		//double ba = Double.parseDouble(c);
	    cost = cc + 10 +tu + a + ed+ gc + i + oc + sc + c;
		int fc = 10;
		String p = em.updatebill(fc,cost,id,cc,tu, a, ed, gc, i, oc,sc,true);
		if(p=="succesfull") {
			return "charged billes";
		}
		else
			return p;
	}
	
	@GetMapping("/idrequest/{id}")
	public String idrequest(@PathVariable("id") Long id) {
		rid = id;
		return rm.idRequests(id).toString();
	}
	
	@DeleteMapping("/deleterequest/{id}")
	public void deleterequest(@PathVariable("id") long id) {
		rm.Delete(id);
	}
	
	@GetMapping("/getuser/{scno}")
	public String getdetails(@PathVariable("scno") long scno) {
		return um.getdiss(scno).toString();
	}
	
	@GetMapping("/countdues/{scno}")
	public int countdues(@PathVariable("scno") long scno) {
		return um.readdues(scno);
	}
	
	@DeleteMapping("/deleteuserwithscno/{scno}")
	public void deletewithscno(@PathVariable("scno") long scno) {
	   hm.deletehistory(scno);
	   um.deleteuser(scno);
	   em.deletebill(scno);
	}
	
	@DeleteMapping("/deletebyid/{id}")
	public void deletebyid(@PathVariable("id") long id) {
		em.deletebyid(id);
	}
}
