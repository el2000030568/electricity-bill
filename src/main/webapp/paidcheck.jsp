<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
.blink {
                animation: blinker 1.1s linear infinite;
                
                
}
            @keyframes blinker {
                80% {
                    opacity: 0;
                    
                }
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
#box{
width:350px;
height:200px;	
background-color:#44C0B5;
position:absolute;
top:200px;
left:630px;
box-shadow:3px 5px 8px black;
border-radius:5px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="status()">
<div id="div1">
		<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B L</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity bill System</p>
</div>
<div id="box">
<h4 style="text-align:center;color:white;">Thank U For Payment</h4>
<p style="position:absolute;top:30px;left:155px;color:white;" id="i1"></p>
<i class="fa-solid fa-square-check blink" style="color:#F5F112;font-size:40px;position:absolute;top:70px;left:160px;"></i>
<p style="position:absolute;top:100px;left:95px;color:white;font-size:13px;font-weight:560;">Payment id:-</p>
<p style="position:absolute;top:100px;left:175px;color:white;font-size:13px;font-weight:560;" id="i2"></p>
<p style="position:absolute;top:120px;left:135px;color:white;font-size:13px;font-weight:560;">Status :- Paid</p>
<form action="userhome.jsp"><button style="width:100px;height:25px;background:transparent;border-radius:3px;position:absolute;top:160px;left:125px;">Home</button></form>
</div>
</body>
<script type="text/javascript">
function status()
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/fecthname";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function() 
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			for(var x in data){
				document.getElementById("i1").innerHTML = data[x].name+",";
				document.getElementById("i2").innerHTML = data[x].paymentno;
				}
				
		}
	};
}

</script>


</html>