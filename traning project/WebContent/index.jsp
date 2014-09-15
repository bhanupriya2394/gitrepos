<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        
                <link rel="shortcut icon" href="../favicon.ico"> 
       
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    
<style type="text/css">
#login select{
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
		margin-top: -12px;
}

#login #sl {position:relative}

#login #sl:after {
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

#login #sl:before {
    	content:'';
    	right:6px; top:0px;
    	width:20px; height:20px;
    	background:#f8f8f8;
    	
    	pointer-events:none;
    	display:block;
}

#fill{padding: 0;width: 100%;height: 100%;position: fixed; display: none; background-color:#000;opacity:.6;z-index:100;}
</style>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	$("#fill").css("display","block");
    $("#mainDiv2").show("slow");
    $("#mainDiv2").css("display","block");
   
	
});


function openP2(page)
{
	$("#fill2").css("display","block");
    
	  $("#cont2").load(page);
}


function closeDiv()
{
	$("#fill").css("display","none");
	$("#mainDiv2").css("display","none");
	window.location="default.jsp";
	}
function getCode()
{
	
	var phone=$("#phonenumber").val();
	
	var URL="SmsServlet?phoneNum="+phone;
	$.get(URL,function(data,status){
		
		alert(phone);
		
	});
}

function save()
{
	alert($("#emailsignup").val());
	var email=$("#emailsignup").val();
	var password=$("#passwordsignup").val();
	var phone=$("#phonenumber").val();
	var code=$("#verifycode").val();
	//var all=$("#abc").serialize();	
	var URL="SignUpSave?email="+email+"&password="+password+"&phone="+phone+"&code="+code;
	$.get(URL,function(data,status){
		alert(data);
		});
}

function loginCheck(){
	var email=$("#username").val();
	var pwd=$("#password").val();
	var type=$("#type").val();
	var url="LogInServlet?email="+email+"&pwd="+pwd+"&type="+type;
	$.get(url,function(data,status)
	        {  
			if(data=="Applicant")
	        {
	        	window.location="ApplicantMain.jsp";
	        	
  	        }
	        else if(data=="Franchise")
	        {  //alert(data);
	        	  //window.location.href="JspFranchiseMasterPage.jsp";
	        	window.location ="JspFranchiseMain.jsp";
	        }
	        else if(data=="Franchiser")
	        {
	        	  window.location ="JspFranchiserMain.jsp";
	        }
	        else
	        	{ alert(data);}
	          
	        });
}

///////////////////////////////signup validations///////////////////////////////////////////////////
function validateForm() {
	var reason = "";
	var result= "";
	  reason += validatePassword();
	  reason += validateEmail();
	  reason += validatePhone();
	  reason += validateEmpty();
    if (reason != "") {
	    alert("Some fields need correction:\n" + reason);
	    result = "error";
	  }
	  else 
		  alert("All fields are filled correctly");
	  return result;
 }
function chkUser(eid)
{   
	var url="SrvltValidEmail?eid="+eid;
	$.get(url,function(data,status)
		          { 
		             if(data=="exists")
		             {  
		            alert("User With This Email Id Exists Already");
		             }
		          }
	     );
}
function trim(s)
{
  return s.replace(/^\s+|\s+$/, '');
}
function validateEmail() {
	var error="";
	var email=document.getElementById("emailsignup");
	var id=email.value;
    var temail = trim(id);                 //value of field with whitespace trimmed off
    var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
    var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;
     var ref=document.getElementById("resp");
     if (id == "") {
    	 
    	 alert("* You didn't enter an email address.");
         email.style.background = '#ff9';
        
     }
     else if (!emailFilter.test(temail)) {              //test email for illegal characters
         alert(" * Please enter a valid email address.");
    	 email.style.background = '#ff9';
         
        
    } else if (email.value.match(illegalChars)) {
    	alert(" * The email address contains illegal characters");
    	 email.style.background = '#ff9';
         
       
    } else {
    	
    }
     return error;
}
function validatePassword() {
    var error = "";
    var illegalChars = /[\W_]/; // allow only letters and numbers 
    var pwd=document.getElementById("passwordsignup");
	var pvalue=pwd.value;
	if (pvalue == "") {
		alert("You didn't enter a password.\n");
    	pwd.style.background = '#ff9';
    	
       
    } else if ((pvalue.length < 6) || (pvalue.length > 15)) {
    	alert("The password is the wrong length. \n");
    	
    	pwd.style.background = '#ff9';
    
    } else if (illegalChars.test(pvalue)) {
    	alert("The password contains illegal characters.\n");
    	
    	pwd.style.background = '#ff9';
    	
    } else {
        }
    return error;
   } 
