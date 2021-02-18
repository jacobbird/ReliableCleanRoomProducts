<cfif structKeyExists(COOKIE, "admin")>
<cfelse>
<cfparam name="originURL" default="https://#CGI.HTTP_HOST##CGI.SCRIPT_NAME#">
<cflocation URL="AdminLogin.cfm?originURL=#urlEncodedFormat(originURL)#">
<cfabort>
</cfif>
<cfparam name="FORM.radiobutton" default="LastName" type="string">
<cfparam name="FORM.searchArea" default="" type="string">
<cfparam name="URL.action" default="" type="string">


<cfif URL.action eq "GetCustomerList">
<cflocation  url="CustomerList.cfm">
</cfif>

<cfif URL.action eq "UpdateAboutUs">
	<cfinvoke component="CustomerCareComponentThree" method="UpdateAboutUs">
    <cfinvokeargument name="FormData" value="#Form.Textarea#">
    </cfinvoke>
</cfif>

<cfif URL.action eq "PutKeywords">
	<cfinvoke component="CustomerCareComponentThree" method="UpdateKeywords">
    <cfinvokeargument name="FormData" value="#Form.Keywords#">
    </cfinvoke>
</cfif>
 
<link href="UniversalFormatter.css" rel="stylesheet" type="text/css">
<cfinvoke component="customercarecomponent" method="AboutUs" returnvariable="AboutUsret">

<style type="text/css">
<!--
.style2 {
	font-family: "Times New Roman", Times, serif;
	color: #333333;
	font-size: x-large;
}
-->
</style>
<html>
<link href="UniversalFormatter.css" rel="stylesheet" type="text/css">
<link href="UniversalFormatterTwo.css" rel="stylesheet" type="text/css">
<body bgcolor="#666666" topmargin="0"><center>

<table width="987" border="0" cellpadding="0" cellspacing="0" bgcolor="FFFFFF">
  <tr>
    <td height="31" colspan="7" align="left"><cfinclude template="HeaderAdminPage.html"></td>
  </tr>
  <tr>
    <td height="100" colspan="5" valign="top" align="left" bgcolor="#CCCCCC"><img src="images/Area Fill/Fifth-Reliable-Design-w-pallet-a-btn3.jpg" width="32" height="32"><span class="PageHeaders"> Site Administration Page Two: </span><br>
    <cfform name="form8" action="">&nbsp; &nbsp;<cfinput type="button" name="LogOutC" value="Log Out" onClick="window.open('LogOutC.cfm','_self')"></cfform></td>
    <td colspan="2" align="Left" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td width="74"></td>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><a href="https://secure.reliablecleanroomproducts.com/admin.cfm"><img src="images/ButtonBank/previous.gif" width="58" height="18" border="0"></a></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td width="31">&nbsp;</td>
    <td width="274"></td>
    <td width="81"></td>
    <td width="241"></td>
    <td width="175"></td>
    <td></td>
    <td width="110"></td>
  </tr>
  <tr bgcolor="000000">
    <td>&nbsp;</td>
    <td height="32" colspan="4" class="WhiteWarning">Search Engine Optimization</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
  <cfform name="form" id="form" action="AdminInfo.cfm" >
    <td>&nbsp;</td>
    <td align="right"><b>Search Engine:</b>&nbsp;</td>
    <td>&nbsp;</td>
  </cfform>
    <cfform name="form" id="form" action="Admin.cfm?action=PutKeywords" >
    <td align="left">
    <cfinput type="text" name="keywords" id="keywords" 	value="Enter keywords for site." size="28">
    &nbsp;<cfinput type="submit" name="submit" id="submit" value="submit"></td>
    <td>&nbsp;</td>
    </cfform>
    <td></td>
    <td align="right"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr bgcolor="CCCCCC">
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td colspan="2">More search engine optimization options available upon request!!!!</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr bgcolor="000000">
    <td align="left" height="32" class="WhiteWarning">&nbsp; &nbsp;</td>
    <td height="32" colspan="3" align="left" class="WhiteWarning">About Us &amp; Home Page Information:</td>
    <td></td>
    <td></td>
    <td></td>
  </tr><cfform name="AboutUs" action="adminTwo.cfm?action=UpdateAboutUs" method="post">
  <tr bgcolor="CCCCCC">
    <td colspan="7" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7" valign="middle" bgcolor="EEEEEE"></td>
  </tr>
  <tr bgcolor="EEEEEE">
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="5" align="center"><cftextarea name="textarea" cols="95" rows="5" value="#aboutUsRet.Description#" maxlength="3000"></cftextarea></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
      <td>&nbsp;</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td align="center"><cfinput type="submit" name="submit" value="  Submit  "></td>
    <td align="right">&nbsp;</td>
    <td></td>
  </tr></cfform>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td align="right"> </td>
    <td></td>
  </tr>
  <tr height="50" bgcolor="#000000">
    <td height="32" align="left" class="WhiteWarning" >&nbsp;</td>
    <td height="32" colspan="3" align="left" class="WhiteWarning" >Marketing Report and Tools: (Some Ideas For the Future)</td>
    <td height="32" align="left" class="WhiteWarning" >&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <cfform name="form1" id="form1" method="post" action="Admin.cfm">
  <tr height="50" bgcolor="EEEEEE">
    <td align="right" >
    <td height="80" colspan="5" align="center">    
    <cfinput type="button" name="Submit" value="Map The Market" onClick="">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<cfinput type="button" name="Submit" value="Marketing Report"  onClick="">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <cfinput type="button" name="Submit" value="Charts and Graphs" onClick="">    
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;      
    <cfinput type="button" name="Submit" value="Attach to QuickBooksPro ">
    <td></td>
  </tr>
  <tr height="50" bgcolor="EEEEEE">
    <td align="right">
    <td height="80" colspan="5" align="center">    
    <label>
      &nbsp;&nbsp;<cfinput type="button" name="Submit" value=" Demographics " onClick="">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
      <cfinput type="button" name="Submit" value=" OnLine  Surveys ">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <cfinput type="button" name="Submit" value="Customer's Satisfaction" onClick="">
    </label>      
    <label></label>
    <td></td>
  </tr>
  </cfform>
  <tr >
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  
  <tr bgcolor="000000">
    <td height="28" align="left" valign="middle" bgcolor="#000000"></td><cfform>
    <td height="61" colspan="3" align="left" valign="middle" class="WhiteWarning" bgcolor="#000000">Links:  
      <cfinput type="button" name="Submit" value="Customer Care Center" 
        onClick="window.open('https://secure.reliablecleanroomproducts.com/CustomerCareAndOrderUpdatingSystem.cfm','Window6')">
    <cfinput type="button" name="Submit" value="Warehouse and Inventory Controll" onClick="window.open('https://secure.reliablecleanroomproducts.com/warehousepage.cfm','Window7')"></td></cfform>
    <td height="32" colspan="2" align="right" valign="middle" bgcolor="#000000">&nbsp;</td>
    <td height="28" valign="middle" align="left" bgcolor="#000000">&nbsp;</td>
  </tr>
</table>

</body>
</html>
