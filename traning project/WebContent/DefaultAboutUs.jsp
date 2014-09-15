<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

/*  Contact Form  ============================================================================= */
.section {
	clear: both;
	padding: 0px;
	margin: 0px;
}
.group:before,
.group:after {
    content:"";
    display:table;
}
.group:after {
    clear:both;
}
.group {
    zoom:1;
}
.col{
	display: block;
	float:left;
	margin: 1% 0 1% 1.6%;
}
.col:first-child{
	margin-left:0;
}	
.span_2_of_3 {
	width: 63.1%;
	padding:1.5%; 
}
.span_1_of_3 {
	width: 29.2%;
	padding:1.5%; 
}
.span_2_of_3  h3,
.span_1_of_3  h3 {
	font-family: 'Open Sans', sans-serif;
	font-size: 1.5em;
	color: #363638;
	text-transform: uppercase;
	padding:5px 0;
	margin-bottom:10px;
}
.company-profile{
	position:relative;
	padding-bottom:30px;
}
.company-profile div{
	padding:5px 0;
}
.company-profile span{
	display:block;
	font-size: 0.875em;
	color: #363638;
	padding-bottom:5px;
	font-family: 'Open Sans', sans-serif;
}
.company-profile input[type="text"],.company-profile textarea{
		    padding:8px;
			display:block;
			width:98%;
			border: none;
			outline:none;
			color:#363638;
			font-size:1.2em;
			font-family:Arial, Helvetica, sans-serif;
			border: 1px solid rgba(192, 192, 192, 0.41);
			-webkit-appearance:none;
}
.company-profile input[type="text"]:focus,.company-profile textarea:focus{
	border:1px solid #F1DDBD;
}
.company-profile textarea{
		resize:none;
		height:120px;		
}
.mybutton{
	color: #FFF;
	font-size: 0.875em;
	text-transform: uppercase;
	padding:8px 15px;
	border: 1px solid #EEE;
	display: inline-block;
	background:#BD7F1C;
	border:none;
	outline: none;
	cursor:pointer;
	font-family: 'Open Sans', sans-serif;
	-webkit-appearance:none;
}
.mybutton:hover{
	background:#222;
	color: #FFF;
}
.develope{
}
.develope p{
	font-size: 17px;
color: #7C6E6E;
line-height: 1.8em;
font-family: Arial, Helvetica, sans-serif;
font-weight: bolder;
}
.develope p span a{
	text-decoration:underline;
	color:#947037;
	cursor:pointer;
}
.develope p span a:hover{
	text-decoration:none;
}

#terms{
font-size: x-large;
font-family: Curlz MT;
color:red;
font-size: 21px;
}
</style>
</head>
<body>
<div style="height: 800px;width:100%;background: whitesmoke;">
<div class="contact">
		 		<div class="wrap">
				<div class="section group">				
				<div class="col span_1_of_3">
					<img height="290px" alt="" src="Main/sir_pic.jpg">
					<div class="develope">
				     	<h3>Developed By:</h3>
						    	<p>Bhanu Priya, Roll no:100080303926/210011<br>BFCET, Deon(Bathinda)</p>
				   		
				   	<img height="290px" alt="" src="Main/bhanupriya.jpg">	
				   </div>
      			
				</div>				
				<div class="col span_2_of_3">
				  <div class="company-profile">
				  	
				  	<label ><h3 style="font-family: Curlz MT;text-decoration: underline;">Company Profile</h3></label>
	  <ul id="myList" type="square">
	    <li id="terms"><h5 style="margin: 0;color: black">SUN-SOFT TECHNOLOGY:</h5> is an IT company, providing customized software & internet solutions. We offer a variety of services in the area of software and Web Development.</li>
	    <li id="terms"><h5 style="margin: 0;color: black">OUR TEAM</h5> We have a committed team of  professionals with experience in variety of tools and platforms. Our developers keep themselves updated with the latest technology trends. Our skilled people share a common vision of growth. We do what we believe in, and we believe in what we do.</li>
	    <li id="terms"><h5 style="margin: 0;color: black">OUR BELIEF</h5> We believe in utilizing technology to make thing simple and easy to use. We also believe in thinking ahead and delivering products or services that can fit well with upcoming future technology.</li>
	    <li id="terms"><h5 style="margin: 0;color: black">OUR VISION</h5> We see ourselves as the words leading IT company providing quality solutions backed up by unbeatable customer services.</li>
	    <li id="terms"><h5 style="margin: 0;color: black">GLOABAL VISION</h5> No IT product has physical boundaries and geographical restrictions when it comes to implementation. All our senior professionals and architects carry a global vision and foresight into ever evolving and challenging cross-border IT implementations. All our products come with future proof deliveries and the possibility of your business expansion into new areas & markets globally.</li>
	    </ul>

				    </div>
  				</div>	

</div></div></div>
</div>

</body>
</html>