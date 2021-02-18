<cfif structKeyExists(COOKIE, "admin")>
<cfelse>
<cfparam name="originURL" default="#CGI.SCRIPT_NAME#?#CGI.QUERY_STRING#">
<cflocation URL="AdminLogin.cfm?originURL=#urlEncodedFormat(originURL)#">
<cfabort>
</cfif>
<cfquery datasource="warehouse" name="db">
SELECT UserID
FROM admin
</cfquery>
<html>
<body>
<center>
<cfparam name="URL.state" default="" type="string">
<cfform name="form1" id="form1" method="post" action="NewAdmin.cfm">
<table width="518" border="0" cellpadding="4">
  <tr>
    <td colspan="2" align="Center"><p>Administrator Information:</p>
    <p><strong>Important:</strong> Admin Password provides access to restricted pages and could allow unauthorized access to administration pages.</p></td>
  </tr>
  <tr>
    <td height="35" align="right">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="150" height="35" align="right">UserName:</td>
    <td width="346">
      <label>
      <cfinput type="text" name="UserID" id="UserID" value="" required="yes">
      </label>    </td>
  </tr>
  <tr>
    <td align="right">Password:</td>
    <td>
      <label>
      <cfinput type="password" name="Password" id="Password" maxlength="12" required="yes">
      </label>   </td>
  </tr>
  <tr>
    <td align="right">re-type Password:</td>
    <td>
      <label>
      <cfinput type="password" name="Password2" id="Password2" maxlength="12" required="yes">
      </label>   </td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td><label></label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><cfinput type="submit" name="Button" value="Submit" id="Button">
    <cfinput type="hidden" name="hiddenField" value="employee"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><cfset message='#URL.state#'><cfoutput>#variables.message#</cfoutput>&nbsp;</td>
  </tr>
</table> 
</cfform>
</body>
</html>
