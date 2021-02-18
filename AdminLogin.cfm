<!--- Login text Copyright &copy; 2008 Clean, Simple, and Smart Development --->
<cfparam name="URL.originURL" default="#CGI.SCRIPT_NAME#?#CGI.QUERY_STRING#">
<cfparam name="FORM.userID" default="">
<cfparam name="errMsg" default="">

<html>
<link href="UniversalFormatterTwo.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style4 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
<body background="images/Area Fill/bACKGROUND-cENTER.jpg" class="ArialStore">
<center>

<cfif isDefined("FORM.submit")>

	<cfquery name="qryLogin" datasource="warehouse">
		SELECT userID, Password
		FROM admin
		WHERE userID = '#form.userID#' AND Password = '#form.Password#' 
	</cfquery>

	<cfif qryLogin.recordCount EQ 1>
    	<cfcookie name="admin" value="admin" >
    	<cfcookie name="userSecurity" value="high">
    	<cflocation url="admin.cfm">
    <cfelse>
            <cfset errMsg = "Incorrect login information: Please try again">
    </cfif>
    
</cfif>

<cfoutput>https://#CGI.HTTP_HOST##CGI.SCRIPT_NAME#
<cfform action="AdminLogin.cfm" method="post" name="login">
<table width="263" cellpadding="0" border="0" cellspacing="0">            
    <tr>
    	<td height="30" colspan="3" align="center" class="ArialStoreWhite" bgcolor="##000000"><p class="style4">Administrator Login:</p></td>
    </tr>
    <tr bgcolor="##FFFFFF">
    	<td width="20"></td>
        <td width="200"><br><p><strong>User Name: </strong><br>
        	<cfinput type="text" name="userID" value="" typeahead="no" autosuggest="no" maxlength="25">
        	<br>
        	<strong>Password:</strong>
        	<br>
  			<cfinput type="password" name="Password" maxlength="25">
  			<br>
            <br>
            <cfinput type="hidden" name="originURL" value="#URL.originURL#">
            <cfinput type="submit" name="submit" value="submit">
            </p>
            <br>
		</td>
		<td width="14">&nbsp;</td>
	</tr>
</table>

</cfform>
	#Variables.errMsg#
</cfoutput>

</body>
</html>
            
            


