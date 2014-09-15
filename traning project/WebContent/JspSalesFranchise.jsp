<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Form</title>


<link href="css/applicant_structure.css" rel="stylesheet">
<link href="css/applicant_form.css" rel="stylesheet"> 



<!-- <script src="scripts/ApplicantDetails.js"></script>  -->
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript">


$(document).ready(function()
		{   listbox="";
		    a=0;
		    t=0;
		    priceArray=new Array();
		    itemArray=new Array();
		});

/////////////////////////////////////////////////////////////////////////
function totalPrice(value)
{   
	var p=document.getElementById("itype").value;
   // alert("hello");
	//alert($("#itype").val());
	//alert(value);
//	alert(p);
	if((!isNaN(value) && !isNaN(p))){
		 t=value*p;
		//alert(t);
	}
	else{
		 alert("Fill numerics");
	}
	$("#totalp").val(t);
}

/////////////////////////////////////////////////////////////////////////
function fillList()
{   
	//alert(v);
var v=$("#Quantity").val();
	
    var item=$("#item").val();
    var type=$("#itype").val();
   // alert(item);
    //alert(type);
    var list=document.getElementById("itype");
    var indx=list.selectedIndex;
    var type=list.options[indx].text;
    var price=list.options[indx].value;
    var c=item+":"+type+", price:"+price+", qty:"+v+" ";
    alert(c);
    $("#fullorder").append(new Option(c,c));
    //alert("Array Item index "+a);
    itemArray[a]=c;
    a=a+1;  
}

//////////////////////////////////////////////////////////////////////////
function fillItems(i,m){

	var indx=i.selectedIndex;
	for(i=0;i<=m.length;i++)
	{
		m.remove(i);
	}
	
	if(indx==1)
		
	{
		m.options[0]=new Option("OnionPizza","150");
		m.options[1]=new Option("CheeseCapsicum","250");
		m.options[2]=new Option("Olive&Mushroom","350");
		m.options[3]=new Option("SpecialPizza","350");
		
	}
	 else if(indx==2)
	{   m.options[0]=new Option("BarbeQueChickenPizza","350");
		m.options[1]=new Option("SimpleDelighted","300");
		m.options[2]=new Option("FriedChickenPizza","400");
		}
	 else if(indx==3)
		{   m.options[0]=new Option("SingleCheese","50");
			m.options[1]=new Option("DoubleCheesedCreamed","80");
			m.options[2]=new Option("SimpleAlooTicki","60");
			}
	 else if(indx==4)
		{   m.options[0]=new Option("SingleCheese","70");
			m.options[1]=new Option("DoubleCheesedCreamed","90");
			m.options[2]=new Option("SimpleChickenTicki","80");
			}
	 else if(indx==5)
		{   m.options[0]=new Option("Crusher","80");
			m.options[1]=new Option("Pepsi","55");
			m.options[2]=new Option("ColdCoffee","90");
			}
	 else if(indx==6)
		{   m.options[0]=new Option("StrawberryIceCream","35");
			m.options[1]=new Option("VanilaIceCream","35");
			m.options[2]=new Option("TuttyFruity","60");
			}
	 else if(indx==7)
		{   m.options[0]=new Option("CheesyFrenchFries","70");
			m.options[1]=new Option("SimpleFrenchFries","40");
			m.options[2]=new Option("FieryFrenchFries","55");
			}
	 else if(indx==8)
		{   m.options[0]=new Option("VegColzone","120");
			m.options[1]=new Option("NonVegColzone","150");
		}
	
	else {
		for(i=0;i<m.length;i++){
			m.remove(i);
			}
		}
}

///////////////////////////////////////////////////////////////////////////////////////
function fillPriceArray(){
	alert("array price index="+a);
	 priceArray[a]=t;
	 alert(priceArray[a]);
	
	
}
/////////////////////////////////////////////////////////////////////////////////////

function grandTotal(){
	var sum=0;
	alert(priceArray.length);
	
	for(var i=0;i<priceArray.length;i++){
		//alert("hello...in grand total");
		sum=parseInt(sum)+parseInt(priceArray[i]);
		alert("sum="+sum);
	}
	$("#grandbill").val(sum);
	
}
//////////////////////////////////////////////////////////////////////////////////////

function deleteList(){
	var list=document.getElementById("fullorder");
	var indx=list.options.selectedIndex;
	if(indx>=0){
		list.remove(indx);
		grandBill2(indx);
	}
	else
		{
		
		alert("first select an item from the list to be removed...!!");
		}
	
	
}

////////////////////////////////////////////////////////////////////////////////////
function grandBill2(i){
	res=priceArray[i];
	grand=$("#grandbill").val();
	result=parseInt(grand)-parseInt(res);
	alert(result);
	$("#grandbill").val(result);
	priceArray.splice(i,1);
	itemArray.splice(i,1);
	a=a-1;
}
////////////////////////////////////////////////////////////////////////////////

