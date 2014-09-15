<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Enquiry</title>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">

$(document).ready(function()
		{   
	fillcombo();
		
		});


//////////////////////////////////////////////////////////////////////////////////
function fillcombo(){
	//$("#allfranchisee").empty();
	var URL="ServletFetchFranchisee";
	$.get(URL,function(data,status){
		$("#allfranchisee").empty();
		$("#allfranchisee").append(new Option("----------Select--------","select"));
	var arry=data.split(",");
		for ( var i = 0; i < arry.length; i++) {
			$("#allfranchisee").append(new Option(arry[i],arry[i]));
		}
	});
}
	

//////////////////////////////////////////////////////////////////////////////////
function google(){
	var emailid=$("#allfranchisee").val();
	var from=$("#sdate").val();
	var to=$("#edate").val();
	var url="ServletCustomerEnquiry?from="+from+"&to="+to+"&email="+emailid;
	$.getJSON(url,function(json)
			 {
		$('#sales').css('display','block');
		$('#sales').empty();
		$('#sales').append('<tr><th>Franchise Email<th>Fname<th>Lname<th>Phone<th>Address<th>Full-Order<th>Bill</tr>');
		 var tr;
	        for (var i = 0; i < json.length; i++)
	        {
	            tr = $('<tr>');
	          	
	            tr.append("<td style='background:#A82828'>" + json[i].Femail + "</td>");
	            
	            tr.append("<td>" + json[i].fname + "</td>");
	            tr.append("<td>" + json[i].lname + "</td>");
	            tr.append("<td>" + json[i].phone + "</td>");
	            tr.append("<td>" + json[i].address + "</td>");
	            tr.append("<td>" + json[i].fullorder + "</td>");
	            tr.append("<td>" + json[i].bill + "</td>");
	            $('#sales').append(tr);
	        }
	        
		 
	 });
	
}
////////////////////////////////////////////////////////////////////////////////

</script>

<style type="text/css">
table.dark {
	border-collapse:collapse;
	border: 1px solid #1a1a1a;
	margin-left:0px;
	
	width: 99%;
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

table.dark h1 {

	color:white;
	font-size:140%;
	font-weight:normal;
	margin:0px;}

	body {
		font-size:100%;}
		
	#tm{
	text-transform: uppercase;
	font-size:x-small;
		height: 28px;
		width: 164px;
		font-family: -webkit-pictograph;
		padding: 5px 0 0 94px;
		font-style: italic;
		margin-left: auto;}

 input[type=text]{
 
 	width: 92%;
 	font-family: arial;
	font-size: larger;
	margin-top: 20px;
	padding: 7px 1px 10px 0px;	
	border: 1px solid rgb(178, 178, 178);
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
	-moz-box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
	box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

input[type=button]{
	width: 15%;
/* margin-left: 48%; */
margin-top: -12px;
cursor: pointer;
background: rgb(39, 46, 48);
padding: 8px 7px;
font-family: 'BebasNeueRegular','Arial Narrow',Arial,sans-serif;
color: #fff;
font-size: 24px;
border: 1px solid rgb(28, 108, 122);
margin-bottom: 10px;
text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);
-webkit-border-radius: 3px;
-moz-border-radius: 3px;
border-radius: 3px;
-webkit-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
-moz-box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
box-shadow: 0px 1px 6px 4px rgba(0, 0, 0, 0.07) inset,0px 0px 0px 3px rgb(254, 254, 254),0px 5px 3px 3px rgb(210, 210, 210);
-webkit-transition: all 0.2s linear;
-moz-transition: all 0.2s linear;
-o-transition: all 0.2s linear;
transition: all 0.2s linear;
margin-left: 17px;
	}
	
	
	#container{
	height: 100%;
	width: 100%;
	
	}
	
	#container h1{
	color: white;
	
	
	}
	
	
	#waitt{
	position: fixed;
	margin-top: 20%; margin-left: 50%;
	background-image: url(loading.gif);
	width: 100px;
	height: 100px;
	display: none;
	}
	
	select{
		width: 443px;
		height: 41px;
		padding: 3px;
		-webkit-border-radius: 4px;
		border-radius: 4px;
		-webkit-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
		color: #888;
		border: 1px solid rgb(178, 178, 178);
		outline: none;
		display: inline-block;
		-webkit-appearance: none;
		cursor: pointer;
		margin-top: 10px;
}
	#sl {position:relative}
	
	#sl:after {
    	content:'<>';
    	font:11px "Consolas", monospace;
    	color:#aaa;
    	-webkit-transform:rotate(90deg);
    	-moz-transform:rotate(90deg);
    	-ms-transform:rotate(90deg);
    	transform:rotate(90deg);
    	right:8px; top:2px;
    	padding:0 0 2px;
    	border-bottom:1px solid #ddd;
    	position:absolute;
    	pointer-events:none;
}

#sl:before {
    	
    	right:6px; top:0px;
    	width:20px; height:20px;
    	background:#f8f8f8;
    	
    	pointer-events:none;
    	display:block;
}
	
	
	</style>
</head>
<body >
<form action="">


<div id="container" >

                <h1>Sales Enquiry </h1>

<label style="color: white; font-weight: bold; display:block; font-size: large;">Choose Franchise</label>
<label id="sl">  <select id="allfranchisee" name="allfranchisee">
                             <option value=" " selected="selected">------------Select-----------</option>
                             </select></label>

<label style="color: white; font-weight: bold; margin-top: 10px; display:block; font-size: large;">From</label>
<input id="sdate" type="date" style="border:solid 1px #BFBDBD;padding-left: 10px;height: 28px;width: 14%;box-shadow: 2px 2px 0 #828181 inset;">

<label style="color: white; font-weight: bold; display:block; font-size: large; margin-top: 15px;">To</label>
<input id="edate" type="date" style="border:solid 1px #BFBDBD;padding-left: 10px;height: 28px;width: 14%;box-shadow: 2px 2px 0 #828181 inset;">

<input type="button" value="Google" onclick="google();">


<table id="sales" class="dark">
<tr><th>Email<th>Phone<th>Fname<th>Lname<th>Address<th>Full-Order<th>Bill</tr>

</table>
</div>
</form>
</body>
</html>