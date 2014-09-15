<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Login and Registration Form with HTML5 and CSS3</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />


 <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#fill2").css("display","block");
    $("#mainDiv").show("slow");
    $("#mainDiv").css("display","block");
   
	
});

function getPassword() {
	var email=$("#eid").val();
	alert(email);
	var URL="PasswordRecovery?email="+email;
	$.get(URL,function(data,status){
		
		alert(data);
		$("#fill2").css("display","none");
		$("#mainDiv").css("display","none");
		window.location="default.jsp";
	});
	
}

function closeDiv()
{
	$("#fill2").css("display","none");
	$("#mainDiv").css("display","none");
	window.location="default.jsp";
	}
</script>

<style type="text/css">
#fill2{padding: 0;width: 100%;height: 100%;position: fixed; display: none; background-color:#000;opacity:.6;z-index:100;}
	
</style>
</head>
<body>
		<div id="mainDiv" style="display: none; z-index:1000;position:absolute;  margin-top:-1255px;margin-left: 300px">
 <div style="width: 30px;height: 30px;background-image: url('cross.ico');float: right;cursor: pointer;z-index: 1052;position: relative;" onClick="closeDiv();"></div>
		
     	<div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <a class="hiddenanchor" id=""></a>
                    
                    <div id="wrapper">
                        <div id="forgot" class="animate form">
                            <form  action="" autocomplete="on"> 
                                <h1>Forgot Password</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="eid" name="eid" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                               
                                <p class="login button"> 
                                    <input type="button" value="Get Password" onclick="getPassword();"/> 
								</p>
                              <!--   <p class="change_link">
									Login Again..
									<a href="index.jsp">Login</a>
								</p>  -->
                            </form>
                        </div>
                        </div></div>


</div>

</body>
</html>