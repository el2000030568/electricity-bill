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
table{
	position: absolute;
  top: 150px;
  left: 350px;
}

 table, td,th {
  border:1px solid rgb(193, 187, 187);
  border-collapse: collapse;
  width:50%;
}
td{
	text-align: center;
	color: rgb(205, 208, 210);
}
td:hover{
	color:black;
	background-color: white;
	transform: translateY(-8px);
}
th:hover{
	color:black;
	background-color: white;
}
input{
	width:180px;
	height: 25px;
	background-color: rgb(118, 121, 122);
	border: none;
	border-radius:4px;
	border-left:130px solid rgb(189, 187, 187);
	margin-bottom:10px;
}
#div1{
	position: absolute;
	top:420px;
	left: 630px;
    width: 20%;
	
}
#b1{
	width: 160px;
	height: 30px;
	background-color: rgb(226, 221, 218);
	border: none;
	border-radius: 3px;
	margin-top:20px;
	margin-left:70px;
	color: black;
}
#b1:focus{
	background-color: aqua;
	transition: 1.1s;
}
</style>
<title>Insert title here</title>
</head>
<body onload="onload()">
		<i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:48px;left:750px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
        <h1 style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:65px;left:720px;'>Bill Generate</h1>
	    <h3 style='position:absolute;top:95px;left:710px;'>current charges </h3>
	    <a href="emphome.jsp"><i  style="color:white;font-size:25px;padding-top:10px;margin-left:10px;" class="fa-solid fa-arrow-left">home</i></a>
	    <table >
			<tr>
			  <th>Units</th>
			  <th>Fixed charges</th>
			  <th>Unit charges</th>
			  <th>Customer charges</th>
			</tr>
			<tr>
			  <td>0 - 30</td>
			  <td>10</td>
			  <td>1.90</td>
			  <td>25/-</td>
			</tr>
			<tr>
				<td>31 - 75</td>
				<td>10</td>
				<td>3.00</td>
				<td>30/-</td>
			  </tr>
			  <tr>
				<td>76 - 125</td>
				<td>10</td>
				<td>4.50</td>
				<td>45/-</td>
			  </tr>
			  <tr>
				<td>126 - 225</td>
				<td>10</td>
				<td>6.00</td>
				<td>50/-</td>
			  </tr>
			  <tr>
				<td>226 - 400</td>
				<td>10</td>
				<td>8.75</td>
				<td>55/-</td>
			  </tr>
			  <tr>
				<td>>400</td>
				<td>10</td>
				<td>9.75</td>
				<td>55/-</td>
			  </tr>
		  </table>

		  <h3 style='font-size:12px;color: rgb(180, 180, 179);position: absolute;top: 320px;left: 620px;'>This charges where undertaken and Generate Bill Amount</h3>
		  <p style='color:rgb(164, 160, 160);position: absolute;top:355px;left:741px;'>Database Bills <i class="fa-solid fa-database"></i> </p>
		  <div id="div1">
		  <p style='color:rgb(47, 46, 46);position:absolute;top: -4px;left:20px;font-size:12px;'><i class="fa-solid fa-user" style='font-size:10px;'></i> service number:</p>
		  <input type="text" id="i1"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top: 30px;left:18px;font-size:12px;'><i class="fa-sharp fa-solid fa-arrow-up-9-1"></i> Customer name:</p>
		  <input type="text" id="i2"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top: 69px;left:18px;font-size:12px;'><i class="fa-solid fa-phone"></i> Contact number :</p>
		  <input type="text" id="i3"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:105px;left:18px;font-size:12px;'><i class="fa-solid fa-briefcase"></i> Section office :</p>
		  <input type="text" id="i4" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:142px;left:25px;font-size:12px;'><i class="fa-sharp fa-solid fa-building"></i> Address :</p>
		  <input type="text" id="i5" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:179px;left:25px;font-size:12px;'><i class="fa-solid fa-user-tie"></i> E R O :</p>
		  <input type="text" id="i6" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:216px;left:18px;font-size:12px;'><i class="fa-solid fa-clone"></i> Category :</p>
		  <input type="text" id="i7" required></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:251px;left:18px;font-size:12px;'><i class="fa-sharp fa-solid fa-calendar"></i> Bill date :</p>
		  <input type="date" id="i8" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:289px;left:18px;font-size:12px;'><i class="fa-solid fa-clock"></i> Due date :</p>
		  <input type="date" id="i9" placeholder="Due Date" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:323px;left:18px;font-size:12px;'><i class="fa-brands fa-unity"></i> Total units :</p>
		  <input type="text" id="i10" placeholder="Unit per kwh" required></input>

		  <button id="b1" onclick="generate()">Bill it</button>
		  <h5 style='margin-left:70px;'>This is powered by</h5>
		  <i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:436px;left:193px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
              <p id="e" style='color:rgb(0, 255, 60);position: absolute;top:346px;left:33px;'></p> <p id="pynb" style='color:rgb(0, 255, 60);position: absolute;top:346px;left:173px;'></p>
		  <p id="e1" style='color:red;position: absolute;top:346px;left:103px;'></p>
		  </div>
		</body>
		
	<script type="text/javascript">
	function onload(){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/loadusers";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				if(data!=""){
				for(var x in data){
					document.getElementById("i1").value = data[x].billno;
					document.getElementById("i2").value = data[x].name;
					document.getElementById("i3").value = data[x].phnumber;	
				}
				}
				else{
					window.location.replace("emphome.jsp");
				}
				
					
			}
		};
	}
	</script>
	
	
	<script type="text/javascript">
	 function generate(){
			var xhtml = new XMLHttpRequest();
			var url = "http://localhost:8080/api/billit";
			xhtml.open("POST", url, true);
			xhtml.setRequestHeader('Content-Type','application/json');	
			var x = Math.floor((Math.random() * 100000000) + 1);
			xhtml.send(JSON.stringify({
				address : i5.value,
			      billdate : i8.value,
			        caterogy : i7.value,
			        duedate : i9.value,
			        ero : i6.value,
			        name : i2.value,
			        paymentno : x,
			        phno : i3.value,
			        sectionoffice : i4.value,
			        servicenumber : i1.value,
			        units : i10.value,
				}));
			
			
			xhtml.onreadystatechange = function()
			{
				if(this.readyState == 4 && this.status == 200)
				{
					  if(this.responseText=="succefully billed"){
			               document.getElementById("e").innerHTML = "succesfully billed it";
			               document.getElementById("pynb").innerHTML = x;
			        }
			        else
			          document.getElementById("e1").innerHTML = this.responseText;
				}
			};
			
	 }
	
	 function getdate(){
		 var date = new Date();
		 var currentDate = date.toISOString().substring(0,10);
		 var currentTime = date.toISOString().substring(11,16);

		 document.getElementById('i8').value = "11/02/2002";
		 document.getElementById('currentTime').value = currentTime;
		}
	</script>
</html>