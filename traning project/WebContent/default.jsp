<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GFP</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="Main/style7.css" />

<link rel="shortcut icon" type="image/x-icon" href="favicon1.ico" />

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{  
		
	$("#cont1").load('DefaultHome.jsp');
	
		});
function openP2(page)
{
	  $("#content2").load(page);
}

function show(page){
	$("#cont1").empty();
		
		$("#cont1").load(page);
		
	}



</script>
<style type="text/css">


body{margin:0;height:auto;
background-image: url("food-pizza-background-1920-x-1200-id-369786.jpg"); 
background-repeat: no-repeat;
background-attachment: fixed;
background-size:100%;
}




.container {
	width: 1219px;
	
	margin: 0 auto; 
	
}

.header {
	background-color: #FF0000;
	opacity: 0.7;
}


.content {

	padding: 10px 0;
}

.footer {
	padding: 10px 0;
	background-color: black;
}
.top-grid{
	width: 31.33%;
	float: left;
	text-align: center;
	margin-right: 3%;
	font-family: 'Open Sans', sans-serif;
	background:#000000;
	padding: 1.5em 0;
	border-top:5px solid #DA1C1C;
	margin-top: -4em;
	-webkit-box-shadow: 0px 56px 36px -60px #121D12;
	-moz-box-shadow: 0px 56px 36px -60px #121D12;
	-o-box-shadow: 0px 56px 36px -60px #121D12;
	margin-left: 36px;
	position: relative;
	z-index: 1000;
	opacity:0.9;
}

.top-grid h3{
		font-size:1.2em;
	}
.top-grid h3{
	color: white;
	font-size:1.4em;
	text-transform:uppercase;
	font-family:Curlz MT;
}
.top-grid p{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 0.875em;
	color:#816943;
	line-height: 1.5em;
	margin: 0.5em auto 0.8em auto;
	width: 90%;
}
.top-grid img{
	display: inline-block;
}

.mybtn1{
	color: #FFF;
	font-size: 0.875em;
	text-transform: uppercase;
	padding:10px 15px;
	border:none;
	display: inline-block;
	background:#DA1C1C;
	margin-top:10px;
	-webkit-transition: all 0.3s ease-out;
	-moz-transition: all 0.3s ease-out;
	-ms-transition: all 0.3s ease-out;
	-o-transition: all 0.3s ease-out;
	transition: all 0.3s ease-out;
	text-decoration: none;
}
.mybtn1:hover{
	background:#363638;
	color:#FFF;
}

a.button{
text-decoration: none;
}

#mybtn {
	-moz-box-shadow:inset 0px 1px 0px -4px #f29c93;
	-webkit-box-shadow:inset 0px 1px 0px -4px #f29c93;
	box-shadow:inset 0px 1px 0px -4px #f29c93;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #fe1a00), color-stop(1, #ce0100));
	background:-moz-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-webkit-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-o-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-ms-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fe1a00', endColorstr='#ce0100',GradientType=0);
	background-color:#fe1a00;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:18px;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Georgia;
	font-size:14px;
	font-weight:bold;
	padding:9px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #b23e35;}

#mybtn:HOVER {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ce0100), color-stop(1, #fe1a00));
	background:-moz-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-webkit-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-o-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-ms-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ce0100', endColorstr='#fe1a00',GradientType=0);
	background-color:#ce0100;
}
.ca-main{
    font-size: 25px;
    opacity: 0.8;
    text-align: center;
    -webkit-transition: all 200ms linear;
    -moz-transition: all 200ms linear;
    -o-transition: all 200ms linear;
    -ms-transition: all 200ms linear;
    transition: all 200ms linear;
	margin-top:-21px;
	font-family:Curlz MT;
}

</style>
</head>
<body>
<div id=fill></div>
<div class="container" style="width: 1219px;">
  
  <div class="header">
  <div style="background-color: black;height: 38px;">
  <div class="social-icons" style="margin: -13px 0 0 0">
    <ul style="list-style:none;display:inline-flex;">
						<li><a href="#"><img src="Main/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="Main/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="Main/google.png" title="google plus" /></a></li>
					</ul>
    </div></div>
  <a href="#"><img src="gfplogofinal.png" alt="Insert Logo Here" name="Insert_logo" width="150" height="150" id="Insert_logo" style="display:block;" />&nbsp<img src="gfp3.png" width="710" height="150" id="Insert_logo" style="display:block;margin: -170px 0 0 324px;" /> </a>
  <div class="social-icons" style="height: 38px;width: 187px;margin: -189px 178px 0 0;">
  <input id="mybtn" type="button" value="Login | Join Us" onclick="openP2('index.jsp');"/>
  </div>
    
    <!-- end .header -->
  </div>
  <div class="content">
  <div style="height:180px;margin-top:-28px;background-color: black;opacity:0.9;">
    <ul class="ca-menu" style="width: 1326px;">
                    <li>
                        <a href="#" onclick="show('DefaultHome.jsp');">
                            <span class="ca-icon">?</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Home</h2>
                                <h3 class="ca-sub">Welcome</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('DefaultAboutUs.jsp');">
                            <span class="ca-icon">U</span>
                            <div class="ca-content">
                                <h2 class="ca-main">About Us</h2>
                                <h3 class="ca-sub">Brief</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('DefaultContact.jsp');">
                            <span class="ca-icon">c</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Contact Us</h2>
                                <h3 class="ca-sub">Connect</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('menu.html');">
                            <span class="ca-icon">q</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Menu</h2>
                                <h3 class="ca-sub">Food We Provide</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('gallery.html');">
                            <span class="ca-icon">I</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Gallery</h2>
                                <h3 class="ca-sub">Have A Look</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspOnlineOrder.jsp');">
                            <span class="ca-icon">a</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Online Order</h2>
                                <h3 class="ca-sub">OLO</h3>
                            </div>
                        </a>
                    </li>
                </ul>
</div>
<div id="cont1" style="height: 843px;width:1220px; overflow: auto;">
  <!-- end .content --></div>
  
  
  <div class="top-grids">
		 		<div class="wrap" style="display: inline-flex;width: 100%">
			 		<div class="top-grid">
			 			<a href="#"><img src="Main/pencil.png" title="Feedback"></a>
			 			<h3>Feedback</h3>
			 			<a class="mybtn1" href="#" onclick="show('DefaultFeedback.jsp');">Read More</a>
			 		</div>
			 		<div class="top-grid">
			 			<a href="#"><img src="Main/food.png" title="Menu"></a>
			 			<h3>Terms & Conditions</h3>
			 			<a class="mybtn1" href="#" onclick="show('DefaultTerms.jsp');">Read More</a>
			 		</div>
			 		<div class="top-grid last-topgrid">
			 			<a href="#"><img src="Main/location1.png" title="find us"></a>
			 			<h3>Location</h3>
			 			<a class="mybtn1" href="#" onclick="show('DefaultContact.jsp');">Read More</a>
			 		</div>
			 		<div class="clear"> </div>
		 		</div>
		 	</div>
</div>
  <div class="footer">
    <div style="color:white; text-align: center;font-size: small;font-family:Lucida Grande, Tahoma, Arial, Verdana, sans-serif;">
     Copyright:Developed By:Bhanu Priya @Sunsoft Technologies
  <!-- end .footer --></div>
  <!-- end .container --></div>


<div id="content2"></div>

</body>
</html>