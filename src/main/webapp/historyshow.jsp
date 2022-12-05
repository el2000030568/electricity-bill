<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="js/jsPDF/dist/jspdf.umd.js"></script>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"> </script>
<style type="text/css">
#div1{
width:101%;
height:80px;
background: url(./images/b1.jpg);
position:fixed;
top:0px;
left:-10px;


}
body{
color:black;
font-family: 'Muli',sans-serif;
}

.billclass{
width:730px;
height:440px;
box-shadow: 3px 3px 10px black;
position:absolute;
top:150px;
left:480px;
background: url(./images/border.png);
background-image:2px;
background-size: 108% 50px;
background-repeat: no-repeat;
border-radius:5px;
}
h4{
    font-size: 18px;
    line-height: 10px;
    margin-left:10px;
    color: #fff;
    font-weight: bold;
}
.address{
font-family: "Nunito", "Segoe UI", arial;
font-weight:560;
width:110px;
position:absolute;
top:50px;
left:230px;
color:#414747;
}
.address #i2{
margin-top:-17px;
}
input{
width:200px;
height:23px;
border:1px solid grey;
border-top: 30px solid #0097db3b;
border-radius:4px;
text-align:center;
margin-bottom:15px;
}
.right-row{
position:absolute;
top:60px;
left:470px;
}
.left-row{
position:absolute;
top:210px;
left:20px;
width:100%;
}

.left-row .i8{
position:relative;
top:-213px;
left:250px;
}

.left-row .i9{
position:relative;
top:-428px;
left:490px;
}

#open{
width:400px;
height:710px;
box-shadow: 3px 3px 10px black;
position:absolute;
top:620px;
left:650px;
background: url(./images/border.png);
background-image:2px;
background-size: 108% 50px;
background-repeat: no-repeat;
border-radius:5px;
}

.btn{
     font-weight: 600;
    font-size: 12px;
    line-height: 7px;
    padding: 0.3vh 0.8rem;
    margin: 1px;
    letter-spacing: 0.5px;
    border: solid 2px #ededed !important;
}
.btn p{
color:#4D5252;
}
.btn span{
float: right;
color: #000;
    font-weight: bold;
    margin-left: 10px;
    padding: 5px 7px;
    position: relative;
    top: -23px;
}

#p1{
position:absolute;
top:1340px;
left:820px;
font-weight:560;
}
#p2{
position:absolute;
top:1340px;
left:880px;
font-weight:560;
color:green;
}
#p3{
position:absolute;
top:1400px;
left:760px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="userbill()">

<div id="div1">
		<i class='fab fa-gg' style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B L</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity bill System</p>

</div>
<div id="target"> 
<p id="p11"> </p>
<div class="billclass">
<h4>EBL Electricity Bill </h4>

<i class="fab fa-gg"  style='font-size:50px;color:#414747;position:absolute;top:70px;left:30px;'><h6 style='font-size:13px;position:absolute;top:-25px;left:55px;width:50px;'>Electricity Bill Load</h6></i>
<div class="address" id="adress">
<p id="i1"></p><p id="i2"></p>
</div>
<div class="right-row">
<input type="text" id="i3" readonly><p style="position:absolute;top:-10px;left:45px;font-weight:560;">service number </p> </input><br>
<input type="text" id="i4" style="color:red;font-weight:560;" readonly ><p style="position:absolute;top:58px;left:58px;font-weight:560;">amount due</p> </input>
</div>

<div class="left-row">
<input type="text" id="i5" readonly><p style="position:absolute;top:-10px;left:55px;font-weight:560;">section name </p> </input><br>
<input type="text" id="i6" readonly><p style="position:absolute;top:60px;left:70px;font-weight:560;">category </p> </input><br>
<input type="text" id="i7" readonly><p style="position:absolute;top:130px;left:75px;font-weight:560;">bill date </p> </input><br>

<input type="text" id="i8" class="i8" readonly><p style="position:absolute;top:-10px;left:340px;font-weight:560;">ERO </p> </input><br>
<input type="text" id="i9" class="i8" value="1" readonly><p style="position:absolute;top:60px;left:340px;font-weight:560;">phase </p> </input><br>
<input type="text" id="i10"  style="color:red;font-weight:560;" class="i8" readonly><p style="position:absolute;top:130px;left:330px;font-weight:560;">due date </p> </input><br>

