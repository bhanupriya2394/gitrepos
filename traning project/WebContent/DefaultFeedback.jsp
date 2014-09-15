<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">

function save(){
	
	var name=$("#name").val();
	var msg=$("#msg").val();
	
	var selected = $("input[type='radio'][name='emot']:checked");
	var feed = selected.val();
	    
	
	var url='ServletFeedback?name='+name+"&msg="+msg+"&feed="+feed
	$.get(url,function(data,status){
    	alert(data);
    	
	});
	
	
}


function shw(){
	$("#fill").css("display","block");
    $("#mainDiv3").show("slow");
    $("#mainDiv3").css("display","block");
	$("#review").css("display","block");
	fetch();
}


function closeDiv()
{
	$("#fill").css("display","none");
	$("#mainDiv3").css("display","none");
	}


function fetch(){
	var url="ServletReview";
	
		$.getJSON(url,function(json)
				 {
			$("#review").css("display","block");
			
			$('#review').empty();
			$('#review').append('<tr><th>Name<th>Msg</tr>');
			
			var tr;
		        for (var i = 0; i < json.length; i++)
		        {
		            tr = $('<tr>');
		          	tr.append("<td>" + json[i].name + "</td>");
		            tr.append("<td>" + json[i].msg + "</td>");
		            $('#review').append(tr);
		        }
		        
			 
		 });	
	
}

</script>

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
#mybutton{
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
#emotion label {
    display: inline-block;
    cursor: pointer;
}


<!--//////////////////////////////// -->

table.dark {
	border-collapse:collapse;
	border: 1px solid #1a1a1a;
	margin-left:auto;
	width: inherit;
	display: none;}
	
table.dark tr {
	color:#d6d6d6;
	font-family:Arial, Helvetica, sans-serif;
	font-size:small;
	letter-spacing:0.13em;
	padding:7px;
	background-color:#1c1c1c;
	border-bottom:1px solid #000;
	text-align:left;
	word-break: normal;}


table.dark th {
	color:#d6d6d6;
	font-family:Arial, Helvetica, sans-serif;
	font-size:100%;
	text-transform:uppercase;
	letter-spacing:0.13em;
	padding:7px;
	background-color:#EE3636;
	border-bottom:1px solid #000;
	text-align:start;}

table.dark td {
	color:#FAFAFA;
	font-family:Arial, Helvetica, sans-serif;
	font-size:100%;
	height:64px;
	padding:-1px;
	background-color: #303030;
	background-image: url("../images/gradient.gif");
	background-repeat: repeat-x;
	border-right:1px solid #1a1a1a;
	word-break:normal;
	text-align: center;}
	 h1 {

	color:white;
	font-size:140%;
	font-weight:normal;
	margin:0px;}
	
	#fill{padding: 0;width: 100%;height: 100%;position: fixed; display: none; background-color:#000;opacity:.6;z-index:100;}
	

</style>
</head>
<body>
<div id=fill></div>
<div style="height: 800px;width:100%;background: whitesmoke;">
<div class="contact">
		 		<div class="wrap">
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>Find Us Here</h3>
			    	 		
			    	 		<div class="map">
			    	 		<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://wikimapia.org/index_wjsl.php#lat=30.211808&amp;lon=74.952204&amp;z=19&amp;m=b&amp;ifr=1&amp;permpoly=9895567" id="map-iframe"></iframe> 
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
				 	 	<p>Email: <span><a href="#">sunSoftTech11@gmail.com</span></a></p></div>
				</div>				
				<div class="col span_2_of_3">
				
				  <div id="feedback" class="contact-form">
				  	<h3>Feedback</h3>
					    <form>
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input name="userName" id="name" type="text" class="textbox"></span>
						    </div>
						    
						    <div>
						    	<span><label>MESSAGE</label></span>
						    	<span><textarea name="userMsg" id="msg"> </textarea></span>
						    </div>
						    
						    <div id=emotion>
						    <label for="happy"><img src="Main/Thumbs_up.png"/></label>
   							 <input type="radio" name="emot"  value="like" />
       							 <label for="sad"><img src="Main/Thumbs_down.png" /></label>
						   	 <input type="radio" name="emot"  value="unlike" />
        					</div>
						    
						   <div style="display: inline-flex;">
						   		<span><input type="button" id="mybutton" value="Submit" onclick="save();"></span>
						  
						   		<span style="margin-left: 20px;"><input type="button" id="mybutton" value="Review" onclick="shw();"></span>
						  </div>
						  
					    </form>



				    </div>
				    
				    
				    



  				</div>	
  				
  				

</div></div></div>
</div>
					<div id="mainDiv3" style="display: none; z-index:989;position:absolute; margin-top: -662px;margin-left: 480px;">
           		
					<div style="width: 30px;height: 30px;background-image: url('cross.ico');float: right;cursor: pointer;z-index: 1052;position: relative;margin: 27px 0 -31px;" onClick="closeDiv();"></div>
            
			
					<h1>Review</h1>
					    
					    	<table id="review" class="dark" style="display: none;">
					    	<tr><th>Name<th>Feedback</tr>
					    	
					    	</table>
						    
						   
						</div>  
					    				    
				<div id="contentr"></div>   
</body>
</html>