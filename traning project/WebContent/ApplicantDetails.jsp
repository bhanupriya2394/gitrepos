<!DOCTYPE html>
<html>
<head>

<title>
Applicant Details 
</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="generator" content="Wufoo">
<meta name="robots" content="index, follow">

<!-- CSS -->
<link href="css/applicant_form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/ApplicantDetails.js"></script> 
<style type="text/css">
form li {
	position: static;
}
</style>

<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{  
			fetch();
		});
		
function fetch(){
	var email=$("#email").val();
	//var url="ServletFetchApplicantDetails?email="+email;
	$.ajax({
        url:"ServletFetchApplicantDetails",
        type:"get",
        dataType:'json',
        cache:false,
        data:"email="+email,
        success:function(data){
        	if(data!=null){
        		
        		$("#fname").val(data.fname);
          		$("#lname").val(data.lname);
        	  	$("#address").val(data.address);
        	  	$("#oaddress").val(data.oaddress);
        	  	$("#city").val(data.city);
        	  	$("#ocity").val(data.ocity);
        	  	$("#state").val(data.state);
        	  	$("#ostate").val(data.ostate);
        	  	$("#phone").val(data.phone);
        	  	$("#zip").val(data.zip);
        	  	$("#ozip").val(data.ozip);
        	  	$("#country").val(data.country);
				$("#ocountry").val(data.ocountry);
				$("#sitedetails").val(data.sitedetails);
				$("#occupation").val(data.occupation);
				$("input").prop("disabled", true); 
				$("select").prop("disabled", true);
        	}
        	else{
        		alert("insert data");
        	}
        	
        }
   });
	
	
}		

function checkCity(){
	var city=$("#ocity").val();
  	
	var url="ServletCheckCity?city="+city;
	$.get(url,function(data,status){
		alert(data);
		});
	}


</script>
</head>

<body style="margin:0 0 0 0;">
<div id="container" style="background-color: rgba(255, 255, 255, 1);width: 100%">
 <form id="frm" action="ApplicantDetailsStore" enctype="multipart/form-data" method="post">
  
  <div style="border-image:url(bi-stretch.png) 18 18 stretch; border-width:10px ">
  <h2 style="text-align: center;margin-top: 11px;">Applicant Details</h2>  </div>

<ul>

<li  class="notranslate section      ">
<section>
<h3>
Personal Details
</h3>
</section>
</li>

<li id="foli5" class="notranslate      ">
<label class="desc" id="title5" for="email">
Email
<span id="req_5" class="req">*</span>
</label>
<div>
<input id="email" name="email" type="email" value="<%=session.getAttribute("email") %>" class="field text medium" maxlength="255" tabindex="1" readonly="readonly" required /> 
</div>
</li>
<li id="foli6" class="notranslate      ">
<label class="desc" id="title6" for="Field6">
Name
<span id="req_6" class="req">*</span>
</label>
<span>
<input id="fname" name="fname" type="text" class="field text fn" value="" size="8" tabindex="2" required />
<label for="fname">First</label>
</span>
<span>
<input id="lname" name="lname" type="text" class="field text ln" value="" size="14" tabindex="3" required />
<label for="lname">Last</label>
</span>
</li>
<li id="foli16" class="complex notranslate border     ">
<label class="desc" id="title16" for="address">
Address
<span id="req_16" class="req">*</span>
</label>
<div>
<span class="full addr1">
<input id="address" name="address" type="text" class="field text addr" value="" tabindex="4" required />
<label for="paddress">Address</label>
</span>

