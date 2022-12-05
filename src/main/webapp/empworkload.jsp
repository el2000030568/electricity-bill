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
	position: relative;
  top: 30px;
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
    <a href="vdemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 50px;cursor: pointer;position:relative;top:50px;"  >Delete/veiw Employee <i class="fa-solid fa-person-circle-minus"></i></a>
        <a href="empworkload.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:75px;" class="active" >upload work load <i class="fa-solid fa-file"></i></a>
      <a href="userrequests.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:100px;" >user requests <i class="fa-solid fa-person-praying"></i></i></a>
    <a href="http://localhost:8080/admin/logout" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:125px;" >logout <i class="fa-solid fa-person-walking-luggage"></i></a>
  
   </div>
</div>
      <div style="position:absolute;left:350px;top:20px;">
      <h3 style="margin-left:440px;color:grey;">File Uploading and Downloading</h3>
	<p style="margin-left:440px;color:grey;" >Select a file: <input type="file" id="myfile" name="myfile" /> </p>
	<button style="margin-left:500px;color:grey;" onclick="upload()" >Click here to Upload</button>
	<p><label id="status" style="margin-left:480px;color:grey;"></label> </p>
	<div id="display" style="width:100%"></div>
	<p id="efn" style="position:relative;top:30px;left:400px;">Enter file name :-</p>
	<input id="fname" type="text" style="position:relative;top:20px;left:400px;width:250px;height:25px;" />
	<button onclick="deletefile()" style="position:relative;top:46px;left:342px;">delete</button>
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
		         getfiles();
			     }
			    else
			    window.location.replace("admin.jsp");
				
		}
	};
}

function upload()
{
	var formdata = new FormData();
	formdata.append("myfile", document.getElementById("myfile").files[0]);
	
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/upload";
	xhtml.open("POST", url, true);
	
	xhtml.send(formdata);
	
	var myTimer = setInterval(getStatus, 1000);
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			clearInterval(myTimer);
			var status = document.getElementById("status");
			status.innerText = this.responseText;
		}
	};
}

function getStatus()
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/status";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var status = document.getElementById("status");
			var data = JSON.parse(this.responseText);
			status.innerText = "Uploading " + data.uploadedbytes + " of " + data.filesize;
		}
	};
}

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

function deletefile(){
	if(fname.value.length>0){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/admin/deletefile/"+fname.value;
		xhtml.open("DELETE", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		window.location.replace("empworkload.jsp");
	}
	else{
		document.getElementById("fname").style.border = "1px solid red";
		document.getElementById("efn").style.color = "red";
	}
}

</script>

</html>