<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
body{
     font-family: 'Muli',sans-serif;
 }
#div1{
width:101%;
height:80px;
background-color:#21AB90;
position:absolute;
top:0px;
left:-10px;
}

#div2{
position:absolute;
top:80px;
left:0px;
}
#div3{
width:200px;
height:500px;
position:absolute;
top:300px;
left:650px;
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
<div id="div2">
<ul>
<li>Hello , Customer Welcome to EBS System Our Employees are works 24/7 .There is no interputions in our website , If there is an interpution our team management will sort by 24hours.By the security purpose if there 
  an clash on payments, the team managment will sort by below 24hours.</li>
  <li>Bill collectors are a part of a company’s financial department. They are responsible for keeping track of unpaid bills and contacting customers to collect payment. They must 
  be familiar with typical financing options, both through the collecting   company and otherwise, in order to help customers pay their bills however they can.</li>
  <li>If the customer want to change or link with the scno(service number) there are mainy two paramaters:-</li>
  <ol><li>Check if the scno is there are not.If not simply ignore our employer's will work on it and there were update it.</li>
  <li>Enter your mobile number which you wnat to change / link .</li>
  <li>Not option , If you want send any message to employee you can fill it.</li>
  </ol>
  <li>And , click submit the Request of ur's is send to ebs workers there will update it by 24hours below.</li>
</ul>
</div>
<div id="div3">
<h4 id="esc" style="position:absolute;top:5px;font-size:10px;left:2px;" >Enter scno:-</h4>
<input type="text" id="sno" style="width:200px;height:25px;position:absolute;top:30px;" maxlength="12" onblur="scno()" />
<div id="ver" style='display:none;'>
<h4  style="position:absolute;top:55px;font-size:10px;left:2px;" >Enter Name:-</h4>
<input id="n" type="text" style="width:200px;height:25px;position:absolute;top:80px;" maxlength="20" />
<h4 id="eph" style="position:absolute;top:105px;font-size:10px;left:2px;" >Enter phonenumber:-</h4>
<input id="phno" type="text" style="width:200px;height:25px;position:absolute;top:130px;" maxlength="10" />
<h4 style="position:absolute;top:155px;font-size:10px;left:2px;" >Leave any Comment:-</h4>
<textarea id="comment" style="width:200px;height:55px;position:absolute;top:180px;"></textarea>
<button  style="width:208px;height:25px;position:absolute;top:245px;background-color:black;color:white;" onclick="requesting()">Sumbit</button>
</div>
</div>
</body>
<script type="text/javascript">
function scno(){
	if(sno.value.length == 12){		
		document.getElementById("ver").style.display="block";
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/reterivename/"+sno.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				if(this.responseText != "")
				{
					document.getElementById("esc").innerHTML = "Found";
					document.getElementById("n").value = this.responseText;
					document.getElementById("esc").style.color = "green";
					document.getElementById("sno").readOnly = true;
					document.getElementById("sno").style.border = "1px solid green";
					document.getElementById("n").readOnly = true;				
				}
				else{
					document.getElementById("n").value = "";
					document.getElementById("sno").readOnly = false;
					document.getElementById("esc").innerHTML = "Not Found";
					document.getElementById("esc").style.color = "red";
					document.getElementById("sno").style.border = "1px solid red";
					document.getElementById("n").readOnly = false;	
					
					}
			}
		};
	}
	else{
		document.getElementById("esc").style.color = "red";
		document.getElementById("sno").style.border = "1px solid red";
		document.getElementById("ver").style.display = "none";
		document.getElementById("esc").innerHTML = "Enter Valid 12 scno:-"
	}
	
}

function requesting(){
	if(phno.value.length == 10){
		document.getElementById("phno").style.border="1px solid green";
		document.getElementById("eph").style.color="black";
		document.getElementById("eph").innerHTML="Enter number:-";
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/requestsending";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');	
		xhtml.send(JSON.stringify({
				scno : sno.value,
				name : n.value,
				phno : phno.value,
				comment : comment.value
			
			}));
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				alert("sumbited successfull");
				window.location.replace("userhome.jsp");
			}
		};
	}
	else{
		document.getElementById("eph").innerHTML="Enter 10 digits number!";
		document.getElementById("phno").style.border="1px solid red";
		document.getElementById("eph").style.color="red";
	}
}


</script>


</html>