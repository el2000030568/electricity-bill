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

 
</style>

<title>Insert title here</title>
</head>
<body onload="name()" >
<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:48px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:40px;width:160px;'>E B L</p></i>
<h4 style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:68px;left:750px;'>ELECTRICITY BILLING</h4>
<div id="idshow" style="position:absolute;top:130px;left:700px;width:100px;">
<p style="position:absolute;top:-10px;font-size:14px;">enter id:-</p>
<input type="text" id="id"  style="width:200px;height:20px;position:absolute;top:20px;" onfocus="getid()" maxlength="2"/>
<p id="error" style="position:absolute;top:38px;font-size:10px;"></p>
</div>

<div id="update" style="position:absolute;top:190px;left:700px;display:none">
<p style="position:absolute;top:-10px;font-size:14px;">scno:-</p>
<input type="text" id="scno"  style="width:200px;height:20px;position:absolute;top:20px;" />
<p style="position:absolute;top:40px;font-size:14px;">name:-</p>
<input type="text" id="name" style="width:200px;height:20px;position:absolute;top:70px;" />
<p style="position:absolute;top:90px;font-size:14px;">phonenumber:-</p>
<input type="text" id="phn" style="width:200px;height:20px;position:absolute;top:120px;" maxlength="10" required/>
<input onclick="update()" type="submit" style="width:150px;height:20px;position:absolute;top:150px;left:30px;background:transparent;border:1px solid white;color:white;" />

</div>
</body>
<script type="text/javascript">
function update(){
	if(phn.value.length == 10){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/updatenumber/"+scno.value+"/"+phn.value;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			deleterequest();
			alert("successfuly updated!");
			  window.location.replace("emphome.jsp");
		}
	};
	}
	else{
		document.getElementById('phn').style.border = "1px soild red";
	}
}

function getid(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/idrequest/"+id.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			document.getElementById("update").style.display = "block";
			var data = JSON.parse(this.responseText);
			if(data!=""){
			for(var x in data){
					document.getElementById("update").style.display = "block";
					document.getElementById("id").readOnly = true;
					document.getElementById("scno").readOnly = true;
					document.getElementById("scno").value =data[x].scno;
					document.getElementById("name").readOnly = true;
					document.getElementById("name").value =data[x].name;
					
					
			}
			}
			else{
				document.getElementById("update").style.display = "none";
			}
		}
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
function deleterequest(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/deleterequest/"+id.value;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
}
</script>
</html>