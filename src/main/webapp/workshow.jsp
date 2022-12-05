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
     background-color: black;
     color:white;
 }
 
 .active{
 background-color:#F6F5F7;
 color:grey;
 }
 table{
	position: relative;
  top: 150px;
  left: 180px;
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
</style>
<meta charset="ISO-8859-1">
<title>View / delete</title>
</head>
<body onload="getfiles()" onpageshow="name()">
     <h2 id="h1">HOWDY ! </h2> <p id="empname"></p>
        <h3 id="h3">Welcome To </h3>
		<a href="emphome.jsp" style='color:white;font-size:20px;position:absolute;top:140px;left:680px;'><i class="fa-solid fa-house"></i> <p style="position:absolute;top:-20px;left:30px;width:200px;" >Employee Home</p></a>
		<i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:58px;left:770px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
       <h3 style='position: absolute;top:80px;left:600px'>Your Connected to database <i class="fa-solid fa-database"></i></h3>
    
	<div id="display" style="width:100%"></div>
</body>
<script type="text/javascript">

function getfiles()
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/getfiles";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			var table = "<table border=1>";
			table += "<tr> <th>File Name</th> <th>Size (in bytes)</th> <th>Action</th> </tr>";
			for(var x in data)
			{
				table += "<tr> <td>"+ data[x].filename +"</td> <td>"+ data[x].filesize +"</td> <td> <a href='"+ data[x].path + data[x].filename +"'>download</a> </td> </tr>";
			}
			var display = document.getElementById("display");
			display.innerHTML = table;
		}
	};
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

</script>

</html>