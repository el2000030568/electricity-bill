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
 table{
	position: absolute;
  top: 200px;
  left: 260px;
  width:80%;
  border-radius:10px;
}

 table, td,th {
  border:1px solid rgb(193, 187, 187);
  border-collapse: collapse;
  padding:10px;
}
td{
	text-align: center;
}
th{
background-color:grey;
}
 
</style>
<meta charset="ISO-8859-1">
<title>View / delete</title>
</head>
<body onload="name()">
<div id="left-border">
<h2 style="position:absolute;top:3px;left:20px;">Welcome to <i class='fab fa-gg' style='font-size:20px;color:black;position: absolute;top:5px;left:140px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L ,</p></i> 
</h2>
 
 <p id="name" style="position:absolute;top:40px;left:25px;"></p>
 <div style="text-align: center;margin-top:100px;">
   <a href="adminhome.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;">admin dashboard <i class="fa-solid fa-chart-line"></i></a>
    <a href="createemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:25px;" >Create Employee <i class="fa-solid fa-person-circle-plus"></i></a>
    <a href="vdemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 50px;cursor: pointer;position:relative;top:50px;" class="active" >Delete/veiw Employee <i class="fa-solid fa-person-circle-minus"></i></a>
        <a href="empworkload.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:75px;" >upload work load <i class="fa-solid fa-file"></i></a>
      <a href="userrequests.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:100px;" >user requests <i class="fa-solid fa-person-praying"></i></i></a>
       <a href="http://localhost:8080/admin/logout" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:125px;" >logout <i class="fa-solid fa-person-walking-luggage"></i></a>
     
   </div>
</div>
      <div style="position:absolute;left:350px;top:20px;">
      <h2 style="margin-left:450px;color:grey;">Delete Employee <i class="fa-solid fa-person-circle-minus"></i></h2>
      <p style="margin-left:450px;color:grey;" id="eei" >Enter Id:- </p>
      <input type="text" id="empid" style="margin-left:450px;color:grey;position:absolute;top:90px;" maxlength="4"> 
      <button onclick="deleteemployee()" style="margin-left:567px;color:grey;margin-top:9px;">delete</button>
       <h2 style="margin-left:450px;color:grey;">View Employee <i class="fa-regular fa-eye"></i></h2>
      <div id="display"></div>
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
			     if(this.responseText!=""){ 
		         document.getElementById("name").innerHTML = this.responseText + " sir,";
		         table();
			     }
			    else
			    window.location.replace("admin.jsp");
				
		}
	};
}

function table(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/viewemployee";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();

	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			var table = "<table>";
			table += "<tr> <th>Id</th> <th>name</th></tr>";
			for(var x in data)
			{
				table += "<tr> <td>"+ data[x].id +"</td> <td>"+ data[x].name +"</td></tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
	};
	
}

function deleteemployee(){
	if(empid.value.length>0){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/admin/deleteemployee/"+empid.value;
		xhtml.open("DELETE", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		window.location.replace("vdemployee.jsp");
	}
	else{
		document.getElementById("empid").style.border = "1px solid red";
		document.getElementById("eei").style.color = "red";
	}
}

</script>

</html>