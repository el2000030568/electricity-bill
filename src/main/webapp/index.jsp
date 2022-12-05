<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

   body{
   font-family: 'Muli',sans-serif;
   }
          #h1{
                 font-size:20px;
                 position:absolute;
                 left:700px;
                 margin-top:25px;
          }
          #border1{
            width:102%;
            height:750px;
            background-color:grey;
            margin-left:-20px;
          }
          #logo{
          text-align:center;
          position:absolute;
          left:750px;
          top:125px;
          }
          #logo-text{
          text-align:center;
          position:absolute;
          left:670px;
          top:160px;
          }
          #logo-line{
          text-align:center;
          position:absolute;
          left:715px;
          top:198px;
          font-weight: bold;
          font-size:8px;
          }
          
         /* .user{
               width:400px;
               height:400px;
               background-color:#B2AEAD;
               position:relative;
               top:250px;
               left:600px;
               
          } */
          
          #div1{
            width:300px;
            height:300px;
            background-color:#908D8C;
            position:relative;
               top:290px;
               left:100px;
               border-radius: 10px;
          }
          #div1:hover{
            background-color:#f2f2f2;
            transform: translateY(-10px);
            transition: 1s;
          }
          #arrow{
            font-size: larger;
            position: relative;
            font-size:50px;
            top:-330px;
            left: 400px;
          }
          #arrow:hover{
               color: #f2f2f2;
               transform: translateX(10px);
               transition: 1.2s;
          }
          #arrow-1{
            font-size: larger;
            position: relative;
            font-size:50px;
            top:-330px;
            left: 760px;
          }
          #arrow-1:hover{
               color: #f2f2f2;
               transform: translateX(10px);
               transition: 1.2s;
          }
          #arrow-2{
            font-size: larger;
            position: relative;
            font-size:50px;
            top:-330px;
            left: 1150px;
          }
          #arrow-2:hover{
               color: #f2f2f2;
               transform: translateX(10px);
               transition: 1.2s;
          }
          #div2{
            width:300px;
            height:300px;
            background-color:#908D8C;
            position:absolute;
               top: 310px;
               left:500px;
               border-radius: 10px;
          }
          #div2:hover{
            background-color:#f2f2f2;
            transform: translateY(-10px);
            transition: 1s;
          }
          #div3{
            width:300px;
            height:300px;
            background-color:#908D8C;
            position:absolute;
               top: 310px;
               left:930px;
               border-radius: 10px;
          }
          #div3:hover{
            background-color:#f2f2f2;
            transform: translateY(-10px);
            transition: 1s;
          }
          .border{
                   width:1002%;
                   height:100px;
                   background-color:#f2f2f2;
                   position:fixed;
                   top:-10px;
                   left:-15px;
                   display: flex;
                   
          }
          #charge{
            position: relative;
            font-size:50px;
            top:-330px;
            left: 1200px;
          }
          #charge:hover{
            font-size: 60px;
            color:rgb(255, 217, 0);
            transition: 1.2s;
          }
          #logo-1{
            font-size: 40px;
            font-weight:bold;
            position: relative;
            left: 750px;
            top:-10px;
          }
          #logo-1:hover{
            color:#f2f2f2;
            font-size: 45px;
            transition: 1.2s;
          }
          
          
         /* Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Anonymous+Pro);

.line-1{
    position:absolute;
    top:60px;  
    left:680px;
    width: 24px;
    margin: 0 auto;
    border-right: 2px solid rgba(255,255,255,.75);
    font-size: 15px;
    text-align: center;
    white-space: nowrap;
    overflow: hidden;
    transform: translateY(-50%);    
}

/* Animation */
.anim-typewriter{
  animation: typewriter 3s steps(44) 1s 1 normal both,
             blinkTextCursor 50ms steps(1) infinite normal;
}
@keyframes typewriter{
  from{width: 0;}
  to{width: 13em;}
}
@keyframes blinkTextCursor{
  from{border-right-color: orange;}
  to{border-right-color: transparent;}
}
 .blink {
                animation: blinker 1.5s linear infinite;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
            
            
#login{
 width:400px;
 height:250px;
 border-radius:10px;
 border:3px solid #33FFD7;
  border-top:60px solid #33FFD7;
  position:absolute;
  top:900px;
  left:600px;
       
}

#i1{
   width:200px;
   height:30px;
   border-radius:5px;
   border:1px solid black;
   position:absolute;
   left:100px;
   top:100px;
}

#i2{
   width:200px;
   height:30px;
   border-radius:5px;
   border:1px solid black;
   position:absolute;
   left:100px;
   top:160px;
}
#b1{
width:100px;
height:25px;
background-color: transparent;
border:1px solid black;
border-radius:3px;
margin-top:210px;
margin-left:150px; 
}
#b1:focus{
background-color:#33FFD7;
border:none;
color:black;
}


</style>
<meta charset="ISO-8859-1">
<title>Electricity - Bill</title>
</head>
<body>
<div class="border">
      <h1 id="h1">HELLO USERS</h1>
     <p class="line-1 anim-typewriter">Dont Waste Electricity. <i class='fab fa-gg' style='font-size:20px'></i> </p>
