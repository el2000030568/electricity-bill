 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
#left-border{
width:20%;
height:752px;
background-color:#c4c4c4;
position:absolute;
top:0px;
left:0px;
}
body{
     font-family: 'Muli',sans-serif;
 }
 
 .active{
 background-color:#F6F5F7;
 color:grey;
 }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="name()">
<div id="left-border">
<h2 style="position:absolute;top:3px;left:20px;">Welcome to <i class='fab fa-gg' style='font-size:20px;color:black;position: absolute;top:5px;left:140px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L ,</p></i> 
</h2>
 
 <p id="name" style="position:absolute;top:40px;left:25px;"></p>
 <div style="text-align: center;margin-top:100px;">
   <a href="adminhome.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;">admin dashboard <i class="fa-solid fa-chart-line"></i></a>
    <a href="createemployee.jsp" class="active" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:25px;" >Create Employee <i class="fa-solid fa-person-circle-plus"></i></a>
   <a href="vdemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:50px;" >Delete/veiw Employee <i class="fa-solid fa-person-circle-minus"></i></a>
       <a href="empworkload.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:75px;" >upload work load <i class="fa-solid fa-file"></i></a>
       <a href="userrequests.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:100px;" >user requests <i class="fa-solid fa-person-praying"></i></i></a>
     <a href="http://localhost:8080/admin/logout" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:125px;" >logout <i class="fa-solid fa-person-walking-luggage"></i></a>
   
   </div>
</div>

<div style="position:absolute;left:350px;top:20px;">
   <h1 style="margin-left:450px;color:grey;">New Employee <br><i style="margin-left:100px;" class="fa-solid fa-person-circle-plus"></i></h1>
   <p style="margin-left:450px;color:grey;margin-top:40px;"> Employee name :- </p>
   <input type="text" id="empname" style="margin-left:450px;color:grey;position:absolute;top:155px;width:220px;height:25px;border-radius:5px;border:1px solid grey;" maxlength="10">
   <p style="margin-left:450px;color:grey;margin-top:40px;"> Employee password :- </p>
   <input type="password" id="emppass" style="margin-left:450px;color:grey;position:absolute;top:215px;width:220px;height:25px;border-radius:5px;border:1px solid grey;" maxlength="10">
   <p style="color:red;margin-top:40px;text-align:center;margin-left:450px;" id="error"> </p>
   <button onclick="addemp()" style="color:black;text-align:center;position:absolute;top:270px;margin-left:490px;background-color: grey;width:150px;height:25px;border-radius:3px;border:none;">Create</button>
   <p style="color:green;margin-top:100px;text-align:center;margin-left:450px;" id="sucess"></p>
   </div>

</body>
<script type="text/javascript">
function name() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/getname";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText!="") 
		         document.getElementById("name").innerHTML = this.responseText + " sir,";
			    else
			    window.location.replace("admin.jsp");
				
		}
	};
}

function addemp(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/Addemployee";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');	
	xhtml.send(JSON.stringify({
			name : empname.value,
			password : emppass.value,
		
		}));
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			if(this.responseText=="successfull"){
		         document.getElementById("sucess").innerHTML = this.responseText + " created " + empname.value;
			document.getElementById("error").innerHTML = "";
			}
			else{
				document.getElementById("error").innerHTML = this.responseText;
			 document.getElementById("sucess").innerHTML = "";
			}
				
		}
	};
}

</script>

</html>