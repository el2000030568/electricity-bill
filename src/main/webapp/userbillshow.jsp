<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
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
display:none;
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
#pay{
width:50%;
position:absolute;
top:1390px;
left:500px;
display: none;
}


/*-------------------------------------------------------------------------------------------------------------------*/
.container {
  max-width: 620px;
  margin: 150px auto 100px;
}

.card-image {
  width: 425px;
  position: absolute;
  top: -125px;
  left: 100px;
  z-index: 1;
}

.card-image-shadow {
  position: absolute;
  width: 410px;
  height: 253px;
  top: -113px;
  left: 107px;
  border-radius: 15px;
  box-shadow: -5px 10px 32px 0px #000;
  z-index: 0;
}

.form {
  border-radius: 15px;
  background-color: #fff;
  min-width: 100%;
  padding-top: 165px;
  position: relative;
  box-shadow: -5px 7px 32px 0px rgba(0, 0, 0, 0.35);
}

form {
  padding: 15px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}

.flex-row {
  width: 100%;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}

.flex-column {
  width: 100%;
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
}

input.card-number,
input.card-name,
input.card-cvv,
table {
  width: 100%;
}

.card-number,.card-name,.card-cvv {
  padding: 10px;
  height: 30px;
  font-size: 18px;
  border: 1px solid #ccc;
  border-radius: 5px;
  outline-color: #4183f5;
}

label {
  display: block;
}

.table-column select {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  padding-left: 15px;
  width: 45%;
  height: 40px;
  margin-right: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background: url("https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-arrow-arrows-those-icons-lineal-color-those-icons-1.png");
  background-size: 15px;
  background-repeat: no-repeat;
  background-position-x: 125px;
  background-position-y: center;
  font-size: 18px;
  outline-color: #4183f5;
}

.table-column:last-child {
  width: 40%;
}

.card-submit {
  width: 100%;
  margin: 0 auto;
  color: #fff;
  font-size: 18px;
  height: 50px;
  border: none;
  border-radius: 5px;
  background-color: #2364d2;
  transition: background-color 250ms ease-in-out;
  margin-bottom:10px;
}

.card-submit:hover {
  background-color: #4183f5;
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
<p id="p11"> </p>
<div class="billclass">
<h4>EBL Electricity Bill </h4>

<i class="fab fa-gg"  style='font-size:50px;color:#414747;position:absolute;top:70px;left:30px;'><h6 style='font-size:13px;position:absolute;top:-25px;left:55px;width:50px;'>Electricity Bill Load</h6></i>
<div class="address">
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
<button onclick="opencharges()" id="b1" style="position:absolute;top:620px;left:780px;width:200px;height:30px;background-color:#61B0B0;border:none;border-radius:2px;">see & pay</button>
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
<button onclick="pay()" id="b2" style="margin-left:100px;margin-top:10px;width:200px;height:30px;background-color:#61B0B0;border:none;border-radius:2px;">pay</button>
</div>
<p id="email" style="position:absolute;top:0px;"></p>
<div id="pay">
 <div class="container">
    <div class="form">
      <form action="#">
        <div class="flex-row">
          <label for="card-number" id="fcn">Card Number</label>
          <input name="card-number" class="card-number" type="text" id="cno" onblur="return cardno()" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="19">
        </div>
        <div class="flex-row">
          <label for="card-name" id="fc">Holder Name</label>
          <input name="card-name" class="card-name" type="text" id="cn" onblur="return cardname()" value="">
        </div>
        <div class="flex-row">
          <table>
            <tr>
              <td class="table-column">
                <label for="month" id="fm">Expiration Date</label>
                <select name="month" id="month-select" onblur="return date()">
                  <option  value="" selected disabled>Month</option>
                  <option value="January">January</option>
                  <option value="February">February</option>
                  <option value="March">March</option>
                  <option value="April">April</option>
                  <option value="May">May</option>
                  <option value="June">June</option>
                  <option value="July">July</option>
                  <option value="August">August</option>
                  <option value="September">September</option>
                  <option value="October">October</option>
                  <option value="November">November</option>
                  <option value="December">December</option>
                </select>
                <select name="year" id="year-select" onblur="return date1()">
                  <option value="" selected disabled>Year</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                  <option value="2025">2025</option>
                  <option value="2026">2026</option>
                  <option value="2027">2027</option>
                  <option value="2028">2028</option>
                  <option value="2029">2029</option>
                  <option value="2030">2030</option>
                </select>
              </td>
              <td class="table-column">
                <label for="card-cvv" id="fcvv">CVV</label>
                <input oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"   onblur="return cvv()" id="cardcvv"  name="card-cvv" class="card-cvv" type="password" style="margin-left:-10px;heigth:30px;" maxlength="3" >
              </td>
            </tr>          </table>
        </div>
        </form>
                 <div id="dotp" style="display:none;margin-left:20px;"><td>   <label style="position:absolute;top:468px;left:40px;">OTP</label>     <input maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" id="otp" style="width:300px;height:28px;border:1px solid grey;border-left:80px solid grey;" /> </td><td>   <button onclick="getotp()" id="botp">Get otp</button>         <p id="gotp" style="position:absolute;top:437px;left:430px;font-weight:bold;color:red;">OTP</p></td></div>
        
        <div class="flex-row">
          <input class="card-submit" type="submit" id="csub" onclick="validate()">
        </div>
      
      <img class="card-image" src="https://pngimg.com/uploads/credit_card/credit_card_PNG99.png" alt="Card image">
      <div class="card-image-shadow"></div>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
function hisanddel(eid){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/history/"+eid;
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');	
	xhtml.send(JSON.stringify({
		name : i1.innerHTML,
		address : i2.innerHTML,
		servicenumber : i3.value,
		sectionoffice : i5.value,
		caterogy : i6.value,
		billdate : i7.value,
		ero : i8.value,
		duedate : i10.value,
		phno : i11.value,
		units : i12.value,
		paymentno : i13.value,
		cost : s11.innerHTML,
		fixedcharges : s2.innerHTML,
		customercharges : s3.innerHTML,
		electricityduty	 : s4.innerHTML,
		True_up : s5.innerHTML,
		interestoned : s6.innerHTML,
		surcharge : s7.innerHTML,
		gridcharges : s8.innerHTML,
		adjustment : s9.innerHTML,
		othercharges : s10.innerHTML,
		status : 'paid',
		
		}));
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			if(this.responseText == 'successfull'){
			 window.location.replace("paidcheck.jsp");
			}
			else
				alert(this.responseText);
		}
	};
}



