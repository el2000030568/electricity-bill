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
 #div1{
	width:350px;
	height: 350px;
	background-color: rgb(81, 82, 83);
	border-radius :5px;
	position: absolute;
	top:110px;
	left:640px;
 }
 #t1,#t2,#t3{
	width:200px;
	height: 27px;
	background-color: rgb(130, 125, 125);
	border-radius: 3px;
	border: none;
    position: relative;
	top: 50px;
	margin:10px;
	margin-left:80px;
 }
 #b1{
	width: 130px;
	height: 25px;
	border-radius: 5px;
	border: none;
	background-color: rgb(131, 131, 135);
	position: absolute;
	top: 220px;
	left: 120px;
 }
 #l1,#l2,#l3{
 margin-bottom:-15px;
 }
</style>
<title>Insert title here</title>
</head>
<body onload="name()">
		<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:58px;left:770px;'><p style='font-size:15px;position:absolute;top:-8px;left:35px;width:45px;'>E B L</p></i> 
        <div id="div1">
            <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:35px;left:80px;'><i class="fa-solid fa-user"></i> Enter name</p>
           <input  type="text" id="t1" placeholder="Enter Name"  onblur="return scno()"/>
          <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:85px;left:80px;'><i class="fa-solid fa-scroll"></i> Enter Scno</p>
		   <input  type="number" id="t2" placeholder="Enter Scno" onblur="return  billno()"/>
		  <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:135px;left:80px;'><i class="fa-solid fa-phone"></i> Enter Phonenumber</p> 
		   <input type="number" id="t3" placeholder="Enter phnum" onblur="return  phno()" />
		   <p id="error" style='position: absolute;top:175px;left: 158px;color:red;'></p>
		    
            
		   
		   <button id="b1" onclick="generate()">Generate</button>
		   <ul style='height:20%;position:relative;top:90px;left:90px;'>
		   
		   <li id="l1"><p id="not"></p></li>
		  <li id="l2"> <p id="not1"></p> </li>
		  <li id="l3"> <p id="not2"></p> </li>
		   </ul>
		</div>
		<ul style='position: absolute;top:485px;left:608px;'>
			<li>Enter the serial number by correct (Take from house address repesectivetly)</li>
			<li>Enter the owner of the house</li>
			<li>Enter Phone number verified by EBL </li>
		</ul>
       <h3 style='color:rgb(154, 156, 158);position: absolute;top:565px;left:748px;font-size:10px;'>This is powered by EBL.Trust website</h3>
		
		</body>
		<script type="text/javascript">
		
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
		 			     if(this.responseText.length >1) 
		 		         document.getElementById("empname").innerHTML = this.responseText;
		 			     else
		 			    	window.location.replace("Employee.jsp");
		 				
		 		}
		 	};
		 }
		
		
		function scno(){
			var i1 = document.getElementById("t1");
			//document.getElementById("not1!").innerHTML = i1.value.length;
			if(i1.value=='' || i1.value.length>1 && i1.value.length <3){
				document.getElementById("t1").style.border = "2px solid red";
				document.getElementById("not").style.color = "red";
				document.getElementById("l1").style.color = "red";
				document.getElementById("not").innerHTML = "Enter name";
				return false;
			}
			else{
				document.getElementById("t1").style.border = "2px solid green";
				document.getElementById("not").style.color = "green";
				document.getElementById("l1").style.color = "green";
				document.getElementById("not").innerHTML = "correct";
				return true;
			}
		}
		
		function billno(){
			var i1 = document.getElementById("t2");
			//document.getElementById("not1!").innerHTML = i1.value.length;
			if(i1.value=='' || i1.value.length>0 && i1.value.length<12){
				document.getElementById("t2").style.border = "2px solid red";
				document.getElementById("not1").style.color = "red";
				document.getElementById("l2").style.color = "red";
				document.getElementById("not1").innerHTML = "Enter scno 12";
				return false;
			}
			else{
				document.getElementById("t2").style.border = "2px solid green";
				document.getElementById("not1").style.color = "green";
				document.getElementById("l2").style.color = "green";
				document.getElementById("not1").innerHTML = "correct";
				return true;
			}
		}
		function phno(){
			var i1 = document.getElementById("t3");
			//document.getElementById("not1!").innerHTML = i1.value.length;
			if(i1.value=='' || i1.value.length>0 && i1.value.length<10){
				document.getElementById("t3").style.border = "2px solid red";
				document.getElementById("not2").style.color = "red";
				document.getElementById("l3").style.color = "red";
				document.getElementById("not2").innerHTML = "Enter correct phno";
				return false;
			}
			else{
				document.getElementById("t3").style.border = "2px solid green";
				document.getElementById("not2").style.color = "green";
				document.getElementById("l3").style.color = "green";
				document.getElementById("not2").innerHTML = "correct";
				return true;
			}
		}
		
		 function generate(){
				var xhtml = new XMLHttpRequest();
				var url = "http://localhost:8080/api/generate";
				xhtml.open("POST", url, true);
				xhtml.setRequestHeader('Content-Type','application/json');	
				var name = document.getElementById("t1");
				var scno = document.getElementById("t2");
				var phnm = document.getElementById("t3"); 
				var U = document.getElementById("User");
				if(billno() && phno()){
				xhtml.send(JSON.stringify({
						billno : t2.value,
						name : t1.value,
						phnumber : t3.value,
					
					}));
				}
				
				xhtml.onreadystatechange = function()
				{
					if(this.readyState == 4 && this.status == 200)
					{
						if(this.responseText=="Error!")
					        alert(this.responseText);
						else
							{
							alert(this.responseText);
							window.location.replace("emphome.jsp");
							}
							
					}
				};
				
		 }
		</script>
</html>