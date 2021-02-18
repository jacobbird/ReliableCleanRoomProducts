<cfif structKeyExists(COOKIE, "admin")>
<cfelse>
<cfparam name="originURL" default="https://#CGI.HTTP_HOST##CGI.SCRIPT_NAME#">
<cflocation URL="https://secure.reliablecleanroomproducts.com/AdminLogin.cfm?originURL=#urlEncodedFormat(originURL)#">
<cfabort>
</cfif>
<cfparam name="FORM.radiobutton" default="LastName" type="string">
<cfparam name="FORM.searchArea" default="" type="string">
<cfparam name="URL.action" default="" type="string">


<cfif URL.action eq "GetCustomerList">
<cflocation  url="CustomerList.cfm">
</cfif>

<cfif URL.action eq "PutKeywords">
	<cfquery datasource="warehouse" name="db">
		INSERT INTO keywords (keywordname, keyword)
        VALUES ('keyword', '#form.keywords#')
        WHERE keywordname = 'keyword'
	</cfquery>
</cfif>

<cfquery datasource="warehouse" name="db">
	SELECT *
	FROM employeeinformation
	WHERE #FORM.radiobutton# LIKE '%#FORM.searchArea#%'
	ORDER BY #FORM.radiobutton# DESC
</cfquery>

<cfif isdefined("FORM.button")>
<cfcookie name="fullname" value="admin">
<cflocation url="Admin.cfm">
</cfif><html>
<link href="UniversalFormatter.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {color: #CCCCCC}
-->
</style>
<body bgcolor="#666666" topmargin="0"><center>

<table width="986" border="0" cellpadding="0" cellspacing="0" bgcolor="FFFFFF">
  <tr>
    <td height="31" colspan="9" align="left"><cfinclude template="HeaderAdminPage.html"></td>
  </tr>
  <tr>
    <td height="50" colspan="5" align="left" valign="top" bgcolor="#CCCCCC"><img src="images/Area Fill/upperLeftCorner.jpg" width="50" height="50">&nbsp; <span class="PageHeaders">Site Administration Page:</span></td>
    <td colspan="4" align="Right" valign="bottom" bgcolor="#CCCCCC"></td>
  </tr>
  
  <tr>
    <td rowspan="2" bgcolor="#CCCCCC" ><span class="style3"></span></td>
    <td colspan="3" height="50" rowspan="2" bgcolor="#CCCCCC"><cfform name="form8" action=""><span class="style3">
      <cfinput type="button" name="LogOutC" value="Log Out" onClick="window.open('LogOutC.cfm','_self')">
    </span></cfform>      <span class="style3"></span><span class="style3"></span></td>
    <td bgcolor="#CCCCCC"><span class="style3"></span></td>
    <td width="119" bgcolor="#CCCCCC"><span class="style3"></span></td>
    <td bgcolor="#CCCCCC"><span class="style3"></span></td>
    <td colspan="2" rowspan="2" bgcolor="#CCCCCC" valign="middle"><cfform name="form" id="form" action="MailersPDF.cfm">
    <span class="style3">
    <cfinput type="submit" name="button" id="button" value="      Mailers     "/>
    <cfinput type="hidden" name="hidden" value="value"></span></cfform></td>
  </tr>
  <tr bgcolor="CCCCCC">
    <td height="25"></td>
    <td></td>
    <td align="right">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="https://secure.reliablecleanroomproducts.com/adminTwo.cfm"><img src="images/ButtonBank/Next.gif" width="58" height="18" border="0"></a></td>
  </tr>
  <tr>
  <cfform name="form" id="form" action="AdminInfo.cfm" >
    <td height="32">&nbsp; &nbsp;    </td>
    <td colspan="2" valign="bottom"><cfinput type="submit" name="button" id="button2" value="Change Administrator Info" />
      <cfinput type="hidden" name="hidden" value="value"></td>
  </cfform>
    <td align="center">&nbsp;</td>
    <td>&nbsp;</td>    
    <td></td>
    <td align="right">&nbsp;</td>
    <cfform name="form" id="form" action="CreateNewUser.cfm" >
    <td colspan="2" align="left" valign="bottom"><cfinput type="submit" name="button" id="button3" value=" Add New User" />
    <cfinput type="hidden" name="hidden" value="value">      &nbsp;&nbsp;  </td>
    </cfform>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  <tr bgcolor="000000">
    <td height="32" align="left" class="WhiteWarning">&nbsp;</td>
    <td height="32" colspan="3" align="left" class="WhiteWarning">Employee Information (Very Important)</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  <tr bgcolor="CCCCCC">
    <td colspan="9" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="9" valign="middle" bgcolor="EEEEEE"><cfform name="form1" id="form1" method="post" action="Admin.cfm">
      <label>
        &nbsp; &nbsp; &nbsp; &nbsp;<cfinput type="text" name="searchArea" id="searchArea">
      </label>
      <label></label>
      <label>
        <cfinput type="submit" name="searchDictionary" value="Search" id="searchDictionary">
      </label>
      <label>
        <cfinput type="radio" name="radiobutton" value="LastName" id="radiobutton" required="yes">
        Last Name</label>
      <label>
        <cfinput type="radio" name="radiobutton" value="FirstName" id="radiobutton2" required="yes">
        First Name </label>
      <cfinput type="radio" name="radiobutton" value="AccessType" id="radiobutton3" required="yes">
      Access Type
      <cfinput type="radio" name="radiobutton" value="UserID" id="radiobutton4" required="yes">
      UserID </cfform></td>
  </tr>
  <tr bgcolor="EEEEEE">
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th colspan="2">&nbsp;</th>
  </tr>
  <tr>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th>&nbsp;</th>
    <th colspan="2">&nbsp;</th>
  </tr>
  <tr bgcolor="CCCCCC">
    <th width="20">&nbsp;</th>
    <th width="149">First Name</th>
    <th width="138">Last Name</th>
    <th width="92">User ID</th>
    <th width="102">Password</th>
    <th>Access Type</th>
    <th width="216">Reminder</th>
    <th colspan="2">&nbsp;</th>
  </tr>
  <cfoutput query="db">
    <tr bgcolor="EEEEEE">
      <td align="center">&nbsp;</td>
      <td align="center">#db.FirstName#</td>
      <td align="center">#db.LastName#</td>
      <td align="center">#db.UserID#</td>
      <td align="center">#db.password#</td>
      <td align="center">#db.AccessType#</td>
      <td align="center">#db.Reminder#</td>
      <td colspan="2"><a href="Removeuser.cfm?UserID=#db.userID#">Remove User</a></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td colspan="2"></td>
    </tr>
  </cfoutput>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  <tr height="50" bgcolor="000000">
    <td height="32" align="left" class="WhiteWarning">&nbsp; &nbsp;</td>
    <td height="32" colspan="3" align="left" class="WhiteWarning">Buttons Below Open Reports PDFs!</td>
    <td height="32" align="left" class="WhiteWarning">&nbsp;</td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  <cfform name="form1" id="form1" method="post" action="Admin.cfm">
  <tr height="50" bgcolor="EEEEEE">
    <td align="center" >
    <td height="80" colspan="6" align="left" ><cfinput type="button" name="Submit" value=" Orders   Today   " onClick="window.open('https://secure.reliablecleanroomproducts.com/DailyOrders.cfm','OrdersToday',
'menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')">
      <cfinput type="button" name="Submit" value="OrdersFortheWeek"  onClick="window.open('https://secure.reliablecleanroomproducts.com/WeeklyOrders.cfm',
    'Orders For The Week','menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')">      
      <a href="OrdersPDF.cfm?Days=365">
      <cfinput type="button" name="Submit" value="      Orders  For  The  Month     " onClick="window.open('https://secure.reliablecleanroomproducts.com/MonthlyOrders.cfm',
    'OrdersForTheMonth','menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')"></a>    
      <cfinput type="button" name="moreOne" value="      More      ">
    <td colspan="2"></td>
  </tr>
  <tr height="50" bgcolor="EEEEEE">
    <td align="center">
    <td height="80" colspan="6" align="left"><cfinput type="button" name="Submit" value="Customers  List  " onClick="window.open('https://secure.reliablecleanroomproducts.com/CustomerList.cfm','Customers List',
'menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')">
      <label>
    <cfinput type="button" name="Submit" value="       YTD   Totals      " onClick="window.open('https://secure.reliablecleanroomproducts.com/YTD Totals.cfm',
    'YearToDateTotals','menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')">
      </label>
      <label></label>
      <cfinput type="button" name="Submit" value="      Orders    Total       " onClick="window.open('https://secure.reliablecleanroomproducts.com/TotalOrders.cfm',
    'OrdersTotal','menubar=no,width=995,height=1200 ,toolbar=no, resizeable=yes, scrollbars=yes')"> <cfinput type="button" name="moreTwo" value="      More      ">
    <td colspan="2"></td>
  </tr>
  </cfform>
  <tr bgcolor="000000" >
    <td height="31">&nbsp;</td>
    <td height="31" colspan="3"><span class="WhiteWarning">Recent Orders (Not Yet Shipped)!!</span></td>
    <td height="31">&nbsp;</td>
    <td height="31">&nbsp;</td>
    <td height="31">&nbsp;</td>
    <td width="43" height="31">&nbsp;</td>
    <td width="107" height="31">&nbsp;</td>
  </tr>
  <tr >
    <td height="31"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  <tr >
    <td height="128" colspan="9" align="center"><iframe name="RecentOrders" width="865px" height="500px" src="RecentOrders.cfm" marginwidth="0" marginheight="0"  frameborder="0"></iframe></td>
  </tr>
  <tr >
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2"></td>
  </tr>
  
  <cfform>
  <tr bgcolor="#000000">
    <td height="61" valign="middle" align="left" ></td>
    <td height="61" colspan="8" align="left" valign="middle" class="WhiteWarning" >Links:  
      <cfinput type="button" name="Submit" value="Customer Care Center" 
        onClick="window.open('https://secure.reliablecleanroomproducts.com/CustomerCareAndOrderUpdatingSystem.cfm','Window6')">
      <cfinput type="button" name="Submit" value="Warehouse and Inventory Controll" onClick="window.open('https://secure.reliablecleanroomproducts.com/warehousepage.cfm','Window7')"></td>
  </tr></cfform>
</table>

</body>
</html>
