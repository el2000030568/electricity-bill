package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.klu.entity.Employee;
import com.klu.model.FileManager;
import com.klu.model.adminmanager;
import com.klu.model.employeemanager;
import com.klu.model.requestmanager;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
    adminmanager am;
	
	@Autowired
	employeemanager em;
	
	@Autowired
	FileManager FM;
	
	@Autowired
	requestmanager rm;
	
	public static String adminname;
	
	@GetMapping("/loginadmin/{name}/{pass}")
	public String login(@PathVariable("name") String name,@PathVariable("pass") String pass)
	{
		 String p = am.loginadmin(name, pass);
		 if(p!=null) {
			 adminname = p;
			 return p;
		 }
		 else {
			 return null;
		 }
	}
	
	@GetMapping("/getname")
	public String getname() {
		return adminname;
	}

	@PostMapping("/Addemployee")
	public String Addemployee(@RequestBody Employee e) {
		return em.Save(e);
	}
	
	@GetMapping("/viewemployee")
	public String Viewemployee() {
		return em.viewemployee().toString();
	}
	
	@DeleteMapping("/deleteemployee/{id}")
	public String deleteemployee(@PathVariable("id") long id) {
		return em.deleteemployee(id);
	}
	
	@PostMapping("/upload")
	public String upload(@RequestParam("myfile") MultipartFile file)
	{
		return FM.uploadFile(file);
	}
	
	@GetMapping("/status")
	public String status()
	{
		return FM.uploadStatus();
	}
	
	@GetMapping("/getfiles")
	public String getfiles() {
		return FM.getFiles().toString();
	}
	
	@DeleteMapping("/deletefile/{filename}")
	public String deletefile(@PathVariable("filename") String fn) {
		return FM.deletefile(fn);
	}
	
	@GetMapping("/viewrequests")
	public String ReadRequesting(){
		return rm.ReadRequests().toString();
	}
	
	@GetMapping("/logout")
	public String logout() {
		adminname = null;
		return "your logout!";
	}
	
	@GetMapping("/billsresult")
	public String billsresult() {
		return em.Billsshow().toString();
	}
	
	@GetMapping("/reqresult")
	public String reqresult() {
		return rm.requestsshow().toString();
	}
	
	@GetMapping("/dues")
	public int dues() {
		return am.countdue();
	}
	
	@GetMapping("/getcounts")
	public int getcount() {
		return (int) am.totalrequests();
	}
	
	
	@GetMapping("/tcost")
	public double tcost() {
		return am.totalcost();
	}
	
	
}
