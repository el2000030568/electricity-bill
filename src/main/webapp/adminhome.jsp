<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
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
</style>
<meta charset="ISO-8859-1">
<title>dashboard</title>
</head>
<body onload="name()">
<div id="left-border">
<h2 style="position:absolute;top:3px;left:20px;">Welcome to <i class='fab fa-gg' style='font-size:20px;color:black;position: absolute;top:5px;left:140px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B L ,</p></i> 
</h2>
 
 <p id="name" style="position:absolute;top:40px;left:25px;"></p>
 <div style="text-align: center;margin-top:100px;">
   <a href="adminhome.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;" class="active">admin dashboard <i class="fa-solid fa-chart-line"></i></a>
    <a href="createemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:25px;" >Create Employee <i class="fa-solid fa-person-circle-plus"></i></a>
    <a href="vdemployee.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:50px;" >Delete/veiw Employee <i class="fa-solid fa-person-circle-minus"></i></a>
    <a href="empworkload.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:75px;" >upload work load <i class="fa-solid fa-file"></i></a>
    <a href="userrequests.jsp" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:100px;" >user requests <i class="fa-solid fa-person-praying"></i></i></a>
  <a href="http://localhost:8080/admin/logout" style="text-decoration: none;border: none;border-radius:3px;outline: none;padding: 9px 60px;cursor: pointer;position:relative;top:125px;" >logout <i class="fa-solid fa-person-walking-luggage"></i></a>
       
   </div>
</div>


     <div style="position:absolute;left:350px;top:20px;width:50%;height:300px;">
     <h2 style="margin-left:480px;color:grey;">DASHBOARD</h2>
    <canvas id="myChart" style="width:100%;max-width:90%"></canvas>
     <canvas id="myChart2" style="width:40%;max-width:50%;position:absolute;top:340px;left:800px;"></canvas>
      <p style="margin-left:200px;margin-top:30px;" >Total dues Found :- </p>
       <p id="due" style="margin-left:350px;position:absolute;top:426px;color:red;font-weight:560;"> </p>
       
        <p style="margin-left:200px;margin-top:20px;" >Total Cost:- </p>
       <p id="cost" style="margin-left:290px;position:absolute;top:465px;color:red;font-weight:560;"> </p>
     
        
       
     </div>