function addFull(){
	
	var item="";
	for(var i=0;i<itemArray.length;i++)
	{
		alert(itemArray[i]);	
	   item +=itemArray[i]+";";
	}
		alert(item);
		for(var j=0;j<priceArray.length;j++)
		{
			totalPrice+= priceArray[i];
		}
		var email=$("#email").val();	
		var phone=$("#phone").val();
		var fname=$("#fname").val();
		var lname=$("#lname").val();
		var address=$("#address").val();
		var deliverytype=$("#Dtype").val();
		var grandbill=$("#grandbill").val();
		var url="ServletOrderSales?email="+email+"&phone="+phone+"&fname="+fname+"&lname="+lname+"&address="+address+"&type="+deliverytype+"&item="+item+"&grandbill="+grandbill;
		$.get(url,function(data,status)
                {
	               alert(data);
                });
	
}
/////////////////////////////////////////////////////////////////////////
function getCustomer(){
	
	var phone=$("#phone").val();
	$.ajax({
        url:"ServletCustomerDetails",
        type:"get",
        dataType:'json',
        cache:false,
        data:"phone="+phone,
        success:function(data){
        	alert(data);
      	  	$("#fname").val(data.fname);
      		$("#lname").val(data.lname);
    	  	$("#address").val(data.address);
        }
   });
	
	
}



</script>


</head>
<body>
<div id="container" >
 <form id="frm">
  <header id="header" class="info">
<h2>Order Form</h2>  </header>

<ul>
<li id="foli5" class="notranslate      ">
<label class="desc" id="title5" for="email">
Email
<span id="req_5" class="req">*</span>
</label>
<div>
<input id="email" name="email" type="email" class="field text medium" maxlength="255" tabindex="1" required /> 
</div>
</li>

<li  class="notranslate section      ">
<section>
<h3>
Customer Details
</h3>
</section>
</li>
<li id="foli24" class="notranslate      ">
<label class="desc" id="title24" for="Field24">
Phone Number
<span id="req_24" class="req">*</span>
</label>
<div>
<input id="phone" class="field text medium" name="phone" tabindex="2" required  type="tel" onblur="getCustomer();"/> 
</div>
</li>


<li id="foli6" class="notranslate      ">
<label class="desc" id="title6" for="Field6">
Customer Name
<span id="req_6" class="req">*</span>
</label>
<span>
<input id="fname" name="fname" type="text" class="field text fn" value="" size="8" tabindex="3" required />
<label for="fname">First</label>
</span>
<span>
<input id="lname" name="lname" type="text" class="field text ln" value="" size="14" tabindex="4" required />
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
<input id="address" name="address" type="text" class="field text addr" value="" tabindex="5" required />
<label for="paddress">Address</label>
</span>
</div>
</li>


<li id="foli25" class="notranslate section      ">

<section>
<h3 id="title25">
Order Details
</h3>
</section>
<li id="foli16" class="complex notranslate border     ">
<label class="desc" id="title16" for="address">
Delivery Type 
<span id="req_16" class="req">*</span>
</label>
<div>
<input id="radioDefault_143" name="Field143" type="hidden"/>
<span>
<input id="Dtype" name="Dtype" type="radio"  value="On Spot" tabindex="6" required />
<label class="choice" for="check" >
On The Spot</label>
</san>
<span>
<input id="Dtype" name="Dtype" type="radio"  value="Home Delivery" tabindex="7"  required />
<label class="choice">
Home Delivery</label>
</span>
</div>
</li>


<li id="foli26" class="notranslate       ">
<label class="desc">
Item
<span id="req_26" class="req">*</span>
</label>

<div>
<select id="item" name="item" class="field select medium" tabindex="11" onchange="fillItems(this,itype);" > 
<option value="Select">Select</option>
<option value="Veg Pizza" >Veg Pizza</option>
<option value="Non Veg Pizza" >Non Veg Pizza</option>
<option value="Veg Burger" >Veg Burger</option>
<option value="Non Veg Burger" >Non Veg Burger</option>
<option value="Beverages" >Beverages</option>
<option value="Deserts" >Deserts</option>
<option value="French Fries" >French Fries</option>
<option value="CalzonePockets">CalzonePockets</option>
</select>
</div>
</li>

<li id="foli26" class="notranslate       ">
<label class="desc">
Item Types
<span class="req">*</span>
</label>
<div>
<select id="itype" name="itype" class="field select medium"></select></div>
</li>

<li id="foli30" class="notranslate      ">
<label class="desc">
Quantity
<span id="req_30" class="req">*</span>
</label>
<div>
<input id="Quantity" name="Quantity" type="text" class="field text medium" onBlur="totalPrice(this.value);"  required />
</div>
</li>

<li id="foli30" class="notranslate      ">
<label class="desc" >
Total Price</label>
<div>
<input id="totalp" name="totalp" type="text" class="field text medium" readonly />
</div>
</li>


<li class="buttons ">
<div>
<input id="addtobasket" name="addtobasket" class="btTxt submit" type="button" value="Add To Basket" onclick="fillPriceArray(); fillList(); grandTotal();"/>
</div>
</li>

<li id="foli30" class="notranslate      " >
<label class="desc">Full Order</label>
<div>
<select id="fullorder" name="fullorder" size="4" class="field select medium"></select></div>
</li>


<li class="buttons ">
<div>
<input id="del" name="del" class="btTxt submit" type="button" value="Remove" onclick="deleteList();"/>
</div>
</li>


<li id="foli42" class="notranslate      ">
<label class="desc">
Grand Bill</label>
<div>
<input id="grandbill" name="grandbill" type="text" class="field text medium" readonly="readonly" />
</div>
</li>

<li class="buttons ">
<div>
<input id="saveForm" name="saveForm" class="btTxt submit" type="button" value="Submit" onclick="addFull();"/>
</div>
</li>

</ul>
</form> 
</div>
</body>
</html>