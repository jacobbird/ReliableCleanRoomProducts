<cfparam name="URL.originURL" default="#CGI.SCRIPT_NAME#?#CGI.QUERY_STRING#">
<cfparam name="FORM.userID" default="">
<cfparam name="errMsg" default="">

<!--- Login text Coptright &copy; 2008 Clean, Simple, and Smart Web Design --->
<html>
<link href="UniversalFormatterTwo.css" rel="stylesheet" type="text/css">
<body background="images/Area Fill/bACKGROUND-cENTER.jpg" ><center>


<cfif isDefined("FORM.submit")>

<cfquery name="qryLogin" datasource="warehouse" >
SELECT FirstName, LastName, AccessType, userID, Password
FROM customersinfo
WHERE userID = '#form.userID#' AND Password = '#form.Password#' 
</cfquery>

			<cfif qryLogin.recordCount eq 1>
            <cfcookie name="fullname" value="#qryLogin.FirstName# #qryLogin.LastName#">
            <cfcookie name="UserID" value="#qryLogin.UserID#">
            <cfcookie name="AccessType" value="#qryLogin.AccessType#">
            <cflocation url="store.cfm">
            <cfelse>
            <cfset errMsg = "Incorrect login information: Please try again">
            </cfif>
   </cfif>
   
   		<cfform action="#CGI.script_name#" method="post" name="login">
            <table width="250" cellpadding="0" border="0" cellspacing="0">            
            <tr>
            <td height="30" colspan="3" align="center" background="images/Area Fill/Plain-Blue-Fill.jpg" class="ArialStoreWhite">
            <b> Reliable Login Page:</b>            </td>
            </tr>
            <tr>
            <td width="20" bgcolor="#FFFFFF" class="ArialStore"><br>
              &nbsp;</td>
            
            <td width="200" bgcolor="#FFFFFF" class="ArialStore"><br>
              <strong>User Name:</strong><br>
              <cfinput autosuggest="false" typeahead="no" type="text" name="userID" value="#FORM.userID#" 
            maxlength="25">
<br>
<br>
<strong>Password:</strong><br>
<cfinput type="password" name="Password" maxlength="25">
<br>
<a href="ForgotPass.cfm">Forgot Login Information</a><br>
<br>
<cfinput type="hidden" name="originURL" value="#URL.originURL#">
<cfinput type="submit" name="submit" value="submit"><br><br></td>
            <td width="19" bgcolor="#FFFFFF" class="ArialStore">&nbsp;</td>
            </tr>
            </table>
            
  </cfform>
     <cfoutput>
     <span class="ArialStore">#Variables.errMsg#</span>
	</cfoutput></center>
 </body>
</html>