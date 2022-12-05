<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
body{
     background-color: black;
     font-family: 'Muli',sans-serif;
	 color:white;
 }

table{
	position: absolute;
  top: 250px;
  left: 190px;
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
}
</style>

<title>Insert title here</title>
</head>
<body onload="name()" >
<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:48px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:40px;width:160px;'>E B L</p></i>
<h4 style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:68px;left:750px;'>ELECTRICITY BILLING</h4>
<h5 style="position:absolute;top:110px;left:700px; ">Enter scno :-</h5>
<input type="text" id="scno" style="width:200px;height:25px;background:transparent;border:1px solid white;color:white;position:absolute;top:150px;left:700px;" maxlength="12">
<button style="position:absolute;top:190px;left:780px;" onclick="table()">Fetch</button>
<p style="position:absolute;top:200px;left:200px;font-weight:560;">Total Dues :-</p><p style="position:absolute;top:200px;left:300px;font-weight:560;color:red;"  id="dues"></p>
<div id="display"></div>
<div id="del" style="position:relative;top:90px;left:1200px;display:none">
<input style="position:absolute;top:20px;" type="text" id="did" maxlength="3"><button  style="position:absolute;top:45px;left:50px;" onclick="deletebyid()">Delete by id</button>
 <p> Delete bill by id : </p>
 
 <button id="b1"  style="position:absolute;top:115px;left:-450px;" onclick="deleteuser()">Disconnect user</button>
</div>
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
			     if(this.responseText!="") 
		         document.getElementById("empname").innerHTML = this.responseText;
			     else
			    	window.location.replace("Employee.jsp");
				
		}
	};
}
function table(){
	var xhtml = new XMLHttpRequest();
	//var E = document.getElementById("events");
	var url = "http://localhost:8080/api/getuser/"+scno.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
   //alert(scno.value);
	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			document.getElementById("b1").style.display = "block";
			 countdues();
			 var due = document.getElementById("dues").innerHTML;
			var data = JSON.parse(this.responseText);
			if(due > 0){
			document.getElementById("del").style.display = "block";
			var table = "<table>";
			table += "<tr> <th>ID</th> <th>Service Number</th> <th>Customer Name</th> <th>Section Name</th> <th>Phone number</th>  <th>Release Date</th> </tr>";
			for(var x in data)
			{
				table += "<tr> <td>"+ data[x].id +"</td> <td>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='userbillshow.jsp'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='#' onclick=\"newTabOpen('"+data[x].id+"')\">"+data[x].servicenumber+"</a> </td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
		}
		else{
			
		}
	};
	
}

function countdues() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/countdues/"+scno.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			    
		         document.getElementById("dues").innerHTML = this.responseText;
		}
	};
}

function deletebyid(){
	if(did.value.length > 0){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/deletebyid/"+did.value;
		xhtml.open("DELETE", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		window.location.replace("empdisconnect.jsp");
		}
		else{
			document.getElementById("did").style.border = "1px solid red";
		}
}

function deleteuser(){
	if(scno.value.length > 0){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/deleteuserwithscno/"+scno.value;
		xhtml.open("DELETE", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		window.location.replace("empdisconnect.jsp");
		}
		else{
			document.getElementById("scno").style.border = "1px solid red";
		}
}
</script>
</html>