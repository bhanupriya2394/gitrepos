<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Status</title>

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function checkStatus(){
	
	var id=$('#emailid').val();
	var url="CheckStatusServlet?id="+id;
	$.get(url,function(data,status){
		if(data==1){
			$('#pay').css("display","block");
			$('#stat').val("Application Accepted proceed to payment panel");
			
		}
		if(data==2){
			
			$('#pending').css("display","block");
			$('#stat').val("Application Pending.... wait!!");
		}
if(data==0){
			
			$('#stat').val("Application rejected....");
		}
if(data==-1){
	
	$('#stat').val("Application not processed yet....");
}
	
if(data=='enter your details first'){
	alert("enter your details first");
	
}
	});
	
}

function show(page){
	$("#cont").empty();
	$("#cont").css({"height": "521px", "display": "block"}).load(page);
	
}



</script>
<style type="text/css">
#scontainer
{
height: 431px;
width: 88%;
top: 169px;
margin:0;
padding: 18px 6% 60px 6%;
background:rgb(255, 236, 158);
border: 1px solid rgba(147, 184, 189,0.8);
-webkit-box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
-moz-box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
box-shadow: 0pt 2px 5px rgba(105, 108, 109, 0.7),	0px 0px 8px 5px rgba(208, 223, 226, 0.4) inset;
-webkit-box-shadow: 5px;
-moz-border-radius: 5px;
border-radius: 5px;

}
.t1 {


border: solid 1px #BFBDBD;
height: 28px;
width: 70%;
box-shadow: 2px 2px 0 #828181 inset;
margin-left: 82px;
margin-top: 5px;
}
label {
color: rgb(56, 43, 43);
font-weight: bold;
margin-left: 66px;
/* width: 125px; */
display: block;
font-size: large;
padding: 100px 0 0 0px;
margin-top: -100px;
}

input[type=button]{
	width: 34%;
margin-left: 375px;
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
height: 56px;
	}
	
	input[type=text] {
	padding: 0px 0 0 10px;
}

</style>
</head>
<body>
<div id="scontainer">
<form action="">
<div style="border-image:url(borderimage1.png) 30 30 stretch; border-width:10px ">
  <h2 style="text-align: center;">Check Status</h2>  </div>
  <div style="float: center;
margin: 32px 0px 0px 0px;
border-image: url(borderimage1.png) 30 30 stretch;
border-width: 10px;
padding-bottom: 10px;">
<label>
Email Id
</label>
<input class="t1" type="email" id="emailid" tabindex="1" value="<%=session.getAttribute("email") %>" readonly="readonly" required>

<input type="button" id="btn" value="Check" onclick="checkStatus();">
<label>
Status
</label>
<input class="t1" type="text" id="stat" tabindex="2" readonly="readonly" required>

</div>
<div id="pay" style="height: 40px;
width: 352px;
margin: -77px 0px 0px 230px;
display: block;
cursor: pointer;display: none" >

<label style="margin: 0 0 0 0"><h2>Application Accepted<br><a href="#" onclick="show('JspPaymentPanel.jsp');">Click here for Payment...</a></h2></label>

</div>
<div id="pending" style="height: 40px;
width: 352px;
margin: -77px 0px 0px 230px;
display: block;display: none;" >

<label style="margin: 0 0 0 0"><h2>Application Pending</h2></label>

</div>


</form>
</div>
</body>
</html>