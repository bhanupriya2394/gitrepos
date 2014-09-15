<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
html, body, h1, form, fieldset, legend, ol, li {
	margin: 0;
	padding: 0;
	}

body {
	background: #ffffff;
	color: #111111;
	font-family: Georgia, "Times New Roman", Times, serif;
	padding: 20px;
	}

	h1 {
		font-size: 28px;
		margin-bottom: 20px;
		}
	
	form#frm {
		background: #9cbc2c;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		-khtml-border-radius: 5px;
		border-radius: 5px;
		counter-reset: fieldsets;
		padding: 20px;
		width: 400px;
		}
		
		form#frm fieldset {
			border: none;
			margin-bottom: 10px;
			}
		
		form#frm fieldset:last-of-type {
			margin-bottom: 0;
			}
			
			form#frm legend {
				color: #384313;
				font-size: 16px;
				font-weight: bold;
				padding-bottom: 10px;
				text-shadow: 0 1px 1px #c0d576;
				}
				
				form#frm > fieldset > legend:before {
					content: "Step " counter(fieldsets) ": ";
					counter-increment: fieldsets;
					}
				
				form#frm fieldset fieldset legend {
					color: #111111;
					font-size: 13px;
					font-weight: normal;
					padding-bottom: 0;
					}
			
			form#frm ol li {
				background: #b9cf6a;
				background: rgba(255,255,255,.3);
				border-color: #e3ebc3;
				border-color: rgba(255,255,255,.6);
				border-style: solid;
				border-width: 2px;
				-moz-border-radius: 5px;
				-webkit-border-radius: 5px;
				-khtml-border-radius: 5px;
				border-radius: 5px;
				line-height: 30px;
				list-style: none;
				padding: 5px 10px;
				margin-bottom: 2px;
				}
							
				form#frm ol ol li {
					background: none;
					border: none;
					float: left;
					}
			
			form#frm label {
				float: left;
				font-size: 13px;
				width: 110px;
				}
				
			form#frm fieldset fieldset label {
				background:none no-repeat left 50%;
				line-height: 20px;
				padding: 0 0 0 30px;
				width: auto;
				}
					
				form#frm label[for=visa] {
					background-image: url(visa.gif);
					}
				form#frm label[for=amex] {
					background-image: url(amex.gif);
					}
				form#frm label[for=mastercard] {
					background-image: url(mastercard.gif);
					}
					
				form#frm fieldset fieldset label:hover {
					cursor: pointer;
					}
				
			form#frm input:not([type=radio]),
			form#frm textarea {
				background: #ffffff;
				border: none;
				-moz-border-radius: 3px;
				-webkit-border-radius: 3px;
				-khtml-border-radius: 3px;
				border-radius: 3px;
				font: italic 13px Georgia, "Times New Roman", Times, serif;
				outline: none;
				padding: 5px;
				width: 200px;
				}
					
				form#frm input:not([type=submit]):focus,
				form#frm textarea:focus {
					background: #eaeaea;
					}
					
				form#frm input[type=radio] {
					float: left;
					margin-right: 5px;
					}
						
			form#frm button {
				background: #384313;
				border: none;
				-moz-border-radius: 20px;
				-webkit-border-radius: 20px;
				-khtml-border-radius: 20px;
				border-radius: 20px;
				color: #ffffff;
				display: block;
				font: 18px Georgia, "Times New Roman", Times, serif;
				letter-spacing: 1px;
				margin: auto;
				padding: 7px 25px;
				text-shadow: 0 1px 1px #000000;
				text-transform: uppercase;
				}
					
				form#frm button:hover {
					background: #1e2506;
					cursor: pointer;
					}
</style>

</head>
<body>

<h1>Sign Up</h1>
	
		<form action="SmsServlet" method="get" name="frm" id="frm">
		
			<fieldset>
			
				<legend>Your details</legend>
		
				<ol>
					
					
					
					<li>
						<label for="email">Email</label>
						<input id="email" name="email" type="email" placeholder="example@domain.com" required>
					</li>
					
					<li>
						<label for="name">Password</label>
						<input id="name" name="password" type="password" placeholder="Password" required autofocus>
					</li>
					
					<li>
						<label for=phone>Phone</label>
						<input id="phone" name="phone" type="tel" placeholder="Eg. +447500000000" required>
					</li>
						
				</ol>
			
			</fieldset>
			<fieldset>
			
				<button type="button" name="btn" id="btn" onclick="getCode();">GetCode</button>
			
			</fieldset>
			
			<ol>
			<li>
			<label for="name">Enter Code</label>
						<input id="code" name="code" type="text" required autofocus>
			
			</li>
			<fieldset>
			
				<button type="button" name="btn" id="btn" onclick="save();">Submit</button>
			
			</fieldset>
			
			
			</ol>
		
			</form>

</body>
</html>