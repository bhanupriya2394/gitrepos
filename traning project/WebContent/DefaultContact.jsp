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
.contact-form{
	position:relative;
	padding-bottom:30px;
}
.contact-form div{
	padding:5px 0;
}
.contact-form span{
	display:block;
	font-size: 0.875em;
	color: #363638;
	padding-bottom:5px;
	font-family: 'Open Sans', sans-serif;
}
.contact-form input[type="text"],.contact-form textarea{
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
.contact-form input[type="text"]:focus,.contact-form textarea:focus{
	border:1px solid #F1DDBD;
}
.contact-form textarea{
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
.company_address{
}
.company_address p{
	font-size: 0.875em;
	color:#816943;
	line-height: 1.8em;
	font-family: Arial, Helvetica, sans-serif;
}
.company_address p span a{
	text-decoration:underline;
	color:#947037;
	cursor:pointer;
}
.company_address p span a:hover{
	text-decoration:none;
}
.map{
	margin-bottom:15px;
}
</style>
</head>
<body>
<div style="height: 800px;width:100%;background: whitesmoke;">
<div class="contact">
		 		<div class="wrap">
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>Find Us Here</h3>
			    	 		
			    	 		<div class="map">
			    	 		<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://wikimapia.org/index_wjsl.php#lat=30.211808&amp;lon=74.952204&amp;z=19&amp;m=mh&amp;ifr=1&amp;permpoly=9895567" id="map-iframe"></iframe> 
			    	 		</div>
                            
                            
      				</div>
      			<div class="company_address">
				     	<h3>Information :</h3>
						    	<p>Sun-Soft Technologies</p>
						   		<p>(ISO 9001-2008 Certified)</p>
						   		<p>Om Complex, Ajit Road</p>
						   		<p>Bathinda</p>
				   		<p>Phone:9872246056</p>
				   		<p>Office:0164-5000974</p>
				 	 	<p>Email: <span><a href="#">sunSoftTech11@gmail.com</span></a></p>
				   		</div>
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Contact Us</h3>
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>MOBILE</label></span>
						    	<span><input name="userPhone" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="mybutton" value="Submit"></span>
						  </div>
					    </form>

				    </div>
  				</div>	

</div></div></div>
</div>

</body>
</html>