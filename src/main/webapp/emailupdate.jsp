<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
body{
color:black;
font-family: 'Muli',sans-serif;
}
#border{
width:100%;
height:80px;
background-color:#f2f2f2;;
position:absolute;
top:0px;
left:0px;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="border">
<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B L</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity bill System</p>
</div>

<h4 style="margin-top:90px;text-align:center;">EMAIL PROCESSING SYSTEM</h4>

<p style="margin-top:-10px;text-align:center;font-size:15px;"> Enter the scno to update the email. </p>
<p style="margin-top:-10px;text-align:center;font-size:15px;"> The OTP send to your email which your provide and sumbit your otp and update it </p>
<p style="margin-top:-10px;text-align:center;font-size:15px;"> If your Not update your Email You cant see ur bills and payments do </p>

<p id="esn" style="margin-top:20px;margin-left:650px;;font-size:15px;font-weight:550;">Enter Scno:-</p>
<input type="text" id="scno" style="margin-left:650px;position:absolute;top:220px;width:200px;height:25px;" onblur="getser()"  maxlength="12">
<div id="box1" style="display:none;">
<p id="e" style="margin-top:35px;margin-left:650px;;font-size:15px;font-weight:550;">Enter Email:-</p>
<input type="email" id="email" style="margin-left:650px;position:absolute;top:280px;width:200px;height:25px;">
<p id="ott" style="margin-top:50px;margin-left:650px;;font-size:15px;font-weight:550;display:none;">Enter OTP:-</p> <button id="go" onclick="doingotp()" style="margin-left:700px;position:absolute;top:325px;width:100px;" >Get otp</button>
<input type="text" id="otp" style="margin-left:650px;position:absolute;top:345px;width:200px;height:25px;display:none;" onblur="getser()"  maxlength="6">
<button id="update" onclick="updateemail()" style="margin-left:700px;position:absolute;top:380px;width:100px;display:none;" >Sumbit</button>
</div>
</body>
<script type="text/javascript">
function getser() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/getservice/"+scno.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText.length == 0 ) {
		         document.getElementById("esn").innerHTML = "Not Found";
		         document.getElementById("esn").style.color = "red";
		         document.getElementById("scno").readOnly = false;
		         document.getElementById("box1").style.display = "none";
			     }
			    else{
			    	document.getElementById("esn").innerHTML = "Found";
			         document.getElementById("esn").style.color = "green";
			         document.getElementById("scno").readOnly = true;
			         document.getElementById("box1").style.display = "block";
			    }	
		}
	};
}

var getotptext;

function doingotp(){
	if(email.value.length > 0)
	{
		document.getElementById("email").style.border = "1px solid green";
		document.getElementById("email").readOnly = true;
		document.getElementById("go").style.display = "none";
		document.getElementById("ott").style.display = "block";
		document.getElementById("otp").style.display = "block";
		document.getElementById("update").style.display = "block";
		var otpran = Math.floor((Math.random() * 1000000) + 1);
		getotptext = otpran;
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/mailsend/"+email.value +"/"+"Welcome to EBL SYSTEM , ONE TIME PASSWORD is " +otpran + " don't share it!";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		alert("OTP send Sucessfull");
	}
	else{
		document.getElementById("email").style.border = "1px solid red";
	}
}

function updateemail(){
	if(otp.value == getotptext){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/updatemail/"+email.value;
		xhtml.open("PUT", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				     if(this.responseText.length == "" ) {
			        alert("email updated successfull");
			        window.location.replace("index.jsp");
				     }
				    else{
				    	alert(this.responseText);
				    }	
			}
		};
	}
	else{
		document.getElementById("ott").innerHTML = "Enter Correct OTP";
		document.getElementById("ott").style.color = "red";
		document.getElementById("otp").style.border = "1px solid red";
	}
}
</script>

</html>