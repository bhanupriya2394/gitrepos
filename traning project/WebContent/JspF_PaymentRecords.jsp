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
	/*margin-left:450px;*/
	}
	
table.dark tr {
	color:#d6d6d6;
	font-family:Arial, Helvetica, sans-serif;
	font-size:large;
	letter-spacing:0.13em;
	padding:7px;
	background-color:#1c1c1c;
	border-bottom:1px solid #000;
	text-align:center;
	word-break: break-word;}


table.dark th {
	color:#d6d6d6;
	font-family:Arial, Helvetica, sans-serif;
	font-size:75%;
	text-transform:uppercase;
	letter-spacing:0.13em;
	padding:7px;
	background-color: #AA1A1A;
	border-bottom:1px solid #000;
	text-align:center;}

table.dark td {
	color:#FAFAFA;
	font-family:Arial, Helvetica, sans-serif;
	font-size:100%;
	height:64px;
	padding:-1px;
	background-color: #303030;
	background-image: url("../images/gradient.gif");
	background-repeat: repeat-x;
	border-right:1px solid #1a1a1a;}

table.dark h1 {

	color:white;
	font-size:140%;
	font-weight:normal;
	margin:0px;}
legend{display: block;
  border-bottom: 4px dotted rgb(226, 226, 226);
  margin-bottom: 0px;
  font-family: "Courier New",Courier;
font-weight: bolder;
color:rgba(255, 255, 255, 0.48);
font-size: xx-large;}	

#authenticate
{
width: 48px;
height: 48px;
background-repeat: no-repeat;
background-image: url("images/authenticate.png");
cursor: pointer;
text-decoration: underline;
margin: 0 0 0 40px;

}


</style>


<script type="text/javascript" src="jquery-1.8.2.min.js"></script>

<script type="text/javascript">
$(document).ready(function()
		{   
	showAll();
		
		});
function showAll(){
	$.getJSON('ServletF_PaymentRecords',function(json){
	
		var tr;
	//	tr=$('#PaymentRecordTable').append('<tr><td>Email<td>Amount<td>Medium<td>date<td>Check/DD Number<td>Authenticate</tr>');
		for ( var i = 0; i < json.length; i++) {
		//	alert(json[i].emailid);
			tr = $('<tr>');
			tr.append("<td>" + json[i].emailid + "</td>");
            tr.append("<td>" + json[i].amount + "</td>");
            tr.append("<td>" + json[i].medium + "</td>");
            tr.append("<td>" + json[i].date + "</td>");
            tr.append("<td>" + json[i].chknum + "</td>");
            tr.append("<td style='background: white;'><div id='authenticate' onclick='authenticate(\""+json[i].emailid +"\");'></div></td>");
            $('#PaymentRecordTable').append(tr);
		}
	});
	
	
}

function authenticate(email){
	//alert(email);
	var url="ServletFranchiseTable?email="+email;
	$.get(url,function(data,status)
			   {
		           alert(data);
		       }
	     );
	
}
////////////////////////////////////////////////
</script>

</head>
<body>
<div class="dark">

<legend>Payment Records</legend>

<table border="2" id="PaymentRecordTable" class="dark">
<tr><th>Email<th>Amount<th>Medium<th>date<th>Check/DD Number<th>Authenticate</tr>
</table>

</div>
</body>
</html>