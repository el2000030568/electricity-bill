<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Employee</title>
<style type="text/css">
body{
     background-color: black;
     font-family: 'Muli',sans-serif;
 }

         /* Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Anonymous+Pro);

.line-1{
    position:absolute;
    top:260px;  
    left:680px;
    width: 24px;
    margin: 0 auto;
    border-right: 2px solid rgba(255,255,255,.75);
    font-size: 20px;
    text-align: center;
    white-space: nowrap;
    overflow: hidden;
    color: white;
    transform: translateY(-50%);    
}
.line-2{
    position:absolute;
    top:285px;  
    left:750px;
    width: 24px;
    height: 200px;
    margin: 0 auto;
    color: white;  
    font-size: 40px;  
}

/* Animation */
.anim-typewriter{
  animation: typewriter 3s steps(44) 1s 1 normal both,
             blinkTextCursor 50ms steps(1) infinite normal;
}
@keyframes typewriter{
  from{width: 0;}
  to{width: 10em;}
}
@keyframes blinkTextCursor{
  from{border-right-color: orange;}
  to{border-right-color: transparent;}
}
#login{
  font-size: 25px;
  color: white;
  position: absolute;
  top: 680px;
  left:800px; 
}
#login:hover{
  font-size: 30px;
  transform: translateY(10px);
  transition: 1.2s;
  color:red;
}
.div1{
  width: 400px;
  height: 350px;
  background-color: rgb(46, 47, 47);
   position: absolute;
   top: 750px;
   left: 620px;
   border-radius:10px;
   border-top: 70px solid rgb(87, 86, 86);
}
#empid{
  width: 200px;
  height: 30px;
  border-radius:5px;
  position: absolute;
  left: 70px;
  top: 80px;
  border: none;
  background-color: rgb(144, 140, 140);
  border-left:50px solid rgb(186, 186, 179);
}
#empass{
  width: 200px;
  height: 30px;
  border-radius:5px;
  position: absolute;
  left: 70px;
  top: 150px;
  border: none;
  background-color: rgb(144, 140, 140);
  border-left:50px solid rgb(186, 186, 179);
}
#error{
  color:rgb(236, 17, 17);
  font-weight:550;
  font-size:15px;
  position: absolute;
  top:174px;
  left:150px;
}
#b1{
  background-color:rgb(164, 170, 170);
  width:150px;
  height:35px;
  border:none;
  border-radius:5px;
  position:absolute;
  top:220px;
  left:130px;
  font-weight:bold;
}
#b1:hover{
  background-color: rgb(15, 220, 217);
  transition: 1s;
}
.blink {
                animation: blinker 1.1s linear infinite;
                
                
}
            @keyframes blinker {
                80% {
                    opacity: 0;
                }
            }

  #div2{
    color:white;
    position: absolute;
    top: 1200px;
    left: 658px;
    width:350px;
  }
</style>
</head>
<body>
    <i class='fab fa-gg' style='font-size:55px;color: white;position: absolute;top: 100px;left: 750px;'></i> 
    <h3 style='color: white;position: absolute;top: 135px;left: 760px;'>EBL</h3>
    <p class="line-1 anim-typewriter">Hello Employeer.....</p>
    <br>
    <p class="line-2"> How is your <span style='color:aqua'> BILLS</span> going  ON <i class="fa-regular fa-lightbulb blink" style='position: relative;top:-40px;'></i> </p>

    <h2 style='color:rgb(255, 255, 255);position:relative;top: 550px;left:615px;'>BE ON TIME TO USERS NEED</h2>
    <ul style='color:white;position:absolute;top:620px;left:700px;'><li>Login with EmpId <li>Enter bill status to the users <i class="fa-solid fa-user-secret" style='color:white;'></i>
    </ul>
    <i class="fa-solid fa-anchor-lock" id="login"></i>
      <div class="div1">
        <i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-60px;left:170px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
         <h3 style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-55px;left:170px;'>Login <i class="fa-solid fa-boxes-packing" style='color:rgb(194, 193, 193)'></i></h3>
         
          <p style='color:rgb(141, 141, 134);font-weight:550;font-size:15px;position: absolute;top:40px;left:70px;'>EMPID : </p>
          <input type="text" id="empid" /> <i class="fa-solid fa-user-tie" style='position: absolute;top:87px;left:85px;color: rgb(65, 65, 65);'></i>
          <p style='color:rgb(141, 141, 134);font-weight:550;font-size:15px;position: absolute;top:114px;left:70px;'>PASSWORD : </p>
          
          <input type="password" id="empass" /> <i class="fa-solid fa-lock" style='position: absolute;top:157px;left:85px;color: rgb(65, 65, 65);'></i>
          <p id="error"></p>
          <button id="b1" onclick="elogin()">start bills <i class="fa-solid fa-play" style='color:rgb(0, 0, 0)'></i></button>
         

         <ul style='color:rgb(151, 156, 156);font-size:10px;font-weight:bold;position:absolute;top:260px;left:115px;'><li>BE FAST AND START</li></ul>
         <i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:300px;left:170px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 

        </div>


        <div id="div2">
           <h4 style='position:relative;left:25px;'>You any Queries contact data centers</h4>
           <h5>Electricity Bill means the invoice sent every month to customers or consumers stating in detail all components, charges or rates that are part of the total amount that every customer or consumer must pay for <span style='margin-left:130px;'>using electricity.</span></h5>
           <i class='fab fa-gg' style='font-size:25px;color:rgb(196, 191, 191);position: absolute;top:160px;left:150px;'><p style='font-size:15px;position:absolute;top:-8px;left:30px;width:40px;'>E B L</p></i> 

        </div>
</body>
<script type="text/javascript">
function elogin() 
	{
		var xhtml = new XMLHttpRequest();
		var Eid = document.getElementById("empid");
		var Epass = document.getElementById("empass");
		var url = "http://localhost:8080/api/employeelogin/"+ Eid.value +"/" + Epass.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		var error = document.getElementById("error");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				//alert(this.responseText);
				var inner1=document.getElementById("empass");
				if(this.responseText == "Keep login"){
					inner1.style.border = "2px solid red"
					
					//document.getElementById("empass").style.border = "2px solid red";
					error.innerHTML = this.responseText;
					inner1.style.borderLeft = "50px solid red";
				}
				else{
					error.style.color = "green";
					error.innerHTML = this.responseText;
					window.location.replace("emphome.jsp");
				}
			}
		};
	}
	</script>
</html>