<p style="margin-left:1200px;position:absolute;top:100px;" >Total Requests:- </p>
 <p id="req" style="margin-left:1320px;position:absolute;top:100px;color:red;font-weight:560;"></p>
 <p style="margin-left:1150px;position:absolute;top:120px;">The User requests is very important for <br>Ebs website to move further </p>
 

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
			     if(this.responseText!="") {
		         document.getElementById("name").innerHTML = this.responseText + " sir,";
		         showdata();
		         showrequest();
		         getdues();
		         getcosts();
		         getrequest();
			     }
			    else
			    window.location.replace("admin.jsp");
				
		}
	};
}

    
      function showdata(){
    	  var xhtml = new XMLHttpRequest();
    		var url = "http://localhost:8080/admin/billsresult";
    		xhtml.open("GET", url, true);
    		xhtml.setRequestHeader('Content-Type','application/json');
    		xhtml.send();
    		xhtml.onreadystatechange = function()
    		{
    			if(this.readyState == 4 && this.status == 200)
    			{
    				     if(this.responseText!="") {
    			        
    				    	 let text = JSON.parse(this.responseText);
    				    	 //let text =["A Keerthi,10", "Ajay,12", "Harsih,1", "yashu,1", "lokii,1", "Yashiwini,1", "M Lokesh,2"];
    				    	  var str = text[0];
    				    	  let count =1;
    				    	  let len = text.length;
    				    	  for(let i in text){
    				    	  var p = text[count];
    				    	  count++;
    				    	  if(count > len){
    				    	  break;
    				    	  }
    				    	  str = str + "," + p;
    				    	  }
    				    	  var str1 = str.split(",");
    				    	  var xv = str1[0] ,yv = str1[1];
    				    	  count = 2;
    				    	  for(let i in str1){
    				    	  count++;
    				    	  if(count>=str1.length)
    				    	  break;
    				    	  if(count%2==0)
    				    	  xv = xv+","+ str1[count];
    				    	  else
    				    	  yv = yv+","+ str1[count];
    				    	  }
    				    	  var x = xv.split(",");
    				    	  var y = yv.split(",");
    				    	  //alert(x);
    				    	  new Chart("myChart", {
    				    	    type: "bar",
    				    	    data: {
    				    	      labels: x,
    				    	      datasets: [{
    				    	    	  backgroundColor: ["#B10DC9", "#FFDC00", "#001f3f", "#39CCCC", "#01FF70", "#85144b", "#F012BE", "#3D9970", "#111111", "#AAAAAA","#0074D9", "#FF4136", "#2ECC40", "#FF851B", "#7FDBFF"]
    				        	  ,
    				    	        data: y
    				    	      }]
    				    	    },
    				    	    options: {
    				    	      legend: {display: false},
    				    	      title: {
    				    	        display: true,
    				    	        text: "Billings of users"
    				    	      }
    				    	    }
    				    	  });   
    				     }
    				   
    					
    			}
    		};
      }
      
      function showrequest(){
    	  
    	  var xhtml = new XMLHttpRequest();
  		var url = "http://localhost:8080/admin/reqresult";
  		xhtml.open("GET", url, true);
  		xhtml.setRequestHeader('Content-Type','application/json');
  		xhtml.send();
  		xhtml.onreadystatechange = function()
  		{
  			if(this.readyState == 4 && this.status == 200)
  			{
  				     if(this.responseText!="") {
  			        
  				    	 let text = JSON.parse(this.responseText);
  				    	 //let text =["A Keerthi,10", "Ajay,12", "Harsih,1", "yashu,1", "lokii,1", "Yashiwini,1", "M Lokesh,2"];
  				    	  var str = text[0];
  				    	  let count =1;
  				    	  let len = text.length;
  				    	  for(let i in text){
  				    	  var p = text[count];
  				    	  count++;
  				    	  if(count > len){
  				    	  break;
  				    	  }
  				    	  str = str + "," + p;
  				    	  }
  				    	  var str1 = str.split(",");
  				    	  var xv = str1[0] ,yv = str1[1];
  				    	  count = 2;
  				    	  for(let i in str1){
  				    	  count++;
  				    	  if(count>=str1.length)
  				    	  break;
  				    	  if(count%2==0)
  				    	  xv = xv+","+ str1[count];
  				    	  else
  				    	  yv = yv+","+ str1[count];
  				    	  }
  				    	  var x = xv.split(",");
  				    	  var y = yv.split(",");
  				    	  //alert(x);
  				    	new Chart("myChart2", {
  				    	    type: "pie",
  				    	    data: {
  				    	      labels: x,
  				    	      datasets: [{
  				    	         backgroundColor: ["#0074D9", "#FF4136", "#2ECC40", "#FF851B", "#7FDBFF", "#B10DC9", "#FFDC00", "#001f3f", "#39CCCC", "#01FF70", "#85144b", "#F012BE", "#3D9970", "#111111", "#AAAAAA"]
  				    	  ,
  				    	        data: y
  				    	      }]
  				    	    },
  				    	    options: {
  				    	      title: {
  				    	        display: true,
  				    	        text: "Requests of the users"
  				    	      }
  				    	    }
  				    	  }); 
  				     }
  				   
  					
  			}
  		};
    	  
      }
      
      function getdues(){
    	  	var xhtml = new XMLHttpRequest();
    	  	var url = "http://localhost:8080/admin/dues";
    	  	xhtml.open("GET", url, true);
    	  	xhtml.setRequestHeader('Content-Type','application/json');
    	  	xhtml.send();
    	  	xhtml.onreadystatechange = function()
    	  	{
    	  		if(this.readyState == 4 && this.status == 200)
    	  		{
    	  		         document.getElementById("due").innerHTML = this.responseText;    	  				
    	  		}
    	  	};
      }
      
      function getcosts(){
  	  	var xhtml = new XMLHttpRequest();
  	  	var url = "http://localhost:8080/admin/tcost";
  	  	xhtml.open("GET", url, true);
  	  	xhtml.setRequestHeader('Content-Type','application/json');
  	  	xhtml.send();
  	  	xhtml.onreadystatechange = function()
  	  	{
  	  		if(this.readyState == 4 && this.status == 200)
  	  		{
  	  		         document.getElementById("cost").innerHTML = this.responseText;    	  				
  	  		}
  	  	};
    }
      function getrequest(){
    	  	var xhtml = new XMLHttpRequest();
    	  	var url = "http://localhost:8080/admin/getcounts";
    	  	xhtml.open("GET", url, true);
    	  	xhtml.setRequestHeader('Content-Type','application/json');
    	  	xhtml.send();
    	  	xhtml.onreadystatechange = function()
    	  	{
    	  		if(this.readyState == 4 && this.status == 200)
    	  		{
    	  		         document.getElementById("req").innerHTML = this.responseText;    	  				
    	  		}
    	  	};
      }
      
      </script>


</html>