<input type="text" id="i11" class="i9" readonly><p style="position:absolute;top:-10px;left:540px;font-weight:560;">phone number </p> </input><br>
<input type="text" id="i12" class="i9" readonly><p style="position:absolute;top:60px;left:555px;font-weight:560;">billed units </p> </input><br>
<input type="text" id="i13" class="i9" readonly><p style="position:absolute;top:130px;left:555px;font-weight:560;">payment id </p> </input>
</div>
</div>
<div id="open">
<h4>Other charges(Rs.) </h4>
<div class="btn">
<p>Energy Charges </p>
<span id="s1"></span>
</div>
<div class="btn">
<p>Fixed Charges </p>
<span id="s2"></span>
</div>
<div class="btn">
<p>Customer Charges </p>
<span id="s3"></span>
</div>
<div class="btn">
<p>Electricity duty </p>
<span id="s4"></span>
</div>
<div class="btn">
<p>True-Up Charges </p>
<span id="s5"></span>
</div>
<div class="btn">
<p>interstonsed </p>
<span id="s6"></span>
</div>
<div class="btn">
<p>Sur-Charges </p>
<span id="s7"></span>
</div>
<div class="btn">
<p>Grid Charges </p>
<span id="s8"></span>
</div>
<div class="btn">
<p>Adjustment Charges </p>
<span id="s9"></span>
</div>
<div class="btn">
<p>Other Charges </p>
<span id="s10"></span>
</div>
<div class="btn" style="background-color:#6ED3D3;">
<p style="color:red;">Total Amount</p>
</div>
<div class="btn">
<p>Govt.Subsidy </p>
<span>0.00</span>
</div>
<div class="btn">
<p>Aqua.Subsidy </p>
<span>0.00</span>
</div>
<div class="btn">
<p>True-up.Subsidy </p>
<span>0.00</span>
</div>
<div class="btn" style="background-color:#6ED3D3;">
<p style="color:red;">Net Bill Amount</p>
<span id="s11"></span>
</div>
</div>
</div>  
<form action="userhome.jsp" >
<button style="position:absolute;top:1380px;left:870px;background-color:#6ED3D3;border-radius:2px;border:none;width:120px;height:25px;">Home <i style="color:red;" class="fa-solid fa-house-fire"></i></button></form>
<button id="cmd"  style="position:absolute;top:1380px;left:730px;background-color:#6ED3D3;border-radius:2px;border:none;width:120px;height:25px;">Download <i style="color:black;" class="fa-solid fa-download"></i></button>
<p id="p1">status :<p><p id="p2">Paid</p><p id="p3">Don't Cross ur Limit you Under EBL</p>
</body>
<script type="text/javascript">
function userbill() 
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
				document.getElementById("i2").innerHTML = data[x].address;
				document.getElementById("i3").value = data[x].servicenumber;
				document.getElementById("i4").value = data[x].cost;
				document.getElementById("i5").value = "XXXXXXXXXXXX";
				document.getElementById("i6").value = data[x].caterogy;
				document.getElementById("i7").value = data[x].billdate;
				document.getElementById("i8").value = data[x].ero;
				document.getElementById("i10").value = data[x].duedate;
				document.getElementById("i11").value = data[x].phno;
				document.getElementById("i12").value = data[x].units;
				document.getElementById("i13").value = data[x].paymentno;
				document.getElementById("s1").innerHTML = data[x].cost;
				document.getElementById("s2").innerHTML = data[x].fixedcharges;
				document.getElementById("s3").innerHTML = data[x].customercharges;
				document.getElementById("s4").innerHTML = data[x].electricityduty;
				document.getElementById("s5").innerHTML = data[x].True_up;
				document.getElementById("s6").innerHTML = data[x].interestoned;
				document.getElementById("s7").innerHTML = data[x].surcharge;
				document.getElementById("s8").innerHTML = data[x].gridcharges;
				document.getElementById("s9").innerHTML = data[x].adjustment;
				document.getElementById("s10").innerHTML = data[x].othercharges;
				document.getElementById("s11").innerHTML = data[x].cost;
				document.getElementById("csub").value = "pay "+data[x].BILL_AMT;
				document.getElementById("p11").innerHTML = data[x].id;
				
			}
				
		}
	};
}


</script>

<script>
var doc = new jsPDF();
var specialElementHandlers = {
    '#editor': function (element, renderer) {
        return true;
    }
};

//margins.left, // x coord   margins.top, { // y coord
$('#cmd').click(function () {
    doc.fromHTML($('#target').html(), 15, 15, {
        'width': 700,
        'elementHandlers': specialElementHandlers
    });
    doc.save('ebspaymentslip.pdf');
});
</script>
</html>