<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{   
			fetch();
		
		});
		
function fetch(){
	var url="ServletFetchFranchise";
    $.get(url,function(data,status){
    	$('#frachisee').css('display','block');
    	$('#frachisee').empty();
    	$('#frachisee').append('<tr><th>Franchise Email<th>Fname<th>Lname<th>Address<th>Phone<th>City</tr>');
    	var tr;
        for (var i = 0; i < data.length; i++)
        {
        	tr = $('<tr>');
          	
            tr.append("<td style='background:#A82828'>" + data[i][0].email + "</td>");
            
            tr.append("<td>" + data[i][0].fname + "</td>");
            tr.append("<td>" + data[i][0].lname + "</td>");
            tr.append("<td>" + data[i][0].address + "</td>");
            tr.append("<td>" + data[i][0].phone + "</td>");
            tr.append("<td>" + data[i][0].ocity + "</td>");
            
            
            $('#frachisee').append(tr);
        	
        }
	});
	
	
}		

</script>
<style type="text/css">

table.dark {
	border-collapse: collapse;
border: 1px solid #1a1a1a;
margin-left: auto;
width: 617px;
margin: 10px 0px 2px 5px;
display: none;
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

table.dark h1 {

	color:white;
	font-size:140%;
	font-weight:normal;
	margin:0px;}

</style>
</head>

<body>
<h1>Franchise Details</h1>
<table id="frachisee" class="dark">
<tr><th>Franchise Email<th>Fname<th>Lname<th>Address<th>Phone<th>City<th>Country

</table>


</body>
</html>