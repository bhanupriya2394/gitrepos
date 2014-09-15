<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href= "cssmenuapplicant/style1.css"/>
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
<link rel="shortcut icon" type="image/x-icon" href="favicon3.ico" />

<script type="text/javascript" src="jquery-1.8.2.min.js">

</script>
<script type="text/javascript">
$(document).ready(function()
		{  
	$("#contentd").css("display","block").load('WelcomePageFranchiser.jsp');
	});
		
function show(page){
	//$("#contentd").empty();
	$("#contentd").css("display","block").load(page);
}

function logOutpage(){
	var url="ServletSessionInvalidate";
	$.get(url,function(data,status){
		if(data=="1"){
			window.location="default.jsp";
		}
	});
}


function DisableBackButton()
{
  window.history.forward();
}

DisableBackButton();
window.onload=DisableBackButton();
window.onpageshow=function(evt)
{
	if(evt.persisted)
    DisableBackButton();
}
window.onunload=function()
{void(0)}
</script>
<style type="text/css">



body {
	
	background-image:url("food-pizza-background-1920-x-1200-id-369786.jpg");
	margin: 0;
	padding: 0;
	color: #000;
	background-size:100%;
	background-attachment: fixed;
	background-repeat: no-repeat;
}




/* ~~ this fixed width container surrounds the other divs ~~ */
.container {
	width: 1349px;
	background-color:#F11515;
	margin: 0 auto;
	opacity:0.9; /* the auto value on the sides, coupled with the width, centers the layout */
}

/* ~~ the header is not given a width. It will extend the full width of your layout. It contains an image placeholder that should be replaced with your own linked logo ~~ */
.header {
	background-color: #2ACC0C;
}

/* ~~ This is the layout information. ~~ 

1) Padding is only placed on the top and/or bottom of the div. The elements within this div have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

*/

.content {

	padding: 10px 0;
}

/* ~~ The footer ~~ */
.footer {
	padding: 10px 0;
	background-color: black;
}


<!--/////////////////////-->
 @font-face {
    font-family: 'WebSymbolsRegular';
    src: url('websymbols/websymbols-regular-webfont.eot');
    src: url('websymbols/websymbols-regular-webfont.eot?#iefix') format('embedded-opentype'),
         url('websymbols/websymbols-regular-webfont.woff') format('woff'),
         url('websymbols/websymbols-regular-webfont.ttf') format('truetype'),
         url('websymbols/websymbols-regular-webfont.svg#WebSymbolsRegular') format('svg');
    font-weight: normal;
    font-style: normal;
} 
.ca-menu li{
    width: 382px;
    height: 100px;
    overflow: hidden;
    display: block;
    background: #fff;
    -webkit-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    -moz-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    margin-bottom: 4px;
    border-left: 10px solid #000;
    -webkit-transition: all 300ms ease-in-out;
	-moz-transition: all 300ms ease-in-out;
	-o-transition: all 300ms ease-in-out;
	-ms-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
}
.social-icons li{padding:0 24px 0 0;}
</style>
</head>

<body>

<div class="container">
  <div class="header">
  <div style="background-color:black;">
  <div class="social-icons" style="margin: -14px 0 0 1165px;height: 50px;">
    <ul style="list-style:none;display:inline-flex;">
						<li><a href="#"><img src="Main/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="Main/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="Main/google.png" title="google plus" /></a></li>
					</ul>
    </div></div>
  <a href="#"><img src="gfplogofinal.png" alt="Insert Logo Here" name="Insert_logo" width="150" height="150" id="Insert_logo" style="display:block;" />&nbsp<img src="gfp3.png" width="710" height="150" id="Insert_logo" style="display:block;margin: -170px 0 0 400px;" /></a> 
    <!-- end .header --></div>
  <div class="content" style="display: inline-flex;">
    <div style="width: 392px;">
    <ul class="ca-menu">
                    <li>
                        <a href="#" onclick="show('WelcomePageFranchiser.jsp');">
                            <span class="ca-icon">?</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Home</h2>
                                <h3 class="ca-sub">Welcome</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspItemKeeperFranchiser.jsp');">
                            <span class="ca-icon">+</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Item Keeper</h2>
                                <h3 class="ca-sub">Add More To Menu</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspAllFranchisee.jsp');">
                            <span class="ca-icon">U</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Franchisee Grid</h2>
                                <h3 class="ca-sub">Our Circle</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspCustomerEnquiry.jsp');">
                            <span class="ca-icon">S</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Sales Enquiry</h2>
                                <h3 class="ca-sub">Enquiry</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a href="#" onclick="show('JspFranchiserChat.jsp');">
                            <span class="ca-icon">d</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Chat</h2>
                                <h3 class="ca-sub">Connect with circle</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('F_ApplicantRecords.jsp');">
                            <span class="ca-icon">a</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Applications</h2>
                                <h3 class="ca-sub">Check It Out</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a href="#" onclick="show('JspF_PaymentRecords.jsp');" >
                            <span class="ca-icon">z</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Payments</h2>
                                <h3 class="ca-sub">Authenticate</h3>
                            </div>
                        </a>
                    </li>
                     <li>
                        <a href="#" onclick="logOutpage();">
                            <span class="ca-icon">K</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Logout</h2>
                                <h3 class="ca-sub">Good Day</h3>
                            </div>
                        </a>
                    </li>
                </ul>
    
    
    </div>
    <div id="contentd" style="width: 930px;margin-left: 20px;overflow: auto;height: 860px;margin-top: 14px;display: none;">
    
    </div>
  </div>
  <div class="footer">
    <div style="text-align: center;font-size: small;font-family:Lucida Grande, Tahoma, Arial, Verdana, sans-serif;color: white;">
     Copyright:Developed By:Bhanu Priya @Sunsoft Technologies
  </div>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>