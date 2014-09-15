<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Item</title>

<style type="text/css">
#container{

width: 84%;
height: 420px;
border: 1px solid rgba(37, 46, 48, 0.8);
-webkit-box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
-moz-box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
-moz-border-radius: 5px;
border-radius: 5px;
background: #fff004;
/* float: center; */
margin: 0 0 0 70px;

}

label {
	
	color: rgb(56, 43, 43);
font-weight: bold;
margin-left: 66px;
/* width: 125px; */
display: block;
font-size: large;

padding: 100px 0 0 0px;
margin-top: -65px;
}
input[type=text] {
text-transform:capitalize;

border: solid 1px #BFBDBD;
height: 28px;
width: 70%;
box-shadow: 2px 2px 0 #828181 inset;
margin-left: 82px;
margin-top: 5px;
}

input[type=button]{
	width: 34%;
	margin-left: 46%;
margin-top: 37px;
	cursor: pointer;
	background: rgb(39, 46, 48);
	padding: 8px 5px;
	font-family: 'BebasNeueRegular','Arial Narrow',Arial,sans-serif;
	color: #fff;
	font-size: 24px;
	border: 1px solid rgb(28, 108, 122);
	margin-bottom: 10px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
	-moz-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
	box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
	}
	
	input[type=text] {
	padding: 0px 0 0 10px;
}
	
}
</style>

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">

function save(){
	var item=$("#itemname").val();
	var itemtype=$("#itemtype").val();
	var price=$("#price").val();
	var URL="AddNewItemServlet?item="+item+"&itemtype="+itemtype+"&price="+price;
	$.get(URL,function(data,status){
		alert(data);
	});
}

function validateEmpty() {
    var error = "";
    var s=document.getElementById("itemname");
	var cvalue=s.value;
	if (cvalue.length == 0) {
		alert("Fill Item name.\n");
       	
    	 s.style.background = '#ff9';
   	   
    } else {
    	s.style.background = 'white';
    	} 
    return error;
}
function validateEmpty1() {
    var error = "";
    var s1=document.getElementById("itemtype");
	var cvalue1=s1.value;
	if (cvalue1.length == 0) {
		alert("Fill Item Type.\n");
       	
    	 s1.style.background = '#ff9';
   	   
    } else {
    	s1.style.background = 'white';
    	} 
    return error;
}
function validateEmpty2() {
    var error = "";
    var s2=document.getElementById("price");
	var cvalue2=s2.value;
	if (cvalue2.length == 0) {
		alert("Fill price.\n");
       	
    	 s2.style.background = '#ff9';
   	   
    } else {
    	s2.style.background = 'white';
    	} 
    return error;
}
</script>

</head>

<body>
<h1 style="border-image:url(bi-stretch.png) 18 18 stretch; border-width:10px;text-align: center;">Add More Items</h1>
<div id="container">
<div style="margin: 9px 100px 0 100px;
border-image:url(border.png) 18 18 stretch; border-width:10px;">
<label for="Itemname">ITEM</label>
<input type="text" id="itemname" placeholder="pizza" required onblur="validateEmpty();">
<label for="Itemtype">ITEM TYPE</label>
<input type="text" id="itemtype" placeholder="cheese pizza" required onblur="validateEmpty1();">
<label for="Price">PRICE</label>
<input type="text" id="price" placeholder="for eg. 100" required onblur="validateEmpty2();">
<input type="button" id="btn" value="SAVE" onclick="save();">
</div>
</div>
</body>
</html>