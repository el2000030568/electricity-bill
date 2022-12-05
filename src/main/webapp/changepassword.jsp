<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
input{
width:240px;
height:28px;
border:none;
border :1px solid black;
margin-bottom :30px;
border-radius:3px;
}


#div1{
width:101%;
height:80px;
background: url(./images/b1.jpg);
position:absolute;
top:0px;
left:-10px;
}
body{
color:black;
font-family: 'Muli',sans-serif;
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
background-color:#0BE8E8;
}
.container 
{
   padding: 15px;
}
.modal 
{
      display: none;
      z-index: 1; 
      left: 0;
      position: fixed;
      top: 0;
      width:100%;
      height:100%;
      overflow: auto;
      background-color: rgb(0,0,0);
      background-color: rgba(0,0,0,0.4);
      padding-top: 30px;
      overflow: auto;
}
.modal-content 
{
      border-radius: 15px;
      background-color: #fefefe;
      margin: 5% auto 15% auto;
      border: 1px solid #888;
      width: 80%;
}
.modal-content::content
{
        border-radius: 15px;;
        pointer-events: all;
}
.modal-content .container
{
    border-radius: 15px;
}
.close 
{
      position: absolute;
      right: 170px;
      top: 130px;
      color: #000;
      font-size: 35px;
      font-weight: bold;
      transition: 3s;
}
.close:hover,
.close:focus 
{
    color: blue;
    cursor: pointer;
    opacity: 0.8;
}
.animate 
{
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom 
{
    from 
    {
       -webkit-transform: scale(0)
    } 
    to 
    {
       -webkit-transform: scale(1)
    }
} 
@keyframes animatezoom 
{
    from
    {
       transform: scale(0)
    } 
    to
    {
       transform: scale(1)
    }
}
.dis{
width:80%;
position:relative;
left:180px;
}
#hp{
max-width:600px;
box-shadow:2px 3px 10px black;
border-top:40px solid #0BE8E8;
border-radius:5px; 
position:absolute;
top:-38px;
left:320px;
display:block;
}
footer{
position:fixed;
bottom:0px;
right:0px;
width:100%;
height:50px;
background-color:black;
color:white;

}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="name()" onpageshow="table()">
<div id="div1">
		<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B L</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity bill System</p>

</div>
<h2 style='color:black;text-align:center;margin-top:90px;'>change password</h2>


<h4 style='color:black;text-align:center;margin-top:-20px;color:#E110E4;' id="name"></h4>

<div style="position:absolute;top:200px;left:660px;width:150px;">
<p id="ecp" style="font-size:12px;font-weight:540;position:absolute;top:-30px;left:0px;">Enter Current password:-</p>
 <input type="password" id="cpass" onblur="passwordcheck();">
 <p id="enp" style="position:absolute;top:35px;left:0px;font-size:12px;font-weight:540;" >Enter New password:-</p>
 <input type="password" id="npass" onblur="validate()">
 
 <p id="cp" style="position:absolute;top:95px;left:0px;font-size:12px;font-weight:540;">Confrim password:-</p>
 <input type="password" id="cnpass" onblur="confrim()" >
 
 <button onclick="updatepass()" style="position:absolute;top:170px;left:50px;width:170px;height:25px;background-color:white;border-radius:3px;" >Sumbit</button>
</div>


<footer>
<h4 style="text-align:center;">It has copyrights</h4>
</footer>

</body>
<script type="text/javascript">
var p;
function confrim() {
	if(npass.value == cnpass.value){
		document.getElementById("cp").style.color = "Green";
		document.getElementById("cnpass").style.border = "1px solid green";
		document.getElementById("cp").innerHTML = "MATCHED";
		document.getElementById("enp").innerHTML = "Completed";
		document.getElementById("cnpass").readOnly = true;
		return true;
	}
	else{
		document.getElementById("cp").style.color = "red";
		document.getElementById("cnpass").style.border = "1px solid red";
		document.getElementById("cp").innerHTML = "NOT MATCHED";
		document.getElementById("enp").innerHTML = "Processing......";
		return false;
	}
}


function validate(){
	if(npass.value.length > 5 ){
		document.getElementById("enp").style.color = "Green";
		document.getElementById("npass").style.border = "1px solid green";
		document.getElementById("enp").innerHTML = "Processing.....";
		document.getElementById("npass").readOnly = true;
		return true;
	}
	else{
		document.getElementById("enp").style.color = "red";
		document.getElementById("npass").style.border = "1px solid red";
		document.getElementById("enp").innerHTML = "Valid password";
		return false
	}
}