<span class="left city">
<input id="city" name="city" type="text" class="field text addr" value="" tabindex="6" required />
<label for="city">City</label>
</span>
<span class="right state">
<input id="state" name="state" type="text" class="field text addr" value="" tabindex="7" required />
<label for="state">State / Province / Region</label>
</span>
<span class="left zip">
<input id="zip" name="zip" type="text" class="field text addr" value="" maxlength="15" tabindex="8" required />
<label for="zip">Postal / Zip Code</label>
</span>
<span class="right country">
<select id="country" name="country" class="field select addr" tabindex="9" >
<option value="" selected="selected"></option>
<option value="United States" >United States</option>
<option value="United Kingdom" >United Kingdom</option>
<option value="Australia" >Australia</option>
<option value="Canada" >Canada</option>
<option value="France" >France</option>
<option value="New Zealand" >New Zealand</option>
<option value="India" >India</option>
<option value="Brazil" >Brazil</option>
<option value="Afghanistan" >Afghanistan</option>
<option value="Åland Islands" >Åland Islands</option>
<option value="Albania" >Albania</option>
<option value="Algeria" >Algeria</option>
<option value="American Samoa" >American Samoa</option>
<option value="Andorra" >Andorra</option>
<option value="Angola" >Angola</option>
<option value="Anguilla" >Anguilla</option>
<option value="Antarctica" >Antarctica</option>
<option value="Antigua and Barbuda" >Antigua and Barbuda</option>
<option value="Argentina" >Argentina</option>
<option value="Armenia" >Armenia</option>
<option value="Aruba" >Aruba</option>
<option value="Austria" >Austria</option>
<option value="Azerbaijan" >Azerbaijan</option>
<option value="Bahamas" >Bahamas</option>
<option value="Bahrain" >Bahrain</option>
<option value="Bangladesh" >Bangladesh</option>
<option value="Barbados" >Barbados</option>
<option value="Belarus" >Belarus</option>
<option value="Belgium" >Belgium</option>
<option value="Belize" >Belize</option>
<option value="Benin" >Benin</option>
<option value="Bermuda" >Bermuda</option>
<option value="Bhutan" >Bhutan</option>
<option value="Bolivia" >Bolivia</option>
<option value="Bosnia and Herzegovina" >Bosnia and Herzegovina</option>
<option value="Botswana" >Botswana</option>
<option value="British Indian Ocean Territory" >British Indian Ocean Territory</option>
<option value="Brunei Darussalam" >Brunei Darussalam</option>
<option value="Bulgaria" >Bulgaria</option>
<option value="Burkina Faso" >Burkina Faso</option>
<option value="Burundi" >Burundi</option>
<option value="Cambodia" >Cambodia</option>
<option value="Cameroon" >Cameroon</option>
<option value="Cape Verde" >Cape Verde</option>
<option value="Cayman Islands" >Cayman Islands</option>
<option value="Central African Republic" >Central African Republic</option>
<option value="Chad" >Chad</option>
<option value="Chile" >Chile</option>
<option value="China" >China</option>
<option value="Colombia" >Colombia</option>
<option value="Comoros" >Comoros</option>
<option value="Democratic Republic of the Congo" >Democratic Republic of the Congo</option>
<option value="Republic of the Congo" >Republic of the Congo</option>
<option value="Cook Islands" >Cook Islands</option>
<option value="Costa Rica" >Costa Rica</option>
<option value="C&ocirc;te d'Ivoire" >C&ocirc;te d'Ivoire</option>
<option value="Croatia" >Croatia</option>
<option value="Cuba" >Cuba</option>
<option value="Cyprus" >Cyprus</option>
<option value="Czech Republic" >Czech Republic</option>
<option value="Denmark" >Denmark</option>
<option value="Djibouti" >Djibouti</option>
<option value="Dominica" >Dominica</option>
<option value="Dominican Republic" >Dominican Republic</option>
<option value="East Timor" >East Timor</option>
<option value="Ecuador" >Ecuador</option>
<option value="Egypt" >Egypt</option>
<option value="El Salvador" >El Salvador</option>
<option value="Equatorial Guinea" >Equatorial Guinea</option>
<option value="Eritrea" >Eritrea</option>
<option value="Estonia" >Estonia</option>
<option value="Ethiopia" >Ethiopia</option>
<option value="Faroe Islands" >Faroe Islands</option>
<option value="Fiji" >Fiji</option>
<option value="Finland" >Finland</option>
<option value="Gabon" >Gabon</option>
<option value="Gambia" >Gambia</option>
<option value="Georgia" >Georgia</option>
<option value="Germany" >Germany</option>
<option value="Ghana" >Ghana</option>
<option value="Gibraltar" >Gibraltar</option>
<option value="Greece" >Greece</option>
<option value="Grenada" >Grenada</option>
<option value="Guatemala" >Guatemala</option>
<option value="Guinea" >Guinea</option>
<option value="Guinea-Bissau" >Guinea-Bissau</option>
<option value="Guyana" >Guyana</option>
<option value="Haiti" >Haiti</option>
<option value="Honduras" >Honduras</option>
<option value="Hong Kong" >Hong Kong</option>
<option value="Hungary" >Hungary</option>
<option value="Iceland" >Iceland</option>
<option value="Indonesia" >Indonesia</option>
<option value="Iran" >Iran</option>
<option value="Iraq" >Iraq</option>
<option value="Ireland" >Ireland</option>
<option value="Israel" >Israel</option>
<option value="Italy" >Italy</option>
<option value="Jamaica" >Jamaica</option>
<option value="Japan" >Japan</option>
<option value="Jordan" >Jordan</option>
<option value="Kazakhstan" >Kazakhstan</option>
<option value="Kenya" >Kenya</option>
<option value="Kiribati" >Kiribati</option>
<option value="North Korea" >North Korea</option>
<option value="South Korea" >South Korea</option>
<option value="Kuwait" >Kuwait</option>
<option value="Kyrgyzstan" >Kyrgyzstan</option>
<option value="Laos" >Laos</option>
<option value="Latvia" >Latvia</option>
<option value="Lebanon" >Lebanon</option>
<option value="Lesotho" >Lesotho</option>
<option value="Liberia" >Liberia</option>
<option value="Libya" >Libya</option>
<option value="Liechtenstein" >Liechtenstein</option>
<option value="Lithuania" >Lithuania</option>
<option value="Luxembourg" >Luxembourg</option>
<option value="Macedonia" >Macedonia</option>
<option value="Madagascar" >Madagascar</option>
<option value="Malawi" >Malawi</option>
<option value="Malaysia" >Malaysia</option>
<option value="Maldives" >Maldives</option>
<option value="Mali" >Mali</option>
<option value="Malta" >Malta</option>
<option value="Marshall Islands" >Marshall Islands</option>
<option value="Mauritania" >Mauritania</option>
<option value="Mauritius" >Mauritius</option>
<option value="Mexico" >Mexico</option>
<option value="Micronesia" >Micronesia</option>
<option value="Moldova" >Moldova</option>
<option value="Monaco" >Monaco</option>
<option value="Mongolia" >Mongolia</option>
<option value="Montenegro" >Montenegro</option>
<option value="Morocco" >Morocco</option>
<option value="Mozambique" >Mozambique</option>
<option value="Myanmar" >Myanmar</option>
<option value="Namibia" >Namibia</option>
<option value="Nauru" >Nauru</option>
<option value="Nepal" >Nepal</option>
<option value="Netherlands" >Netherlands</option>
<option value="Netherlands Antilles" >Netherlands Antilles</option>
<option value="Nicaragua" >Nicaragua</option>
<option value="Niger" >Niger</option>
<option value="Nigeria" >Nigeria</option>
<option value="Norway" >Norway</option>
<option value="Oman" >Oman</option>
<option value="Pakistan" >Pakistan</option>
<option value="Palau" >Palau</option>
<option value="Palestine" >Palestine</option>
<option value="Panama" >Panama</option>
<option value="Papua New Guinea" >Papua New Guinea</option>
<option value="Paraguay" >Paraguay</option>
<option value="Peru" >Peru</option>
<option value="Philippines" >Philippines</option>
<option value="Poland" >Poland</option>
<option value="Portugal" >Portugal</option>
<option value="Puerto Rico" >Puerto Rico</option>
<option value="Qatar" >Qatar</option>
<option value="Romania" >Romania</option>
<option value="Russia" >Russia</option>
<option value="Rwanda" >Rwanda</option>
<option value="Saint Kitts and Nevis" >Saint Kitts and Nevis</option>
<option value="Saint Lucia" >Saint Lucia</option>
<option value="Saint Vincent and the Grenadines" >Saint Vincent and the Grenadines</option>
<option value="Samoa" >Samoa</option>
<option value="San Marino" >San Marino</option>
<option value="Sao Tome and Principe" >Sao Tome and Principe</option>
<option value="Saudi Arabia" >Saudi Arabia</option>
<option value="Senegal" >Senegal</option>
<option value="Serbia" >Serbia</option>
<option value="Seychelles" >Seychelles</option>
<option value="Sierra Leone" >Sierra Leone</option>
<option value="Singapore" >Singapore</option>
<option value="Slovakia" >Slovakia</option>
<option value="Slovenia" >Slovenia</option>
<option value="Solomon Islands" >Solomon Islands</option>
<option value="Somalia" >Somalia</option>
<option value="South Africa" >South Africa</option>
<option value="Spain" >Spain</option>
<option value="Sri Lanka" >Sri Lanka</option>
<option value="Sudan" >Sudan</option>
<option value="Suriname" >Suriname</option>
<option value="Swaziland" >Swaziland</option>
<option value="Sweden" >Sweden</option>
<option value="Switzerland" >Switzerland</option>
<option value="Syria" >Syria</option>
<option value="Taiwan" >Taiwan</option>
<option value="Tajikistan" >Tajikistan</option>
<option value="Tanzania" >Tanzania</option>
<option value="Thailand" >Thailand</option>
<option value="Togo" >Togo</option>
<option value="Tonga" >Tonga</option>
<option value="Trinidad and Tobago" >Trinidad and Tobago</option>
<option value="Tunisia" >Tunisia</option>
<option value="Turkey" >Turkey</option>
<option value="Turkmenistan" >Turkmenistan</option>
<option value="Tuvalu" >Tuvalu</option>
<option value="Uganda" >Uganda</option>
<option value="Ukraine" >Ukraine</option>
<option value="United Arab Emirates" >United Arab Emirates</option>
<option value="United States Minor Outlying Islands" >United States Minor Outlying Islands</option>
<option value="Uruguay" >Uruguay</option>
<option value="Uzbekistan" >Uzbekistan</option>
<option value="Vanuatu" >Vanuatu</option>
<option value="Vatican City" >Vatican City</option>
<option value="Venezuela" >Venezuela</option>
<option value="Vietnam" >Vietnam</option>
<option value="Virgin Islands, British" >Virgin Islands, British</option>
<option value="Virgin Islands, U.S." >Virgin Islands, U.S.</option>
<option value="Yemen" >Yemen</option>
<option value="Zambia" >Zambia</option>
<option value="Zimbabwe" >Zimbabwe</option>
</select>
<label for="country">Country</label>
</span>
</div>
</li>
<li id="foli24" class="notranslate      ">
<label class="desc" id="title24" for="Field24">
Phone Number
<span id="req_24" class="req">*</span>
</label>
<div>
<input id="phone" class="field text medium" name="phone" tabindex="10" required  
type="tel" maxlength="255" value="" /> 
</div>
</li>

