<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="generator" content="Wufoo">
<meta name="robots" content="index, follow">

<!-- CSS -->

<link href="css/payment_form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/payment.js"></script> 
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{   
			fill();
		
		});

function save(){
	
//	alert("hi");
//	alert($("#id").val());
	var email=$("#id").val();
	var amount=$("#amount").val();
	var medium=$("#medium").val();
	var date=$("#idate").val();
	var chknum=$("#chknum").val();
	//alert(email+" "+amount+" "+medium+" "+date+" "+chknum+" ");
	var URL="ServletPaymentDetails?email="+email+"&amount="+amount+"&medium="+medium+"&date="+date+"&chknum="+chknum;
	$.get(URL,function(data,status){
		
		alert(data);
		
	});
}

function fill(){
	
	var email=$("#id").val();
	$.ajax({
        url:"ServletFetchPaymentDetails",
        type:"get",
        dataType:'json',
        cache:false,
        data:"email="+email,
        success:function(data){
        	alert(data);
        	if(data!=null){
        		alert(data.email);
        		$("#id").val(data.email);
          		$("#amount").val(data.amount);
        	  	$("#medium").val(data.medium);
        	  	$("#idate").val(data.date);
        	  	$("#chknum").val(data.chknum);
        	  	
        	}
        	else{
        		alert("insert data");
        	}
        	
        }
   });
}

</script>
<style type="text/css">
form li {
	position: static;
}
</style>
</head>
<body id="public">
<div id="container" class="ltr" style="margin: 0;padding: 0;height: 519px;width: 99.79%;background-color: rgba(255, 255, 255, 1);"  >


<form id="frm" name="frm" method="get">
  
<div style="border-image:url(border.png) 30 30 stretch; border-width:10px ">
  <h2>Payment Panel</h2>  </div>

<ul>

<li id="foli5" class="notranslate      ">
<label class="desc" id="EmailId" for="id">
Uid/Email
<span id="req_5" class="req">*</span>
</label>
<div>
<input id="id" name="id" type="email" spellcheck="false" class="field text medium" value="<%=session.getAttribute("email") %>" readonly="readonly" maxlength="255" tabindex="1" required /> 
</div>
</li>

<li id="foli42" class="notranslate      ">
<label class="desc "  for="amount">
Amount
<span id="req_42" class="req">*</span>
</label>
<div>
<input id="amount" name="amount" type="text" class="field text nospin medium" maxlength="255" tabindex="2" onkeyup="" required />
</div>
</li>

<li id="foli143" class="notranslate  twoColumns     ">

<fieldset>
<legend id="title143" class="desc">
Medium
<span id="req_143" class="req">*</span>
</legend>

<div>
<input id="radioDefault_143" name="Field143" type="hidden" value="" />

<span>
<input id="medium" name="medium" type="radio" class="field radio" value="Check" tabindex="3" required />
<label class="choice" for="check" >
Check</label>
</span>
<span>
<input id="medium" name="medium" type="radio" class="field radio" value="Demand Draft(DD)" tabindex="4" required />
<label class="choice" for="Field143_1" >
Demand Draft(DD)</label>
</span>
</div>
</fieldset>
</li>

<li id="foli144" class="notranslate      ">
<label class="desc" id="title144" for="date">
Date
<span id="req_42" class="req">*</span>
</label>
<div>
<input id="idate" name="idate" type="date" class="field text medium" value="" maxlength="255" tabindex="5" onkeyup="" required />
</div>
</li>

<li id="foli146" class="notranslate      ">
<label class="desc" id="title146" for="chknum">
DD/Check No.
<span id="req_42" class="req">*</span>
</label>
<div>
<input id="chknum" name="chknum" type="text" class="field text medium" value="" maxlength="255" tabindex="6" onkeyup="" required />
</div>
</li>

 <li class="buttons ">
<div>
<input id="saveForm" name="saveForm" class="btTxt submit" type="button" value="Submit" onclick="save();"/></div>
</li>


</ul>
</form> 

</div><!--container-->





</body>
</html>