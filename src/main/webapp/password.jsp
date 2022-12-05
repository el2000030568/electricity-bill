<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">

#div1{
width:101%;
height:80px;
background-color:#21AB90;
position:absolute;
top:0px;
left:-10px;
}
#login{
 width:400px;
 height:500px;
 border-radius:10px;
  border-top:60px solid black;
  position:absolute;
  top:130px;
  left:600px;
  overflow: auto;    
}

</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="div1">
		<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B L</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity bill System</p>
</div>

<div id="login">
	   <h4 style="font-size:10px;color:black;position:absolute;top:50px;left:115px;">Enter phno (which is provided for ebs ):-</h4>
       <h3 style='font-size:20px;color:black;position: absolute;top:10px;left:175px;'>Login <i class="fa-solid fa-lock" style='color:black'></i></h3>
	   <input id="phn" type="text"  style='position:relative;top:80px;left:110px;width:200px;height:30px;' maxlength="10" />
	   <button id="b1" style='display:block;position:absolute;top:120px;left:150px;width:150px;height:30px;background-color:#F5F112;border:none;border-radius:4px;font-weight:600;' onclick="getph()">Get otp</button>
       <div id="otp-panel" style="display:none;">
       <h4 style="font-size:10px;color:green;position:absolute;top:110px;left:115px;">Enter OTP :-</h4>
       <input id="otp" type="text"  style='position:absolute;top:138px;left:110px;width:100px;height:20px;' maxlength="6"  />
       <input onclick="OTPVER()" type="button" id="b2" style='display:block;position:absolute;top:142px;left:230px;width:110px;height:20px;background-color:green;border:none;border-radius:4px;font-weight:520;color:#F5F112;' value="Verify" />
       </div>	   
       <div id="update" style="position:absolute;top:120px;left:0px;display:none;">
           <h4 id="pass" style="font-size:10px;color:black;position:absolute;top:50px;left:115px;">Enter Password :-</h4>
           <input onblur="validatepassword()"  type="password" id="password" style='position:relative;top:80px;left:110px;width:200px;height:30px;'  maxlength="12" />
            <h4 id="cpass" style="display:none;font-size:10px;color:black;position:absolute;top:110px;left:110px;">Confrim Password :-</h4>
           <input onblur="validateconfrimpassword()" type="password" id="confrim" style='display:none;position:relative;top:100px;left:110px;width:200px;height:30px;' maxlength="12" />
           <button onclick="updatepassword()" id="bu1" style="display:none;position:absolute;top:185px;left:150px;width:150px;height:25px;background-color:white;border-radius:2px;" >Update</button>
           
       </div>
</div>

</body>
<script type="text/javascript">

 var otptext;
 
function getph() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/phnotp/"+phn.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText=="NOT-F") {
			     alert("Wrong number!");
			     }
			    else{
			    	document.getElementById('phn').readOnly = true;
			    	document.getElementById('b1').style.display = 'none';
			    	document.getElementById('otp-panel').style.display = 'block';
		    	    OTPGEN();
			    }
				
		}
	};
}

function OTPGEN(){
	var xhtml = new XMLHttpRequest();
	var otpran = Math.floor((Math.random() * 1000000) + 1);
	otptext = otpran;
	var url = "http://localhost:8080/user/send/welcome to ebs,your otp is "+otpran+"./+91"+phn.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			alert("send sucessfully!");
		}
	};
}
function otpsend(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/mailsend/"+phn.value +"/"+"Welcome to EBL SYSTEM , ONE TIME PASSWORD is " +otptext + " don't share it!";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	alert("send sucessfully!");
}

function OTPVER(){
	if(otp.value == otptext)
		{
		document.getElementById("b2").style.display = "none";
		document.getElementById("otp").readOnly = true;
		document.getElementById("update").style.display ='block';
		}
	else{
		document.getElementById("b2").value = "Error";
		document.getElementById("b2").style.background = "Red";
	}
		
}

function validatepassword(){
	if(password.value.length >= 6){
		document.getElementById("cpass").style.display = "block";
		document.getElementById("confrim").style.display = "block";
		document.getElementById("pass").style.color = "green";
		document.getElementById("password").style.border = "1px solid green";
		document.getElementById("pass").innerHTML = "Enter password :";
		return true;
	}
	else{
		document.getElementById("cpass").style.display = "none";
		document.getElementById("confrim").style.display = "none";
		document.getElementById("pass").style.color = "red";
		document.getElementById("password").style.border = "1px solid red";
		document.getElementById("pass").innerHTML = "Enter min 6";
		document.getElementById("bu1").style.display = "none";
		return false;
	}
}

function validateconfrimpassword(){
	if(password.value == confrim.value ){
		document.getElementById("bu1").style.display = "block";
		document.getElementById("cpass").style.color = "green";
		document.getElementById("confrim").style.border = "1px solid green";
		document.getElementById("cpass").innerHTML = "Matched :";
		return true;
	}
	else{
		document.getElementById("bu1").style.display = "none";
		document.getElementById("cpass").style.color = "red";
		document.getElementById("confrim").style.border = "1px solid red";
		document.getElementById("cpass").innerHTML = "Not Matched";
		return false;
	}
}

function updatepassword(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/updatepassword/"+password.value;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			  alert("successfuly updated!");
			  window.location.replace("index.jsp");
		}
	};
}


</script>

</html>