<li id="foli25" class="notranslate section      ">
<section>
<h3 id="title25">
Proof Details
</h3>
</section>
</li><li id="foli26" class="notranslate       ">
<label class="desc" id="title26" for="proof">
Proof
<span id="req_26" class="req">*</span>
</label>
<div>
<select id="proof" name="proof" class="field select medium" tabindex="11" > 
<option value="Select" selected="selected">
Select
</option>
<option value="Pan Card" >
Pan Card
</option>
<option value="Aadhar Card" >
Aadhar Card
</option>
<option value="Voter Id" >
Voter Id
</option>
</select>
</div>
</li><li id="foli29" class="notranslate section      ">
<section>
<h3 id="title29">
Location Details
</h3>
</section>
</li><li id="foli30" class="notranslate      ">
<label class="desc" id="title30" for="occupation">
Occupation
<span id="req_30" class="req">*</span>
</label>
<div>
<input id="occupation" name="occupation" type="text" class="field text medium" value="" maxlength="255" tabindex="12" onKeyUp="" required />
</div>
</li><li id="foli32" class="complex notranslate      ">
<label class="desc" id="title32" for="Field32">
Address
<span id="req_32" class="req">*</span>
</label>
<div>
<span class="full addr1">
<input id="oaddress" name="oaddress" type="text" class="field text addr" value="" tabindex="13" required />
<label for="oaddress">Address</label>
</span>

