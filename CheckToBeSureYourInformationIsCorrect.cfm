<cfset migiCart = session.cart.getCart()>

<cfset subtotal=0>
	<cfloop from="1" to="#arraylen(migicart)#" index="counter">
		<cfset subtotal = #variables.subtotal# + (#migiCart[counter].price# * #migiCart[counter].quantity#)>
	</cfloop>
<cfset Tax = round(8.25 * #variables.subtotal#)>
<cfset Tax = Tax/100>
<cfset Total = #variables.tax# + #variables.subtotal#>

<cfparam name="url.action" type="string" default="">
<cfparam name="variables.msg" type="string" default="">
<cfparam name="cookie.UserID" type="string" default="">
<cfparam name="form.FirstName" type="string" default="">

<cfscript>
populateFieldsRet.Title = "";
populateFieldsRet.CompanyName = "";
populateFieldsRet.FirstName = "";
populateFieldsRet.LastName = "";
populateFieldsRet.MiddleInitial = "";
populateFieldsRet.Street = "";
populateFieldsRet.City = "";
populateFieldsRet.State = "";
populateFieldsRet.Zip = "";
populateFieldsRet.MailCompanyName = "";
populateFieldsRet.MailFirstName = "";
populateFieldsRet.MailLastName = "";
populateFieldsRet.MailMiddleInitial = "";
populateFieldsRet.MailStreet = "";
populateFieldsRet.MailCity = "";
populateFieldsRet.MailState = "";
populateFieldsRet.MailZip = "";
populateFieldsRet.eMailAddress = "";
populateFieldsRet.PhoneNumber = "";
populateFieldsRet.PhoneNumber2 = "";
populateFieldsRet.AccessType = "";
variables.msg2 = "";
</cfscript>
S
<cfquery name="getAccessType" datasource="warehouse">
select AccessType
from customersinfo
where UserID='#Cookie.UserID#'
</cfquery>

<cf_tsconverter returnvariable="convertedDate">

<cfif url.action eq "Next">  
	
	<cfscript>
		form.OrderNumber = Cookie.OrderNumber;
		form.UserID = Cookie.UserID;
		form.AccessType = getAccessType.AccessType;
		form.dateadjusted = variables.convertedDate;
	</cfscript>	
	
    <cfinvoke component="asyncFormHandler" method="AddTheCartInformation" >
    	<cfinvokeargument name="form" value="#form#">
    </cfinvoke>
	 
	<cfif Cookie.AccessType eq "prefered"> 
		<cflocation url="https://secure.reliablecleanroomproducts.com/GatherYourInvoiceInformation.cfm">  
	<cfelse>
		<cflocation url="https://secure.reliablecleanroomproducts.com/GatherYourReceiptInformation.cfm">  
	</cfif>

</cfif>

<cfif Cookie.AccessType eq "Prefered" or Cookie.AccessType eq "Standard">

	<cfinvoke 
 	 component="CheckoutComponent"
 	 method="retrievecustomerinformation"
 	 returnvariable="populateFieldsRet">
 		<cfinvokeargument name="Arg" value="#Cookie.UserID#" />
	</cfinvoke>
    
<cfelse>

	<cfinvoke 
 	 component="CheckoutComponent"
 	 method="retrieveorderinformation"
 	 returnvariable="populateFieldsRet">
 		<cfinvokeargument name="Arg" value="#Cookie.OrderNumber#" />
	</cfinvoke>
    
</cfif>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Enter Your Mailing Address</title>

<script>
	function sF() {
		form.submit();
	}
	function redo() {
    	window.open('https://secure.ReliableCleanroomProducts.com/EnterYourMailingAddress.cfm','_self')
    }

</script>



<link href="UniversalFormatterTwo.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {	font-size: 14px;
	font-style: italic;
}
.style3 {
	color: #666666;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="883" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">

	<cfif not variables.msg eq "">
		<tr bgcolor="#FFCC66" bordercolor="#999999" class="ArialStore" >
			<td height="50" colspan="9">&nbsp;<cfoutput>#variables.msg#</cfoutput></td>
		</tr>
	</cfif>

<cfoutput>
<form name="form" action="CheckToBeSureYourInformationIsCorrect.cfm?action=Next" method="post" >
		<tr>
			<td colspan="9">
  				<img src="images/Area Fill/CheckoutStepFour.jpg"/></td>
	  </tr>
		<cfif structkeyexists(cookie, "UserID") and not cookie.UserID eq ""><tr>
			<td height="61" colspan="9" class="ArialStore">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				<cfoutput>Thank You #populateFieldsRet.Title# #populateFieldsRet.LastName# You are a #populateFieldsRet.AccessType# Member! Please Update The Your Information in the Forms Below and Feel Free to Contact Us at our Customer Support Line. </cfoutput></td>
	  </tr></cfif>
			<tr>
		<td>	</td>
	<td colspan="7"> 	  </td>
		 <td width="2">            </td>
</tr>
            <tr>
              <td bgcolor="##FFFFFF">&nbsp;</td>
              <td colspan="7" bgcolor="##FFFFFF"><span class="style3">Please Check To Be Sure That The Information You Have Entered Is Correct: </span></td>
              <td>&nbsp;</td>
            </tr>
      <tr>
<td bgcolor="##FFFFFF">&nbsp;</td>
<td colspan="7" bgcolor="##009900">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="2"><img src="images/Area Fill/275Wide.gif" alt="" width="275" height="15" /></td>
<td colspan="2"><img src="images/Area Fill/275Wide.gif" width="275" height="15" /></td>
<td colspan="2"><img src="images/Area Fill/275Wide.gif" alt="" width="275" height="15" /></td>
<td bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>

<tr>
<td width="2">&nbsp;</td>
<td colspan="2" valign="top"><strong>eMail:</strong> #PopulateFieldsRet.EmailAddress#</td>
<td colspan="2" align="left" valign="top"><strong>Phone:</strong>&nbsp;#PopulateFieldsRet.PhoneNumber#<br />#PopulateFieldsRet.PhoneNumber2#</td>
<td></td>
<td valign="top"><cfif structKeyExists(Cookie, "UserID") and not Cookie.UserId eq "">
  <strong>UserID:</strong> #Cookie.UserID#
</cfif></td>
<td width="2" bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="2">&nbsp;</td>
<td colspan="2">&nbsp;</td>
<td colspan="2">&nbsp;</td>            
<td bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td width="36" valign="top"><strong>Mail To:</strong></td>
<td width="264" rowspan="4" align="left" valign="top">&nbsp;#PopulateFieldsRet.MailFirstName#&nbsp;#PopulateFieldsRet.MailLastName#<br />
&nbsp;#PopulateFieldsRet.MailCompanyName#<br />
&nbsp;#PopulateFieldsRet.MailStreet#<br />
&nbsp;#PopulateFieldsRet.MailCity#, #PopulateFieldsRet.MailState# #PopulateFieldsRet.MailZip#</td>
<td width="29" valign="top"><strong>Bill To:</strong></td>
<td width="232" rowspan="4" align="left" valign="top">#PopulateFieldsRet.FirstName#&nbsp;#PopulateFieldsRet.LastName#<br />
&nbsp;#PopulateFieldsRet.CompanyName#<br />
&nbsp;#PopulateFieldsRet.Street#<br /> 
&nbsp;#PopulateFieldsRet.City#, #PopulateFieldsRet.State# #PopulateFieldsRet.Zip#</td>
<td width="46" valign="top"><cfif not Cookie.AccessType eq "prefered"><strong>Credit Card Info:</strong></cfif></td>
<td width="245" rowspan="4" valign="top"><cfif not Cookie.AccessType eq "prefered">
  #PopulateFieldsRet.CCType#<br />#PopulateFieldsRet.CCnameoncard# <br /> #PopulateFieldsRet.CCnumberlastFour# <br />  #PopulateFieldsRet.CCDate# <br /> #PopulateFieldsRet.CCThreeDigit# </cfif></td>
<td bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td bgcolor="##FFFFFF">&nbsp;</td>
<td width="2">&nbsp;</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td align="right">&nbsp;</td>
  <td align="right" bgcolor="##FFFFFF">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td colspan="2" align="left">&nbsp;</td>
  <td align="left" bgcolor="##FFFFFF">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td colspan="2">&nbsp;</td>
  <td colspan="2">&nbsp;</td>
  <td colspan="2" align="right">&nbsp;</td>
  <td align="right" bgcolor="##FFFFFF">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td height="46">&nbsp;</td>
  <td colspan="2">&nbsp;</td>
  <td colspan="2"><span class="style2">Checkout System</span></td>
  <td colspan="3" align="right"><img src="images/Area Fill/redo.jpg" width="100" height="42" onclick="redo()" /><img src="images/Area Fill/NextButton.jpg" onclick="sF()" border="0" /></td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td bgcolor="##FFFFFF">&nbsp;</td>
  <td colspan="7" bgcolor="##009900">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="ArialStoreGreyBold" colspan="7">Your order is important to us please get it right! Double check your typing so that you can get the products you've ordered! Be sure that everything has been spelled correctly Thank You!</td>
<td width="2">&nbsp;</td>
</tr>
<cfset ItemNumber = ArrayNew(1)>
<cfset Quantity = ArrayNew(1)>
<cfset Price = ArrayNew(1)>
<cfset Shipped = ArrayNew(1)>
        
<cfoutput>  
<cfloop from="1" to="#arraylen(migiCart)#" index="counter"> 
<cfset num = #counter#>
<cfset ItemNumber[counter] = "#migiCart[counter].ItemName.getItemNumber()#"> 
<cfset Quantity[counter] = "#migiCart[counter].quantity#">
<cfset Price[counter] = "#migiCart[counter].ItemName.getPrice()#">
<cfset Shipped[counter] = "NotYet">
</cfloop>
</cfoutput>

<cfset cartInfo = ArrayNew(1)>
<cfset cartInfo[1] = ArrayToList(#ItemNumber#)>
<cfset cartInfo[2] = ArrayToList(#Quantity#)> 
<cfset cartInfo[3] = ArrayToList(#Price#)>  
<cfset cartInfo[4] = ArrayToList(#Shipped#)>      
<cfset cartInfoList = ArrayToList(#cartInfo#, "   - ")>
<input type="hidden" name="Date" value="#dateformat(now())#">
<input type="hidden" name="Tax" value="#variables.Tax#">
<input type="hidden" name="Total" value="#variables.Total#">
<input type="hidden" name="Items" value="#variables.cartInfoList#">

</form>
</cfoutput>
</table>
</body>
</html>