</div>
<div id="border1">
     <i id="logo" class='fab fa-gg blink' style='font-size:50px'></i>
     <h2 id="logo-text">Electricity Bill System</h2>
     <p id="logo-line" > Let us take charge of your electrical needs!</p>
     <div id="div1">
        <h3 style='text-align:center;position: relative;top: 20px;'>Pay with login</h3>
        <ul style='position: relative;top:10px;'>
            <li>Enter your scno and passcode to login</li>
            <li>If your <span style='font-weight:600;font-size:small;'> LOGIN </span>for first time follow the steps:
                 <ol><li>Enter your mobilenumber <br> or SCNO</li>
                <li>Enter OTP</li>
                <li>Enter Passcode and confirm passcode</li>
                <li>And Login...<i class="fa-regular fa-face-smile"></i></li>
                </ol>
            </li>
        </ul>
        <i class="fa-solid fa-plug-circle-exclamation" style='font-size:25px;position:relative;left:130px;top:3px;'></i>
     </div>
     
     </div>
      <i class="fa-solid fa-arrow-right-long" id='arrow'></i>

      <div id="div2">
        <i class="fa-solid fa-house-user" style='font-size:20px;margin:20px;margin-left:105px;'></i>
        <h3 style='font-size:18px;margin:-38px;margin-left:140px;'>Home</h3>
       <ul style='margin:45px;margin-left:5px;'>
        <li>After login you have some navigations click on those navigations and refer to ur status.</li>
        <li>Bill Payment</li>
        <li>History</li>
        <li>Status</li>
        <li>In bills it shows you last dues</li>
        <li>Safe and save Electricity</li>
       </ul>
       <i class="fa-solid fa-plug-circle-plus" style='font-size:25px;position:relative;left:130px;top:-15px'></i>
      </div>
      <i class="fa-solid fa-arrow-right-long" id='arrow-1'></i>
      <div id="div3">
        <i class="fa-solid fa-money-bill-1" style='font-size:20px;margin:20px;margin-left:90px;'></i>
        <h3 style='font-size:18px;margin:-38px;margin-left:120px;'>Payments</h3>
        <ul style='margin:45px;margin-left:5px;'>
            <li>Click your Payment roll</li>
            <li>Check your name / address / scno and cost.</li>
            <li>Click pay button</li>
            <li>select payment methods:</li>
            <i class="fa fa-cc-visa" style="font-size:30px;color:rgba(0, 229, 255, 0.711);margin:5px;"></i>
            <i class="fa fa-cc-mastercard" style="font-size:30px;color:rgba(0, 229, 255, 0.589);margin:5px;">></i>
            <i class="fa fa-cc-paypal" style="font-size:30px;color:rgba(0, 229, 255, 0.708);margin:5px;">></i>
            <img src="./images/paytm.png" style='width:35px;' />  
            <img src="./images/apple-pay.png" style='width:35px; margin-left: 5px;' />
            <li>Check ur status</li>
            <i class="fa-solid fa-plug-circle-bolt" style='font-size:25px;margin:15px;margin-left:90px;'></i>
        </ul>
      </div>
      <i class="fa-solid fa-equals" id="arrow-2"></i>
      <i class="fa-solid fa-plug-circle-check" id="charge"></i>

      <h2 style='text-align:center;margin-top: -160px;'>Rembeber our Logo</h2>
      <i class='fab fa-gg' id="logo-1"></i>
      
      <div id="login">
       <h3 style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:10px;left:175px;'>Login <i class="fa-solid fa-boxes-packing" style='color:rgb(194, 193, 193)'></i></h3>
      		<i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:180px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
      <p style='font-size:12px;font-weight:620;position:absolute;top:70px;left:100px;'>Enter scno/phno:-</p>
       <input type="text" placeholder="Enter Scno or phno" id="i1" maxlength="12" />   
        <p style='font-size:12px;font-weight:620;position:absolute;top:130px;left:100px;'>Enter password:-</p> 
        <input type="password" placeholder="Enter Password" id="i2" />
        <p style='font-size:12px;font-weight:620;position:absolute;top:50px;left:180px;color:red;' id="error"></p> 
        <button id="b1" onclick="ulogin()">Login</button>    
      </div>
      <a href="password.jsp" style='position:absolute;top:1230px;left:680px;'> Login for first time or Forgot password ?</a>
      <a href="linkage.jsp" style='position:absolute;top:1260px;left:720px;'> Link/change mobile number</a>
       <a href="emailupdate.jsp" style='position:absolute;top:1290px;left:770px;'> Add/update email</a>
      
      <div style="position:absolute;top:1370px;left:-1px;width:100%;height:100px;background-color:grey;">
      <i class='fab fa-gg' style='font-size:27px;color:rgb(196, 191, 191);position: absolute;top:18px;left:770px;'><p style='font-size:14px;position:absolute;top:-8px;left:30px;width:40px;'>E B L</p></i> 
      <p style="position:absolute;top:30px;left:730px;color:rgb(196, 191, 191);font-weight:560;font-size:13px;">Thank you for using EBL </p>
     <ul>
   <li style="position:absolute;top:70px;left:740px;color:rgb(196, 191, 191);">   <a style="color:rgb(196, 191, 191);font-weight:560;font-size:13px;" href="#">About us</a> </li> 	
    <li style="position:absolute;top:70px;left:830px;color:rgb(196, 191, 191);"> <a style="color:rgb(196, 191, 191);font-weight:560;font-size:13px;" href="#">Support managemnt</a> </li>  </ul>
      
      
   </div>
      
      
</body>
<script type="text/javascript">
function ulogin() 
	{
		var xhtml = new XMLHttpRequest();
		var Eid = document.getElementById("i1");
		var Epass = document.getElementById("i2");
		var url = "http://localhost:8080/user/userlogin/"+ Eid.value +"/" + Epass.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json'); 
		xhtml.send();
		var error = document.getElementById("error");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				//alert(this.responseText);
				var inner1=document.getElementById("i2");
				if(this.responseText == "Error Login"){
					inner1.style.border = "2px solid red"
					
					//document.getElementById("empass").style.border = "2px solid red";
					error.innerHTML = this.responseText;
				}
				else{
					error.style.color = "green";
					inner1.style.border = "2px solid green"
					error.innerHTML = this.responseText;
					window.location.replace("userhome.jsp");
				}
			}
		};
	}
</script>
</html>