function userbill() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/userbillshow";
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
				document.getElementById("i1").innerHTML = data[x].name+",";
				document.getElementById("i2").innerHTML = data[x].address;
				document.getElementById("i3").value = data[x].servicenumber;
				document.getElementById("i4").value = data[x].BILL_AMT;
				document.getElementById("i5").value = data[x].sectionoffice;
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
				document.getElementById("s11").innerHTML = data[x].BILL_AMT;
				document.getElementById("csub").value = "pay "+data[x].BILL_AMT;
				document.getElementById("p11").innerHTML = data[x].id;
				
			}
			}
			else{
				window.location.replace("index.jsp");
			}
				
		}
	};
}
function getemail() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/getemail";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			if(this.responseText!=""){
			document.getElementById("email").innerHTML =   this.responseText;
			}
			else{
				alert("You not have updated ur email")
				window.location.replace("userhome.jsp");
			}
				
		}
	};
}

function opencharges() {
	 document.getElementById('open').style.display='block';	
}
function pay() {
	document.getElementById('b2').style.display='none';	
	 document.getElementById('pay').style.display='block';	
}
function cardno(){
	var c=document.getElementById("cno").value;
	if(c.length=='' || c.length<19){
		document.getElementById("cno").style.border = "2px solid red";
		document.getElementById("fcn").style.color = "red";
		document.getElementById("fcn").innerHTML = "Enter valid 16 numbers";
		return false;
	}
	else{
		document.getElementById("cno").style.border = "2px solid green";
		document.getElementById("fcn").style.color = "green";
		document.getElementById("fcn").innerHTML = "vaild";
		return true;
	}	
}
function cardname(){
	var c=document.getElementById("cn").value;
	if(c.length=='' || c.length<5){
		document.getElementById("cn").style.border = "2px solid red";
		document.getElementById("fc").style.color = "red";
		document.getElementById("fc").innerHTML = "Enter valid name";
		return false;
	}
	else{
		document.getElementById("cn").style.border = "2px solid green";
		document.getElementById("fc").style.color = "green";
		document.getElementById("fc").innerHTML = "vaild";
		return true;
	}
	
	
}

function cvv(){
	var c=document.getElementById("cardcvv").value;
	if(c.length=='' || c.length<3){
		document.getElementById("cardcvv").style.border = "2px solid red";
		document.getElementById("fcvv").style.color = "red";
		document.getElementById("fcvv").innerHTML = "Enter valid cvv";
		return false;
	}
	else{
		document.getElementById("cardcvv").style.border = "2px solid green";
		document.getElementById("fcvv").style.color = "green";
		document.getElementById("fcvv").innerHTML = "vaild";
		return true;
	}
	
	
}


function date(){
	var c=document.getElementById("month-select").value;
	if(c.length==''){
		alert("Please Select Month");
        thisForm.month.focus();
		return false;
	}
	else{
		return true;
	}	
}
function date1(){
	var y=document.getElementById("year-select").value;
if( y.length == ''){
	alert("Please Select Year");
    thisForm.month.focus();
	return false;
}
else{
	return true;
}	
}
var getemaill;
var textotp;
function getotp(){	
		var otpran =Math.floor((Math.random() * 1000000) + 1);
		textotp = otpran;
		getemail();
		getemaill =  document.getElementById('email').innerHTML;
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/user/mailsend/"+getemaill+"/"+"Welcome to EBL SYSTEM , ONE TIME PASSWORD is " +otpran + " don't share it!";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		alert("OTP sent successfull");
}


function validate(){
	if(date() && date1() && cvv() && cardname() &&  cardno()){
		document.getElementById('dotp').style.display='block';
		document.getElementById('gotp').innerHTML = textotp;
	    let gotpp = document.getElementById('gotp').innerHTML;
		let otpp = document.getElementById('otp').value;
	    var p = document.getElementById('p11').innerHTML;
	    var p1 = document.getElementById('i13').value;
		var ans = gotpp.localeCompare(otpp);
		if(ans==0){
			hisanddel(p1);
			delete1(p);
			getemail();
			var xhtml = new XMLHttpRequest();
			var url = "http://localhost:8080/user/mailpayement/"+getemaill+"/"+"UR Bill was Successfull paid...";
			xhtml.open("GET", url, true);
			xhtml.setRequestHeader('Content-Type','application/json');
			xhtml.send();
			alert(getemaill);
		}
		else{
			alert("enter correct otp");
		}
	}
	
	
}

function delete1(eid){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/delete/"+eid;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
}

</script>
<script type="text/javascript">
document.getElementById('cno').addEventListener('input', function (e) {
	  e.target.value = e.target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
	});
</script>
</html>