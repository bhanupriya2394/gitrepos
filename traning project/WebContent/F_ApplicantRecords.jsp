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
	margin-top: 10px;
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

#accept
{
width:64px; height:64px;background-repeat:no-repeat; 
background-image:url("images/1399723927_clean.png");
cursor:pointer;
text-decoration: underline;
margin: 8px 0 0 2px;

}
#reject
{
 background-image:url("images/1399724052_Cancel.png");
width: 48px;
height: 48px;
background-repeat: no-repeat;
cursor: pointer;
margin: 11px 0 0 11px;
}
#pending
{
width: 64px;
height: 64px;
background-repeat: no-repeat;
cursor: pointer;
margin: 0 -15px 0 15px;
background-image:url("images/1399723684_Hourglass.png");
}

#fill{
padding: 0;
width:68%;
height:67%;
position: fixed;
 display: none;
  background-color:#000;
  opacity:.6;
  z-index:1000;}
	


</style>


<script type="text/javascript" src="jquery-1.8.2.min.js"></script>

<script type="text/javascript">
$(document).ready(function()
		{   
	showAll();
		
		});
////////////////////////////////

///////////////////////////////////////
function showAll()
{
	$.getJSON('F_ApplicantDetailsServlet',function(json){
	 
	 	$('#RequestRecordTable').empty();
	 	var tr;
	 
		tr=$('#RequestRecordTable').append('<tr><th>Email<th>First Name<th>Last Name<th>SiteDetail<th>Proofpic<th>Accept<th>Reject<th>Pending<th>Details</tr>');
		for (var i = 0; i < json.length; i++)
        {
        	tr = $('<tr>');
         	tr.append("<td>" + json[i].email + "</td>");
            tr.append("<td>" + json[i].fname + "</td>");
            tr.append("<td>" + json[i].lname + "</td>");
            tr.append("<td>" + json[i].sitedetails + "</td>");
            tr.append("<td> <a href='uploads/"+json[i].pic +"' target='_blank'> <img src='uploads/" + json[i].pic + "' height=100 width=100/></a></td>");
            tr.append("<td><div id='accept' onclick='status(this.id,"+json[i].rid+","+json[i].phone+");'></div></td>");
            tr.append("<td><div id='reject' onclick='status(this.id,"+json[i].rid+","+json[i].phone+");'></div></td>");
            tr.append("<td><div id='pending' onclick='status(this.id,"+json[i].rid+","+json[i].phone+");'></div></td>");
          //  tr.append("<td><a href='#' onclick=showDiv(\""+json[i].rid+"\")>Details</a>");
            tr.append("<td><a href='#' onclick=showDiv(\""+json[i].email+"\")>Details</a>");
            
        	$('#RequestRecordTable').append(tr);
        }
	});	


	}

/////////////////////////////////////////////////////
function status(value,rid,phone)
{
	//alert(email);
var URL="StatusUpdateServlet?btn="+value+"&rid="+rid+"&phone="+phone;
$.get(URL,function(data,status)
		{
	alert(data);
	
	window.location="JspFranchiserMain.jsp";
	
	});
	
}

///////////////////////////////////////////////////////
function showDiv(eid){
	
	apps(eid);
	$("#fill").css("display","block");
	$("#mainDiv2").css("display","block");
	
}
/////////////////////////////////////////////////
function apps(v)
{

	var url="F_EachApplicantDetails?id="+v;
	$.getJSON(url,function(json)
			 {
		
		var tr;
       for (var i = 0; i < json.length; i++)
       {
       	$('#appsdet').empty();
   		$('#appsdet').append('<tr><th>Fname<th>Lname<th>Phone<th><th>city<th>state<th>country<th>proof<th>lcity<th>lstate</tr>');
   		
           tr = $('<tr>');
         	
           tr.append("<td style='background:#A82828'>" + json[i].email + "</td>");
           
           tr.append("<td>" + json[i].fname + "</td>");
           tr.append("<td>" + json[i].lname + "</td>");
           tr.append("<td>" + json[i].phone + "</td>");
           tr.append("<td>" + json[i].city+ "</td>");
           tr.append("<td>" + json[i].state + "</td>");
           tr.append("<td>" + json[i].country + "</td>");
           tr.append("<td>" + json[i].proof + "</td>");
           tr.append("<td>" + json[i].ocity + "</td>");
           tr.append("<td>" + json[i].ostate + "</td>");
           
           $('#appsdet').append(tr);
       }
		 
	 });
}
function closeDiv(){$("#fill").css("display","none");
$("#mainDiv2").css("display","none");
}


</script>

</head>
<body>
      
 

<div id=fill></div>                      
<div class="dark" >
<legend>Applicant Records</legend>
<table border="2" id="RequestRecordTable" class="dark">
<tr><th>Email<th>First Name<th>Last Name<th>SiteDetail<th>Proofpic<th>Accept<th>Reject<th>Pending<th>Details</tr>
</table>
</div>
<div id="cont"></div>

<div id="mainDiv2" style="display: none; z-index:1000;position:absolute;  margin-top:-138px;">
 <div style="width: 30px;height: 30px;background-image: url('cross.ico');float: right;cursor: pointer;z-index: 1052;position: relative;" onClick="closeDiv();"></div>

<table id="appsdet" class="dark">
<tr><th>email<th>Fname<th>Lname<th>Phone<th>City<th>State<th>Country<th>Proof<th>Location City<th>State</tr>

</table></div>


</body>
</html>