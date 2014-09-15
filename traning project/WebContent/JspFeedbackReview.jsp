<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table.dark {
	border-collapse:collapse;
	border: 1px solid #1a1a1a;
	margin-left:auto;
	width: inherit;
	}
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
</style>

<script type="text/javascript" src="jquery-1.8.2.min.js">

function fetch(){
	var url="ServletReview";
	$.get(url,function(data,status){
		$('#review').css('display','block');
    	$('#review').empty();
    	$('#review').append('<tr><th>Franchise Email<th>Fname<th>Lname<th>Phone<th>City</tr>');
    	
		
	});
	
}

</script>
</head>
<body>


<table class="dark" id="review">
<tr><th>Name<th>Feedback
<input type="button" value="review" onclick="fetch();">
</table>
						    
						   
</body>
</html>