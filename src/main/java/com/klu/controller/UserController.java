package com.klu.controller;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.amazonaws.services.sns.AmazonSNSClient;
import com.amazonaws.services.sns.model.AmazonSNSException;
import com.amazonaws.services.sns.model.MessageAttributeValue;
import com.amazonaws.services.sns.model.PublishRequest;
import com.klu.entity.*;
import com.klu.model.HistoryManager;
import com.klu.model.Mailsender;
import com.klu.model.requestmanager;
import com.klu.model.usermanager;
import com.klu.repository.RequestRepository;



@RestController
@RequestMapping("/user")
public class UserController {

	
	
	public static final String Topic_ARN = "arn:aws:sns:us-east-1:932627786011:sms-user";

	@Autowired
	private AmazonSNSClient amazsonSNSClient;
	
	@Autowired
	usermanager um;
	
	@Autowired
	HistoryManager hm;
	
	@Autowired
	requestmanager rm;
	
	@Autowired
	Mailsender ms;
	
	public static String name;
	public static Long sno;
	public static Long iid;
	public static Long payno;
	public static long fp;
	
	
	@GetMapping("/userlogin/{ss}/{pass}")
	public String Login(@PathVariable("ss") Long ss,@PathVariable("pass") String pass) {
		String p = um.Login(ss, pass);
		if(p!=null) {
			name = p;
			sno = ss;
			return p;
		}
		else
			return "Error Login";
	}
	
	@GetMapping("/username")
	public String username() {
		return name;
	}
	
	@GetMapping("/logout")
	public void logout() {
		name = null;
		sno = null;
		iid = (long) 0;
	}
	
	@GetMapping("/getdetails")
	public String getdetails() {
		return um.readbills(name).toString();
	}
	@GetMapping("/readbills/{id}")
	public String readuserid(@PathVariable("id") Long id) {
		iid = id;
		return um.getbills(id).toString();
	}
	
	@GetMapping("/userbillshow")
	public String userbillshow() {
		return um.getbills(iid).toString();
	}
	
	
	@GetMapping("/fecthname")
	public String fecthname()
	{
		return hm.readnp(payno).toString();
	}
	@PostMapping("/history/{eid}")
	public  String History(@PathVariable("eid") Long id,@RequestBody History h) {
		payno = id;
		return hm.gethistory(h);
	}
	
	@DeleteMapping("/delete/{eid}")
	public void deletebill(@PathVariable("eid") Long id) {
		um.deletebill(id);
	}
	
	@GetMapping("/historylist") 
	public String historylist() {
		return hm.historylist(sno).toString();
	}
	
	@GetMapping("/historyshow/{payno}")
	public  Long Historyshow(@PathVariable("payno") Long id) {
		payno = id;
	    return id;
	}
	
	@GetMapping("/countdues")
	public int countdues() {
		return um.readdues(sno);
	}

	@GetMapping("/phnotp/{phn}")
	public String Phonenumber(@PathVariable("phn") Long phn) {
		String p = um.phnopass(phn);
		iid = um.phnopass2(phn);
		if(p!=null) {
			fp = Long.parseLong(p);
			return p;
		}
		else {
			return "NOT-F";
		}
	}
	
	@GetMapping("/send/{meassage}/{phonenumber}")
	public String sendMeassage(@PathVariable("meassage") String message,@PathVariable("phonenumber") String phonenumber) {
		try {
		Map<String,MessageAttributeValue> smsAttributes = new HashMap<>();
		smsAttributes.put("AWS.SNS.SMS.SenderID" , new MessageAttributeValue()
				.withStringValue("mySenderID")
				.withDataType("String"));
		smsAttributes.put("AWS.SNS.SMS.MaxPrice" , new MessageAttributeValue()
				.withStringValue("0.50")
				.withDataType("Number"));
		smsAttributes.put("AWS.SNS.SMS.SMSType" , new MessageAttributeValue()
				.withStringValue("Promotional")
				.withDataType("String"));
		
		PublishRequest publicRequest = new PublishRequest();
		publicRequest.setMessage(message);
		//publicRequest.set("mogilisettlokesh@gmail.com");
		publicRequest.setPhoneNumber(phonenumber);
		publicRequest.setMessageAttributes(smsAttributes);
		amazsonSNSClient.publish(publicRequest);	
		return "Message Published";
		}
		catch(AmazonSNSException e) {
			return e.getMessage();
		}		
	}
	
	@PutMapping("/updatepassword/{password}")
	public String updatepassword(@PathVariable("password") String pass) {
		return um.updatepassword(iid, pass);
	}
	
	@GetMapping("/reterivename/{bno}")
	public String requestphn(@PathVariable("bno") Long bno) {
		return um.namerequest(bno);
	}
	
	@PostMapping("/requestsending")
	public String Requestsending(@RequestBody Request r) {
		return rm.requestsending(r);
	}
	
	@GetMapping("/employeeView")
	public String ReadRequesting(){
		return rm.ReadRequests().toString();
	}
	
	@PutMapping("/updatenumber/{sno}/{phn}")
	public String updatephn(@PathVariable("sno") Long servicenumber,@PathVariable("phn") Long phonenumber) {
		iid = um.ID(servicenumber);
		return um.updatePhonenumber(iid, phonenumber);
	}
	
	@GetMapping("/Password/{pass}")
	public String currentpass(@PathVariable("pass") String pass) {
		String p = um.Login(sno, pass);
		if(p!=null) {
			return p;
		}
		else
			return null;
	}
	
	@PutMapping("/updateuser/{password}")
	public String updateuser(@PathVariable("password") String pass) {
		long id = um.getid(sno);
		return um.updatepassword(id, pass);
	}
	
	@GetMapping("/mailsend/{email}/{body}")
	public void Sendmail(@PathVariable("email") String email,@PathVariable("body") String body) {
		ms.sendEmail(email,"EBL OTP",body);
	}
	
	@GetMapping("/mailpayement/{email}/{body}")
	public void paymetmail(@PathVariable("email") String email,@PathVariable("body") String body) {
		ms.sendEmail(email,"Payment status",body);
	}
	
	
	public static long sv;
	
	@GetMapping("/getservice/{eid}")
	public String getservice(@PathVariable("eid") long eid) {
		String p = um.getservice(eid);
		if(p!=null) {
		sv = Long.parseLong(p);
		return p;
		}
		else {
			return null;
		}
	}
	
	@PutMapping("/updatemail/{email}")
	public String updateemail(@PathVariable("email") String email) {
		long id = um.ID(sv);
		return um.updatemail(id, email);
	}
	
	@GetMapping("/getemail")
	public String getemail() {
		return um.emailget(sno);
	}
	
	
}
