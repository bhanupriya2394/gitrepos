<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Franchise Chat</title>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
/////////////////////////////////////////////////////////
$(document).ready(function()
		{   
			fetchMsg();
		
		});
///////////////////////////////////////////////////////////////////////////////
function fetchMsg(){
	var id1='<%=session.getAttribute("email")%>';
	//var id="bhanupriya2394@gmail.com";
	//var id=$("#allfranchisee").val();
	$.ajax({
		url:"ServletFetchChat",
		type:"get",
		cache:false,
		dayaType:'json',
		data:"id="+id1,
		success:function(data){
			//alert(data);
			//alert(data[1].fid);
			$('#chat').empty();
			var tr=$('#chat');
			tr=$('#chat').append('<tr><th></th><th>Message</th></tr>');
			
			for ( var i = 0; i < data.length; i++) {

				//tr = $('<tr>');
				var v=data[i].fid;
				if(v=="franchisee"){
					 tr = $('<tr>');
				  	tr.append("<td><img src='1397468278_mail2_send.png'</td>");
					tr.append("<td>" + data[i].msg + "<div id='tm'>"+data[i].cdt+"</div></td>");
		           // tr.append("<td>" + data[i].cdt + "</td>"); 
		            $('#chat').append(tr);
		            }
				else if (v=="franchiser") {
					tr = $('<tr>');
				    tr.append("<td style='background:#A82828'><img src='1397468264_stock_mail-receive.png'</td>");
					tr.append("<td style='background:#A82828'>" + data[i].msg +  "<div id='tm'>"+data[i].cdt+"</div></td>");
		          //  tr.append("<td style='background:grey'>" + data[i].cdt + "</td>"); 
		            $('#chat').append(tr);
				}
			}
		}
	});
}



//////////////////////////////////////////////////////////////////////////////////
function save(){
	
	var msg=$("#msg").val();
	var eid='<%=session.getAttribute("email")%>';
	var id="franchisee";
	//var url="ServletChatFranchiser";
	$.ajax({
		url:"ServletChatFranchiser",
		type:"get",
		cache:false,
		dayaType:'json',
		data:"id="+id+"&msg="+msg+"&eid="+eid,
		success:function(data){
			alert(data);
			$('#msg').val("");
			
		}
	});
	
	
}
////////////////////////////////////////////////////////////////////////////////
</script>

<style type="text/css">

table.dark {
	border-collapse:collapse;
	border: 1px solid #1a1a1a;
	width:100%;
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
	text-align:left;
	word-break: break-word;}


table.dark th {
	color:#d6d6d6;
	font-family:Arial, Helvetica, sans-serif;
	font-size:75%;
	text-transform:uppercase;
	letter-spacing:0.13em;
	padding:7px;
	background-color:#1c1c1c;
	border-bottom:1px solid #000;
	text-align:left;}

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

	body {
		font-size:100%;}
		
	#tm{
	text-transform: uppercase;
	font-size:x-small;
		height: 28px;
		width: 180px;
		font-family: -webkit-pictograph;
		padding: 5px 0 0 94px;
		font-style: italic;
		margin-left: auto;}

 input[type=text]{
 
 	
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
	width: 24%;
	margin-left: 516px;
	margin-top: 16px;
	cursor: pointer;
	background: rgb(39, 46, 48);
	padding: 8px 5px;
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
	}
	
	
	
	
	#container h1{
	color: black;
	padding: 10px 0 5px 250px;
	
	}
	
	
	
	</style>
</head>
<body onload=" fetchMsg();">
<form action="">


<div id="container"  >

                <h1 style="border-image:url(borderimage1.png) 30 30 stretch; border-width:10px;color:white;">Franchise Chat Module </h1>
			            

<table id="chat" class="dark">
</table>

<p>
<label style="color: black; font-weight: bold;/* margin-left: 450px; */width: 150px; display:block; font-size: xx-large;">Message</label>
<input id="msg" type="text" style="/*margin-left: 450px;*/border:solid 1px #BFBDBD;height: 28px;width: 100%;box-shadow: 2px 2px 0 #828181 inset;">
<input type="button" value="SEND" onclick="save();">
</p>

</div>
</form>
</body>
</html>