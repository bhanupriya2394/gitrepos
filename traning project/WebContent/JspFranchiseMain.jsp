<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GFP</title>
<link rel="stylesheet" type="text/css" href="cssmenuapplicant/style6.css" />
<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />

<link rel="shortcut icon" type="image/x-icon" href="favicon4.ico" />

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>

<script type="text/javascript">
$(document).ready(function()
		{  
		
	$("#cont").css({'display':'block','overflow':'','height':''}).load('WelcomePageFranchise.jsp');
	
		});
function show(page){
	if (page=='WelcomePageFranchise.jsp') {
		$("#cont").empty();
		$("#cont").css({'display':'block','height':''}).load(page);
	}
	else{
	$("#cont").empty();
	$("#cont").css({'display':'block','overflow':'auto','height':'521px'}).load(page);}
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

	opacity:0.9;
	margin: 0;
	padding: 0;
	color: #000;
	background-image:url("food-pizza-background-1920-x-1200-id-369786.jpg");
	background-size: 100%;
	background-attachment: fixed;
	
}
/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing block. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the blocks, instead of the block elements themselves, gets rid of any box model math. A nested block with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}
/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: none;
}
/* ~~ This fixed width container surrounds all other blocks ~~ */
.container {
	width: 980px;
	//background-color: #FFFFFF;
	margin: 0 auto;
	opacity:0.9; /* the auto value on the sides, coupled with the width, centers the layout */
}
.social-icons li{padding:0 24px 0 0;}
/* ~~ The header is not given a width. It will extend the full width of your layout. ~~ */
header{
	background-color: #FF0000;
	/*background-image: url("cropped-web-header-2.jpg");*/
	opacity:0.8;
}
/* ~~ These are the columns for the layout. ~~ 

1) Padding is only placed on the top and/or bottom of the block elements. The elements within these blocks have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the block itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the block element and place a second block element within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a block set to float right). Many times, padding can be used instead. For blocks where this rule must be broken, you should add a "display:inline" declaration to the block element's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar blocks could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the left instead of the right, simply float these columns the opposite direction (all left instead of all right) and they'll render in reverse order. There's no need to move the blocks around in the HTML source.

*/
.sidebar1 {
	float: left;
	width: 40px;
	
	padding-bottom: 0px;
}
.content {
	padding: 10px 0;
	width: 600px;
	float: left;
}
aside {
	float: left;
	width: 180px;
	background-color: #EADCAE;
	padding: 10px 0;
}
.ca-menu li{
    width: 192px;
    height: 215px;
    overflow: hidden;
    position: relative;
    float:left;
    background: #fff;
    -webkit-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    -moz-box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    box-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    margin-right: 4px;
    -webkit-transition: all 300ms linear;
    -moz-transition: all 300ms linear;
    -o-transition: all 300ms linear;
    -ms-transition: all 300ms linear;
    transition: all 300ms linear;
}

/* ~~ This grouped selector gives the lists in the .content area space ~~ */
.content ul, .content ol {
	padding: 0 15px 15px 40px; /* this padding mirrors the right padding in the headings and paragraph rule above. Padding was placed on the bottom for space between other elements on the lists and on the left to create the indention. These may be adjusted as you wish. */
}

/* ~~ The navigation list styles (can be removed if you choose to use a premade flyout menu like Spry) ~~ */
ul.nav {
	list-style: none; /* this removes the list marker */
	border-top: 1px solid #666; /* this creates the top border for the links - all others are placed using a bottom border on the LI */
	margin-bottom: 15px; /* this creates the space between the navigation on the content below */
}
ul.nav li {
	border-bottom: 1px solid #666; /* this creates the button separation */
}
ul.nav a, ul.nav a:visited { /* grouping these selectors makes sure that your links retain their button look even after being visited */
	padding: 5px 5px 5px 15px;
	display: block; /* this gives the link block properties causing it to fill the whole LI containing it. This causes the entire area to react to a mouse click. */
	width: 160px;  /*this width makes the entire button clickable for IE6. If you don't need to support IE6, it can be removed. Calculate the proper width by subtracting the padding on this link from the width of your sidebar container. */
	text-decoration: none;
	background-color: #C6D580;
}
ul.nav a:hover, ul.nav a:active, ul.nav a:focus { /* this changes the background and text color for both mouse and keyboard navigators */
	background-color: #ADB96E;
	color: #FFF;
}

/* ~~ The footer ~~ */
footer {
	padding: 10px 0;
	background-color: black;
	position: relative;/* this gives IE6 hasLayout to properly clear */
	clear: both; /* this clear property forces the .container to understand where the columns end and contain them */
}
/* ~~ Miscellaneous float/clear classes ~~ */
.fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class can be placed on a <br /> or empty block element as the final element following the last floated block (within the .container) if the footer is removed or taken out of the .container */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}

/*HTML 5 support - Sets new HTML 5 tags to display:block so browsers know how to render the tags properly. */
header, section, footer, aside, article, figure {
	display: block;
}

.id
{
text-align: center;
}
</style>
</head>




<body style="margin: 0 0 0 0">

<div class="container" id="co">
  <header>
  <div style="background-color:black;">
  <div style="background-color: black;height: 40px;">
  
  <table border="2" style="float: right;background-color: crimson;">
<tr>
<td><label>Welcome:-<%=session.getAttribute("email") %></label></td>
</tr>

</table>
  <div class="social-icons" style="float: right;">
    <ul style="list-style:none;display:inline-flex;">
						<li><a href="#"><img src="Main/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="Main/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="Main/google.png" title="google plus" /></a></li>
					</ul>
    </div></div></div>
    <a href="#"><img src="gfplogofinal.png" width="150" height="150" id="Insert_logo" style="display:block;" />&nbsp<img src="gfp3.png" width="710" height="150" id="Insert_logo" style="display:block;margin: -170px 0 0 200px;" /></a>
    
    
  </header>
  
  <div style="height: 215px;margin-top: -18px">
    <ul class="ca-menu">
                    <li>
                        <a href="#" onclick="show('WelcomePageFranchise.jsp');">
                            <span class="ca-icon">?</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Home</h2>
                                <h3 class="ca-sub">Welcome</h3>
                            </div>
                        </a>
                    </li>
                    
                    <li>
                        <a href="#" onclick="show('JspFranchiseChat.jsp');">
                            <span class="ca-icon">d</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Chat</h2>
                                <h3 class="ca-sub">Connect</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspOrder.jsp');">
                            <span class="ca-icon">a</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Order</h2>
                                <h3 class="ca-sub">Have A Meal</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="show('JspCustomerEnquiry1.jsp');">
                            <span class="ca-icon">L</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Sales</h2>
                                <h3 class="ca-sub">Enquiry</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="logOutpage();">
                            <span class="ca-icon">K</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Logout</h2>
                                <h3 class="ca-sub">Have A Good Day</h3>
                            </div>
                        </a>
                    </li>
                </ul>
    
        
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <!-- end .sidebar1 --></div>
  
  
  <div id="cont" style="height: 551px;width: 100%; overflow: scroll; display: block;"></div>
     
    
  <footer>
  <div style="color:white; text-align: center;font-size: small;font-family:Lucida Grande, Tahoma, Arial, Verdana, sans-serif;">
     Copyright:Developed By:Bhanu Priya @Sunsoft Technologies
  <!-- end .footer --></div></footer>
  <!-- end .container --></div>

</body>
</html>