<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
body{
     background-color: black;
     font-family: 'Muli',sans-serif;
	 color:white;
 }
#empname{
color : rgb(255, 255, 255);
font-size:20px;
position: absolute;
top: 1px;
left:770px;
}
#h1{
  color: white;
  position: absolute;
  top:0px;
  left:650px;
}
#h3{
    color:white;
	position: relative;
	top:40px;
    left:650px;
}
.div1{
	width:270px;
	height:200px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 200px;
	left:300px;
	border-top:50px solid rgb(173, 172, 172);

}
.div2{
	width:270px;
	height:200px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 200px;
	left:600px;
	border-top:50px solid rgb(173, 172, 172);

}
.div3{
	width:270px;
	height:200px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 200px;
	left:900px;
	border-top:50px solid rgb(173, 172, 172);

}
input{
	width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:80px;
	left:40px;
}
#B1{
	width:100px;
	height: 30px;
	background-color: rgb(109, 111, 112);
	position: absolute;
	top: 130px;
	left:80px;
	border-radius:4px;

}
#B2{
	width:100px;
	height: 30px;
	background-color: rgb(109, 111, 112);
	position: absolute;
	top: 100px;
	left:88px;
	border-radius:4px;
	border:2px solid rgb(0, 0, 0);
}
#B2:hover{
	background-color:rgb(0, 0, 0);
	color:white;
	transition: 1.1s;
}
#B1:hover{
	background-color: black;
	color:white;
	transition: 1.1s;
}
#i11{
	width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:65px;
	left:40px;
}
#i12{
	width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:115px;
	left:40px;
}
#bu{
	width:100px;
	height: 30px;
	background-color: rgb(100, 100, 97);
	position: absolute;
	top: 150px;
	left:88px;
	border-radius:4px;
	border:2px solid rgb(0, 0, 0);
}
#bu:hover{
	background-color: black;
	color: white;
}
</style>
<title>Insert title here</title>
</head>
<body onload="name()">
        <h2 id="h1">HOWDY ! </h2> <p id="empname"></p>
        <h3 id="h3">Welcome To </h3>
		<a href="" style='color:white;font-size:20px;position:absolute;top:140px;left:680px;'><i class="fa-solid fa-house"></i> <p style="position:absolute;top:-20px;left:30px;width:200px;" >Employee Home</p></a>
		<i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:58px;left:770px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
       <h3 style='position: absolute;top:80px;left:600px'>Your Connected to database <i class="fa-solid fa-database"></i></h3>
        <div class="div1">
			<i class='fab fa-gg' style='font-size:20px;color:rgb(35, 35, 35);position: absolute;top:-40px;left:100px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
			<p style='color:rgb(12, 12, 12);position: absolute;top:-35px;left:81px;'>database bills <i class="fa-solid fa-database"></i> </p>
			<i class="fa-solid fa-user" style='color:black;position:absolute;left:120px;top:30px;font-size:25px;'></i>
			<label style='position:absolute;top:65px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i1" placeholder="Enter Scno" onblur="return block()" />
            <p style='color:red;position: absolute;top: 105px;left:100px;font-size:10px;' id="not!"></p>
            <p style='color:red;position: absolute;top: 155px;left:100px;font-size:10px;' id="not1!"></p>
			<button id="B1" onclick="scno()">Bills</button>
		</div>
		<div class="div2">
			<i class='fab fa-gg' style='font-size:20px;color:rgb(35, 35, 35);position: absolute;top:-40px;left:100px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
            <p style='color:rgb(12, 12, 12);position: absolute;top:-35px;left:81px;'>database users <i class="fa-solid fa-database"></i> </p>
			<label style='position:absolute;top:20px;left:30px;color:black;font-size:15px;'>If there is no user scno/phnumber/ <br><span style='margin-left:70px;'> go and click </span><br> generate.It will generate the users <span style='margin-left:70px;'>scno account </span></label>
		    <form action="empgenerate.jsp"><button id="B2">generate</button></form>
		</div>
		<div class="div3">
			<i class='fab fa-gg' style='font-size:20px;color:rgb(35, 35, 35);position: absolute;top:-40px;left:100px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
			<p style='color:rgb(12, 12, 12);position: absolute;top:-35px;left:81px;'>database bills <i class="fa-solid fa-database"></i> </p>

			<i class="fa-solid fa-file-pen" style='color:black;position: absolute;top:20px;left:80px;'></i><p style='color:black;position: absolute;top:1px;left:100px;font: size 10px;'>update bill</p>
            <label style='position:absolute;top:50px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i11" placeholder="Enter Scno" onblur="return block1()" />
			<label style='position:absolute;top:100px;left:40px;color:black;font-size:10px;'>select payment no:-</label>
            <select type="text" id="i12" ><option>select payment no</option></select>
			<input type="button" onclick="update()" ondblclick="update1()" value="Ubill" id="bu" />
		</div>
         <form action="requests.jsp"><input type="submit" style="background-color:white;width:150px;position:absolute;top:480px;left:680px;" value="Requests" /></form>
         <form action="emplu.jsp"><input type="submit" style="background-color:white;width:150px;position:absolute;top:480px;left:480px;" value="Link/update" /></form>
         <form action="empdisconnect.jsp"><input type="submit" style="background-color:white;width:150px;position:absolute;top:480px;left:890px;" value="Disconnect user" /></form>
        <button onclick="window.location.replace('workshow.jsp')" style="background-color:white;width:150px;position:absolute;top:520px;left:680px;">Work load <i style="color:black;" class="fa-solid fa-download"></i> </button>
  
    <div style="position:absolute;top:610px;left:650px;">
    <p> Admin have eye <i class="fa-regular fa-eye"></i> on you  </p>
    <p style="position:absolute;top:20px;left:30px;"> Keep work daily <i class="fa-solid fa-face-smile-beam"></i> </p>
   <i class='fab fa-gg' style='font-size:40px;color:rgb(196, 191, 191);position: absolute;top:50px;left:80px;'><p style='font-size:10px;position:absolute;top:30px;left:10px;width:40px;'>E B L</p></i> 
    
    </div>       
          
  
