<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
body{
     font-family: 'Muli',sans-serif;
 }
 
 #border{
 width:100%;
 height:10%;
 background-color: #E78080;
 position:absolute;
 top:0px;
 left:0px;
 }
 
 #box{
   width:300px;
   height:300px;
   background-color:white;
   box-shadow:5px 1px 8px  black;
   position:absolute;
   top:200px;
   left:650px;
   border-radius:5px;
 }
</style>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>

<div id="border">
 <h1 style="position:absolute;left:770px;font-size:20px;color:white;" > Admin</h1>
<i class='fab fa-gg' style='font-size:20px;color:white;position: absolute;top:35px;left:774px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L</p></i> 
 <p style="position:absolute;left:760px;top:44px;font-size:10px;color:white;"> Electricity Bill Libary </p>
</div>
<div id="box" >
<h3 style="position:absolute;left:120px;top:5px;color:#E78080;"  >LOGIN <i class="fa-solid fa-right-to-bracket"></i></h3>
<p id="an" style="position:absolute;left:36px;top:60px;font-weight:560;font-size:12px;"> admin name :- </p>
<input type="text" id="adminname" style="width:200px;height:20px;position:absolute;top:90px;left:30px;" maxlength="20">

<p id="ap" style="position:absolute;left:36px;top:120px;font-weight:560;font-size:12px;"> admin password :- </p>
<input type="password" id="password" style="width:200px;height:20px;position:absolute;top:150px;left:30px;" maxlength="20">
<p style="text-align:center; margin-top:185px; font-size: 10px;color:red;font-weight:560;" id="error"></p>
<button onclick="alogin()" style="position:absolute;left:76px;top:200px;font-weight:560;font-size:12px;width:150px;height:25px;background-color:#2EEAC5;border-radius:3px;border:none;" >Login <i class="fa-solid fa-person-walking-dashed-line-arrow-right"></i></button>
<p style="position:absolute;top:230px;left:80px;font-size: 10px;" > Terms and policies were appiled </p>
</div>
</body>

<script type="text/javascript">
function alogin() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/admin/loginadmin/"+ adminname.value +"/" + password.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json'); 
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			//alert(this.responseText);
			var inner1=document.getElementById("password");
			var inner2=document.getElementById("adminname");
			if(this.responseText == ""){
				inner1.style.border = "2px solid red";
				document.getElementById("error").style.color ="red";
				inner2.style.border = "2px solid red";
				document.getElementById("error").innerHTML = "wrong password / admin name";
			}
			else{
				inner1.style.border = "2px solid green";
				document.getElementById("error").style.color ="green";
				inner2.style.border = "2px solid green";
				document.getElementById("error").innerHTML = "your logined";
				window.location.replace("adminhome.jsp");
			}
		}
	};
}

</script>

</html>