function validatePhone() {
    var error = "";
    var pno=document.getElementById("phonenumber");
	var pvalue=pno.value;
	var stripped = pvalue.replace(/[\(\)\.\-\ ]/g, '');    

   if (pvalue == "") {
	   alert("You didn't enter a phone number.\n");
   	
	   pno.style.background = '#ff9';
   	   
    } else if (isNaN(parseInt(stripped))) {
    	alert("The phone number contains illegal characters.\n");
       	
    	 pno.style.background = '#ff9';
     	
    } else if (!(stripped.length == 10)) {
    	alert("The phone number is the wrong length.\n");
       	
    	 pno.style.background = '#ff9';
     
    }
    else {
    	
       }
   return error;
}
/////////////////////////////////
function validateEmpty() {
    var error = "";
    var s=document.getElementById("verifycode");
	var cvalue=s.value;
	if (cvalue.length == 0) {
		alert("The required field has not been filled in.\n");
       	
    	 s.style.background = '#ff9';
   	   
    } else {
    	} 
    return error;
}
//////////////////////////////////////////
function checkEmail(){
	var eid=$("#emailsignup").val();
	var url="ServletCheckEmail?eid="+eid;
	$.get(url,function(data,status){
		alert(data);
		//$("#emailsignup").val("");
		});
	
	
}



//////////////////////////////////////////////////////////////////////////////////////
	

</script>

    
    </head>
    <body>
    <div id="fill2"></div>
        <div class="container" style="width: 1016px;">
           <div id="mainDiv2" style="display: none; z-index:989;position:absolute;  margin-top:-1360px;margin-left:300px;">
            <section>	
            <div style="width: 30px;height: 30px;background-image: url('cross.ico');float: right;cursor: pointer;z-index: 1052;position: relative;" onClick="closeDiv();"></div>
            			
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <a class="hiddenanchor" id=""></a>
                    
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form autocomplete="on" id="frm1"> 
                                <h1 style="padding-bottom: 0px;">Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="username" type="text" placeholder="myusername or mymail@mail.com" required="required"/>
                                </p>
                                <p> 
                                	<a href="#" onclick="openP2('ForgotPassword.jsp');" style="float: right; font-style: italic; line-height: 24px; color: rgb(61, 157, 179); " >forgot password</a>
                                	
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                               
								<p> 
                                    <label for="username" > Type </label>
                                    <label id="sl">  <select id="type" name="type">
                             <option value=" " selected="selected">------------Select-----------</option>
                              <option value="Applicant" >Applicant</option>
                             <option value="Franchise" >Franchise</option>
                             <option value="Franchiser" >Franchiser</option>
                             
                              </select></label>
                                </p>
                                <p class="login button"> 
                                    <input type="button" id="btn" value="Login" onclick="loginCheck();" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        
                        <div id="register" class="animate form">
                            
                            <form action="SignUpSave" autocomplete="on" name="abc" id="abc"> 
                                <h1 style="padding-bottom: 0px;"> Sign up </h1> 
                           
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" onblur="validateEmail(),checkEmail()" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" onblur="validatePassword();" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="phonenumber" class="phonenumber" data-icon="T" >Your Contact Number </label>
                                    <input id="phonenumber" name="phonenumber" required="required" type="tel" onblur="validatePhone();" placeholder="Eg. +447500000000"/>
                                </p>
                                
                                <p class="getcode button" style="margin-left: 297px;width: 437px;"> 
									<input type="button" value="Get Code" onclick="getCode();"/>  
									
								</p>
								  <p> 
                                    <label for="verifycode" class="verifycode" data-icon="C" >Verification Code </label>
                                    <input id="verifycode" name="verifycode" required="required" type="text" onBlur="validateEmpty()" placeholder="Eg. 1234"/>
                                </p>
                                <p class="signin button"> 
									<input type="button" value="Submit" onclick="save();"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
                        
                        
                     </div>
                    
                </div> 
                 
            </section>
        </div>
        <div id="cont2"></div>
        </div>
        
        
    </body>
</html>