</body>
<script type="text/javascript">
function update(){
	  var x = document.getElementById("i12").value;
	  document.getElementById("bu").value = x;
}
function update1(){
	
	var xhtml = new XMLHttpRequest();
	var x = document.getElementById("i12").value
	var url = "http://localhost:8080/api/id/"+x;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
		   document.getElementById("bu").value = this.responseText;
		   window.location.replace("updatebill.jsp");
				
		}
	};
}
function block(){
	var i1 = document.getElementById("i1");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value.length>0 && i1.value.length <12){
		document.getElementById("i1").style.border = "2px solid red";
		document.getElementById("not1!").style.color = "red";
		document.getElementById("not1!").innerHTML = "Enter 12 scno";
		return false;
	}
	else{
		document.getElementById("i1").style.border = "2px solid green";
		document.getElementById("not1!").style.color = "green";
		document.getElementById("not1!").innerHTML = "correct";
		return true;
	}
}
function block1(){
	var i1 = document.getElementById("i11");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value.length>0 && i1.value.length <12){
		document.getElementById("i11").style.border = "2px solid red";
		document.getElementById("i11").style.color = "red";
		document.getElementById("i11").value = "Enter 12 scno";
		return false;
	}
	else{
		document.getElementById("i11").style.border = "2px solid green";
		document.getElementById("i11").style.color = "green";
		
		var sv = document.getElementById("i11");
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/serviceno/"+sv.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		var E = document.getElementById("i12");
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				E.innerHTML="";
				for(var x in data)
				{
					if(data[x].status == false){
					var option = document.createElement("option");
					option.value = data[x].id;
					option.text = data[x].paymentno;
					E.add(option);
					}
				}
			}
		};
		return true;
	}
}
function name() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/employeeHome";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText!="") 
		         document.getElementById("empname").innerHTML = this.responseText;
			     else
			    	window.location.replace("Employee.jsp");
				
		}
	};
}

function scno(){
	var xhtml = new XMLHttpRequest();
	var sco = document.getElementById("i1");
	var url = "http://localhost:8080/api/bills/"+sco.value;
	xhtml.open("GET",url,true);
	xhtml.setRequestHeader('Content-Type','application/json');
	if(block()){
	xhtml.send();
	} 
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText == 'Not Found')
		         document.getElementById("not!").innerHTML = this.responseText;
			     else
			    	 {
			    	 window.location.replace("Bills.jsp");
			    	 }
				
		}
	};
}

</script>

</html>