<span class="left city">
<input id="ocity" name="ocity" type="text" class="field text addr" value="" tabindex="15" required onblur="checkCity();"/>
<label for="ocity">City</label>
</span>
<span class="right state">
<input id="ostate" name="ostate" type="text" class="field text addr" value="" tabindex="16" required />
<label for="ostate">State / Province / Region</label>
</span>
<span class="left zip">
<input id="ozip" name="ozip" type="text" class="field text addr" value="" maxlength="15" tabindex="17" required />
<label for="ozip">Postal / Zip Code</label>
</span>
<span class="right country">
<select id="ocountry" name="ocountry" class="field select addr" tabindex="18" >
<option value="" selected="selected"></option>
<option value="United States" >United States</option>
<option value="United Kingdom" >United Kingdom</option>
<option value="Australia" >Australia</option>
<option value="Canada" >Canada</option>
<option value="France" >France</option>
<option value="New Zealand" >New Zealand</option>
<option value="India" >India</option>
<option value="Brazil" >Brazil</option>
<option value="----" >----</option>
<option value="Afghanistan" >Afghanistan</option>
<option value="Åland Islands" >Åland Islands</option>
<option value="Albania" >Albania</option>
<option value="Algeria" >Algeria</option>
<option value="American Samoa" >American Samoa</option>
<option value="Andorra" >Andorra</option>
<option value="Angola" >Angola</option>
<option value="Anguilla" >Anguilla</option>
<option value="Antarctica" >Antarctica</option>
<option value="Antigua and Barbuda" >Antigua and Barbuda</option>
<option value="Argentina" >Argentina</option>
<option value="Armenia" >Armenia</option>
<option value="Aruba" >Aruba</option>
<option value="Austria" >Austria</option>
<option value="Azerbaijan" >Azerbaijan</option>
<option value="Bahamas" >Bahamas</option>
<option value="Bahrain" >Bahrain</option>
<option value="Bangladesh" >Bangladesh</option>
<option value="Barbados" >Barbados</option>
<option value="Belarus" >Belarus</option>
<option value="Belgium" >Belgium</option>
<option value="Belize" >Belize</option>
<option value="Benin" >Benin</option>
<option value="Bermuda" >Bermuda</option>
<option value="Bhutan" >Bhutan</option>
<option value="Bolivia" >Bolivia</option>
<option value="Bosnia and Herzegovina" >Bosnia and Herzegovina</option>
<option value="Botswana" >Botswana</option>
<option value="British Indian Ocean Territory" >British Indian Ocean Territory</option>
<option value="Brunei Darussalam" >Brunei Darussalam</option>
<option value="Bulgaria" >Bulgaria</option>
<option value="Burkina Faso" >Burkina Faso</option>
<option value="Burundi" >Burundi</option>
<option value="Cambodia" >Cambodia</option>
<option value="Cameroon" >Cameroon</option>
<option value="Cape Verde" >Cape Verde</option>
<option value="Cayman Islands" >Cayman Islands</option>
<option value="Central African Republic" >Central African Republic</option>
<option value="Chad" >Chad</option>
<option value="Chile" >Chile</option>
<option value="China" >China</option>
<option value="Colombia" >Colombia</option>
<option value="Comoros" >Comoros</option>
<option value="Democratic Republic of the Congo" >Democratic Republic of the Congo</option>
<option value="Republic of the Congo" >Republic of the Congo</option>
<option value="Cook Islands" >Cook Islands</option>
<option value="Costa Rica" >Costa Rica</option>
<option value="C&ocirc;te d'Ivoire" >C&ocirc;te d'Ivoire</option>
<option value="Croatia" >Croatia</option>
<option value="Cuba" >Cuba</option>
<option value="Cyprus" >Cyprus</option>
<option value="Czech Republic" >Czech Republic</option>
<option value="Denmark" >Denmark</option>
<option value="Djibouti" >Djibouti</option>
<option value="Dominica" >Dominica</option>
<option value="Dominican Republic" >Dominican Republic</option>
<option value="East Timor" >East Timor</option>
<option value="Ecuador" >Ecuador</option>
<option value="Egypt" >Egypt</option>
<option value="El Salvador" >El Salvador</option>
<option value="Equatorial Guinea" >Equatorial Guinea</option>
<option value="Eritrea" >Eritrea</option>
<option value="Estonia" >Estonia</option>
<option value="Ethiopia" >Ethiopia</option>
<option value="Faroe Islands" >Faroe Islands</option>
<option value="Fiji" >Fiji</option>
<option value="Finland" >Finland</option>
<option value="Gabon" >Gabon</option>
<option value="Gambia" >Gambia</option>
<option value="Georgia" >Georgia</option>
<option value="Germany" >Germany</option>
<option value="Ghana" >Ghana</option>
<option value="Gibraltar" >Gibraltar</option>
<option value="Greece" >Greece</option>
<option value="Grenada" >Grenada</option>
<option value="Guatemala" >Guatemala</option>
<option value="Guinea" >Guinea</option>
<option value="Guinea-Bissau" >Guinea-Bissau</option>
<option value="Guyana" >Guyana</option>
<option value="Haiti" >Haiti</option>
<option value="Honduras" >Honduras</option>
<option value="Hong Kong" >Hong Kong</option>
<option value="Hungary" >Hungary</option>
<option value="Iceland" >Iceland</option>
<option value="Indonesia" >Indonesia</option>
<option value="Iran" >Iran</option>
<option value="Iraq" >Iraq</option>
<option value="Ireland" >Ireland</option>
<option value="Israel" >Israel</option>
<option value="Italy" >Italy</option>
<option value="Jamaica" >Jamaica</option>
<option value="Japan" >Japan</option>
<option value="Jordan" >Jordan</option>
<option value="Kazakhstan" >Kazakhstan</option>
<option value="Kenya" >Kenya</option>
<option value="Kiribati" >Kiribati</option>
<option value="North Korea" >North Korea</option>
<option value="South Korea" >South Korea</option>
<option value="Kuwait" >Kuwait</option>
<option value="Kyrgyzstan" >Kyrgyzstan</option>
<option value="Laos" >Laos</option>
<option value="Latvia" >Latvia</option>
<option value="Lebanon" >Lebanon</option>
<option value="Lesotho" >Lesotho</option>
<option value="Liberia" >Liberia</option>
<option value="Libya" >Libya</option>
<option value="Liechtenstein" >Liechtenstein</option>
<option value="Lithuania" >Lithuania</option>
<option value="Luxembourg" >Luxembourg</option>
<option value="Macedonia" >Macedonia</option>
<option value="Madagascar" >Madagascar</option>
<option value="Malawi" >Malawi</option>
<option value="Malaysia" >Malaysia</option>
<option value="Maldives" >Maldives</option>
<option value="Mali" >Mali</option>
<option value="Malta" >Malta</option>
<option value="Marshall Islands" >Marshall Islands</option>
<option value="Mauritania" >Mauritania</option>
<option value="Mauritius" >Mauritius</option>
<option value="Mexico" >Mexico</option>
<option value="Micronesia" >Micronesia</option>
<option value="Moldova" >Moldova</option>
<option value="Monaco" >Monaco</option>
<option value="Mongolia" >Mongolia</option>
<option value="Montenegro" >Montenegro</option>
<option value="Morocco" >Morocco</option>
<option value="Mozambique" >Mozambique</option>
<option value="Myanmar" >Myanmar</option>
<option value="Namibia" >Namibia</option>
<option value="Nauru" >Nauru</option>
<option value="Nepal" >Nepal</option>
<option value="Netherlands" >Netherlands</option>
<option value="Netherlands Antilles" >Netherlands Antilles</option>
<option value="Nicaragua" >Nicaragua</option>
<option value="Niger" >Niger</option>
<option value="Nigeria" >Nigeria</option>
<option value="Norway" >Norway</option>
<option value="Oman" >Oman</option>
<option value="Pakistan" >Pakistan</option>
<option value="Palau" >Palau</option>
<option value="Palestine" >Palestine</option>
<option value="Panama" >Panama</option>
<option value="Papua New Guinea" >Papua New Guinea</option>
<option value="Paraguay" >Paraguay</option>
<option value="Peru" >Peru</option>
<option value="Philippines" >Philippines</option>
<option value="Poland" >Poland</option>
<option value="Portugal" >Portugal</option>
<option value="Puerto Rico" >Puerto Rico</option>
<option value="Qatar" >Qatar</option>
<option value="Romania" >Romania</option>
<option value="Russia" >Russia</option>
<option value="Rwanda" >Rwanda</option>
<option value="Saint Kitts and Nevis" >Saint Kitts and Nevis</option>
<option value="Saint Lucia" >Saint Lucia</option>
<option value="Saint Vincent and the Grenadines" >Saint Vincent and the Grenadines</option>
<option value="Samoa" >Samoa</option>
<option value="San Marino" >San Marino</option>
<option value="Sao Tome and Principe" >Sao Tome and Principe</option>
<option value="Saudi Arabia" >Saudi Arabia</option>
<option value="Senegal" >Senegal</option>
<option value="Serbia" >Serbia</option>
<option value="Seychelles" >Seychelles</option>
<option value="Sierra Leone" >Sierra Leone</option>
<option value="Singapore" >Singapore</option>
<option value="Slovakia" >Slovakia</option>
<option value="Slovenia" >Slovenia</option>
<option value="Solomon Islands" >Solomon Islands</option>
<option value="Somalia" >Somalia</option>
<option value="South Africa" >South Africa</option>
<option value="Spain" >Spain</option>
<option value="Sri Lanka" >Sri Lanka</option>
<option value="Sudan" >Sudan</option>
<option value="Suriname" >Suriname</option>
<option value="Swaziland" >Swaziland</option>
<option value="Sweden" >Sweden</option>
<option value="Switzerland" >Switzerland</option>
<option value="Syria" >Syria</option>
<option value="Taiwan" >Taiwan</option>
<option value="Tajikistan" >Tajikistan</option>
<option value="Tanzania" >Tanzania</option>
<option value="Thailand" >Thailand</option>
<option value="Togo" >Togo</option>
<option value="Tonga" >Tonga</option>
<option value="Trinidad and Tobago" >Trinidad and Tobago</option>
<option value="Tunisia" >Tunisia</option>
<option value="Turkey" >Turkey</option>
<option value="Turkmenistan" >Turkmenistan</option>
<option value="Tuvalu" >Tuvalu</option>
<option value="Uganda" >Uganda</option>
<option value="Ukraine" >Ukraine</option>
<option value="United Arab Emirates" >United Arab Emirates</option>
<option value="United States Minor Outlying Islands" >United States Minor Outlying Islands</option>
<option value="Uruguay" >Uruguay</option>
<option value="Uzbekistan" >Uzbekistan</option>
<option value="Vanuatu" >Vanuatu</option>
<option value="Vatican City" >Vatican City</option>
<option value="Venezuela" >Venezuela</option>
<option value="Vietnam" >Vietnam</option>
<option value="Virgin Islands, British" >Virgin Islands, British</option>
<option value="Virgin Islands, U.S." >Virgin Islands, U.S.</option>
<option value="Yemen" >Yemen</option>
<option value="Zambia" >Zambia</option>
<option value="Zimbabwe" >Zimbabwe</option>
</select>
<label for="ocountry">Country</label>
</span>
</div>
</li>
<li id="foli42" class="notranslate      ">
<label class="desc" id="title42" for="sitedetails">
Site Details
<span id="req_42" class="req">*</span>
</label>
<div>
<input id="sitedetails" name="sitedetails" type="text" class="field text medium" value="" maxlength="255" tabindex="19" onKeyUp="" required />
</div>
</li>
<li id="foli30" class="notranslate      ">
<label class="desc" id="title30" for="pic">
Pic Upload
<span id="req_30" class="req">*</span>
</label>
<div>
<input id="pic" name="pic" type="file" class="field text medium" value="" maxlength="255" tabindex="12" onKeyUp="" required />
</div>
</li>

 <li class="buttons ">
<div>
<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Submit"/></div>
</li>


<!-- <li class="hide">
<label for="comment">Do Not Fill This Out</label>
<textarea name="comment" id="comment" rows="1" cols="1"></textarea>
<input type="hidden" id="idstamp" name="idstamp" value="gSiF6XeBfeKIG91muCQLUep3TCtlTP8VAq/SSbketwc=" />
</li>  -->
</ul>
</form> 

</div><!--container-->


</body>
</html>