function updatepass() {
	if(validate() == true && confrim() == true && p == true){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/updateuser/"+npass.value;
		xhtml.open("PUT", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				  alert("successfuly updated!");
				  window.location.replace("userhome.jsp");
			}
		};
	}
	else{
		alert("Not done fields properly");
	}
}

function passwordcheck()
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/Password/"+ cpass.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json'); 
	xhtml.send();
	var error = document.getElementById("error");
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var inner1=document.getElementById("i2");
			if(this.responseText.length>0){
				document.getElementById("ecp").style.color = "green";
				document.getElementById("cpass").style.border = "1px solid green";
				p =  true;
			}
			else{
				document.getElementById("ecp").style.color = "red";
				document.getElementById("cpass").style.border = "1px solid red";
				p = false;
			}
		}
	};
}

function name() 
{
	countdues();
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/username";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText!="") 
		         document.getElementById("name").innerHTML = this.responseText;
			    else
			    window.location.replace("index.jsp");
				
		}
	};
}

function countdues() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/countdues";
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


function table(){
	var xhtml = new XMLHttpRequest();
	//var E = document.getElementById("events");
	var url = "http://localhost:8080/user/getdetails";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();

	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			 count = 0;
			var data = JSON.parse(this.responseText);
			var table = "<table>";
			table += "<tr> <th>ID</th> <th>Service Number</th> <th>Customer Name</th> <th>Section Name</th> <th>Phone number</th>  <th>Release Date</th> </tr>";
			for(var x in data)
			{
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='user/readbills/"+data[x].id+"'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='userbillshow.jsp'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				table += "<tr> <td>"+ count++ +"</td> <td> <a href='#' onclick=\"newTabOpen('"+data[x].id+"')\">"+data[x].servicenumber+"</a> </td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
	};
	
}

function newTabOpen(eid)
{
	document.getElementById('del').style.display='block';
    document.getElementById("d1").innerHTML=eid;
    var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/readbills/"+eid;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			for(var x in data){
				document.getElementById("i1").value = data[x].servicenumber;
				document.getElementById("i2").value = data[x].caterogy;
				document.getElementById("i3").value = data[x].name;
				document.getElementById("i4").value = data[x].address;
				document.getElementById("i5").value = data[x].sectionoffice;
				document.getElementById("i6").value = data[x].ero;
				document.getElementById("i7").value = data[x].billdate;
				document.getElementById("i8").value = data[x].duedate;
				document.getElementById("i9").value = data[x].paymentno;
				document.getElementById("i10").value = data[x].units;
				document.getElementById("i11").value = data[x].cost;
				document.getElementById("d1").value = data[x].id;
			}
				
		}
	};
}
function newTabClose()
{
	 document.getElementById('del').style.display='none';
}

function logout(){
	 var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/logout";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
	    window.location.replace("index.jsp");
}

</script>

<script type="text/javascript">
function historylist(){
	var xhtml = new XMLHttpRequest();
	//var E = document.getElementById("events");
	var url = "http://localhost:8080/user/historylist";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	document.getElementById("display").style.display="none";
	document.getElementById("hp").style.display="block";

	var display = document.getElementById("hp");
	document.getElementById("back").style.display="block";

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			 count = 0;
			var data = JSON.parse(this.responseText);
			var table = "<table>";
			table += "<tr> <th>ID</th> <th>Service Number</th> <th>Customer Name</th> <th>bill date</th> <th>Payment id</th>  <th>Total paid</th> </tr>";
			for(var x in data)
			{
				table += "<tr> <td>"+ count++ +"</td> <td>"+ data[x].servicenumber +"</td> <td>"+ data[x].name +"</td> <td>"+ data[x].billdate +"</td> <td> <a onclick='historyshow("+data[x].paymentno+")' href='#'>"+data[x].paymentno+"</a></td> <td> "+data[x].cost+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='userbillshow.jsp'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='#' onclick=\"newTabOpen('"+data[x].id+"')\">"+data[x].servicenumber+"</a> </td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
	};
	
}

function showclick(){
	document.getElementById('display').style.display='block'; 
	document.getElementById("hp").style.display="none";
	document.getElementById("back").style.display="none";
}

function historyshow(payno){
	    var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/historyshow/"+payno;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
	    window.location.replace("historyshow.jsp");
}
</script>
</html>