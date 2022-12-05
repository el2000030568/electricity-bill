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
border :1px solid #0BE8E8;
border-left:200px solid #0BE8E8;
margin-bottom : 1px;

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
<a href="#" onclick="historylist()"  style="position:absolute;top:190px;left:750px;">History</a>
<a href="#" onclick="window.location.replace('linkage.jsp')"  style="position:absolute;top:190px;left:850px;">Update number</a>
<a href="#" onclick="window.location.replace('changepassword.jsp')"  style="position:absolute;top:190px;left:580px;">changepassword</a>
<a href="#" id="back" onclick="showclick()" style="position:absolute;top:220px;left:758px;display:none;">Back</a>
<h2 style='color:black;text-align:center;margin-top:90px;'>welcome</h2>
<h4 style='color:black;text-align:center;margin-top:-20px;color:#E110E4;' id="name"></h4>
<button style='width:100px;height:30px;border-radius:3px;background:transparent;position:absolute;top:150px;left:720px;' onclick="logout()">logout</button>
<p style="position:absolute;top:200px;left:200px;font-weight:560;">Total Dues :-</p><p style="position:absolute;top:200px;left:300px;font-weight:560;color:red;"  id="dues"></p>
<div id="display"></div>

<!-- Model  -->
<div id="del" class="modal">
       <div id="rm" class="alert info"><span class="closebtn">&times;</span></div>
       <div class="modal-content animate">
              <div class="container" style="background-color:#21AB90">
                  <h1 style="text-align: center;" class="p1">  </h1>
              </div>
              <div class="container" style="pointer-events: all">
              <!-- Closing form -->
                <span onclick="newTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
                <!-- Title -->
                  <h1 style="text-align: center;">	<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:140px;left:730px;'><p style='font-size:18px;position:absolute;top:-13px;left:10px;width:100px;'>E B L</p></i> 
</h1>
                  
                  <!-- Display content --> 
                  <h2 style='text-align: center;'>Bill</h2>
                   <div class="dis">
                   <input type="text" id="i1"  readonly> <p style='position:absolute;top:-8px;left:20px;font-weight:530;' >Service number:</p>  </input>
                   <input type="text" id="i2" readonly > <p style='position:absolute;top:-8px;left:500px;font-weight:530;'  >Category: </p></input>
                   <input type="text" id="i3"  readonly> <p style='position:absolute;top:25px;left:20px;font-weight:530;'  readonly>Customer Name:</p></input>
				  <input type="text" id="i4"  readonly> <p style='position:absolute;top:25px;left:500px;font-weight:530;'  readonly>Address :</p></input>
                 <input type="text" id="i5"  readonly> <p style='position:absolute;top:58px;left:20px;font-weight:530;'  readonly>Section office :</p></input>
                 <input type="text" id="i6"  readonly> <p style='position:absolute;top:58px;left:500px;font-weight:530;'  readonly>E R O :</p></input>
                 <input type="text" id="i7"  readonly> <p style='position:absolute;top:90px;left:20px;font-weight:530;'  readonly>Bill Date :</p></input>
                 <input type="text" id="i8"  readonly> <p style='position:absolute;top:90px;left:500px;font-weight:530;'  readonly>Due Date :</p></input>
                 <input type="text" id="i9"  readonly> <p style='position:absolute;top:123px;left:20px;font-weight:530;'  readonly>Payment id :</p></input>
                 <input type="text" id="i10"  readonly> <p style='position:absolute;top:123px;left:500px;font-weight:530;'  readonly>Units :</p></input>
                  <input type="text" id="i11"  readonly> <p style='position:absolute;top:155px;left:20px;font-weight:530;'  readonly>Costs :</p></input>
                  <input type="text" id="d1"  readonly> <p style='position:absolute;top:155px;left:500px;font-weight:530;'  readonly>id :</p></input>     
                 
                    </div>
                  
             
                  <!-- Button at center -->
                  <div style="width: 100%;display: flex; justify-content: center;padding:15px;">
		          <form action="userbillshow.jsp">  <button style="width:200px;height:30px;border:none;border-radius:3px;background-color:#0BE8E8;" >Pay</button> </form>
		          </div>
          <div class="container" style="background-color:#f1f1f1;height:50px;">
                       <p style="text-align:center;"> © Copyright 2022 E B S </p>
                 
              </div>
            </div>
      </div>
</div>


<!-- --------HISTORY------------ -->
<div id="hp"></div>

<footer>
<h4 style="text-align:center;">It has copyrights</h4>
</footer>

</body>
<script type="text/javascript">
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