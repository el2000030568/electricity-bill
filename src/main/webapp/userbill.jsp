<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>
otp
</title>
</head>

<body onload="otp()">

<p id="op"> </p>

</body>
<script type="text/javascript">
function otp(){
	
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/otp";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
		         document.getElementById("op").innerHTML = this.responseText;
				
		}
	};
	
}

</script>
</html>