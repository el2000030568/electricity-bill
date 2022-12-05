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
 table{
	position: absolute;
  top: 150px;
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
 
 
</style>

<title>Insert title here</title>
</head>
<body onload="table()">
<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:48px;left:760px;'><p style='font-size:20px;position:absolute;top:-15px;left:40px;width:160px;'>E B L</p></i>
<button onclick="ExportToExcel('xlsx')" style="border-radius:5px;position:absolute;top:80px;left:750px;height:25px;background-color:white;">download excel</button>
<input type="text" id="id" maxlength="3" style="width:100px;background:transparent;border:1px solid white;color:white;position:absolute;top:120px;left:750px;"/>
<button style="position:absolute;top:120px;left:870px;" onclick="deleterequest()">delete</button>

<div id="display"></div>

</body>
<script type="text/javascript">
function ExportToExcel(type, fn, dl) {
    var elt = document.getElementById('display');
    var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
    return dl ?
      XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }):
      XLSX.writeFile(wb, fn || ('requests.' + (type || 'xlsx')));
 }
function table(){
	var xhtml = new XMLHttpRequest();
	//var E = document.getElementById("events");
	var url = "http://localhost:8080/user/employeeView";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();

	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			 
			var data = JSON.parse(this.responseText);
			var table = "<table>";
			table += "<tr> <th>ID</th> <th>Service Number</th> <th>Customer Name</th> <th>Phone</th> <th>Requests</th></tr>";
			for(var x in data)
			{
				table += "<tr><td>"+ data[x].id +"</td><td>"+ data[x].scno +"</td> <td>"+ data[x].name +"</td> <td>"+ data[x].phno +"</td> <td>"+data[x].comment+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='userbillshow.jsp'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='#' onclick=\"newTabOpen('"+data[x].id+"')\">"+data[x].servicenumber+"</a> </td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
	};
	
}
function deleterequest(){
	if(id.value.length > 0){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/deleterequest/"+id.value;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	window.location.replace("requests.jsp");
	}
	else{
		document.getElementById("id").style.border = "1px solid red";
	}
}
</script>
</html>