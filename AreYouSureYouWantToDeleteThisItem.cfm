<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Are You Sure You Want To Delete This Item?</title>
<cfparam default="" name="url.action" type="string">
<cfparam default="" name="url.orderNumber" type="string">
<cfparam default="" name="form.orderNumber" type="string">
<cfoutput>
<cfswitch expression="#url.action#">
<cfcase value="erase">
<script type="text/javascript">
opener.open('Warehousepage.cfm','_self');
CloseWindow();
</script>
<cfquery name="erase" datasource="warehouse">
delete from orders
where ordernumber='#url.ordernumber#'
</cfquery>

</cfcase>
</cfswitch>
</cfoutput>
<script type="text/javascript">
function CloseWindow(){
window.close();
}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: x-large;
	font-weight: bold;
	color: #330066;
}
.style2 {color: #333366}
-->
</style>
</head>

<body leftmargin="0" topmargin="0">
<table width="377" border="1" cellspacing="0" cellpadding="0">
 <cfoutput>
  <tr>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
  </tr>
  <tr>
    <td width="17" bgcolor="##CC3333">&nbsp;</td>
    <td width="19" bgcolor="##CC9999">&nbsp;</td>
    <td width="288" bgcolor="##CC9999">&nbsp;</td>
    <td width="22" bgcolor="##CC9999">&nbsp;</td>
    <td width="19" bgcolor="##CC3333">&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC9999">&nbsp;</td>
    <td bgcolor="##CC9999"><p class="style1">Do you want to <u>perminently erase</u> this order from the records?</p>
    <p class="style2">#url.orderNumber#</p></td>
    <td bgcolor="##CC9999">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
  </tr>
  <tr>
    <td height="26" bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC9999">&nbsp;</td>
    <td align="right" height="25" bgcolor="##CC9999"><cfform name="form1" action="https://secure.reliablecleanroomproducts.com/AreYouSureYouWantToDeleteThisItem.cfm?action=erase&ordernumber=#url.ordernumber#"><cfinput type="hidden" name="OrderNubmer" value="#url.OrderNumber#"><cfinput type="button" name="No I am Not Sure." value="No I am Not Sure." onClick="CloseWindow();"><cfinput type="Submit" name="Yes I am Sure." value="Yes I am Sure." onClick="CloseWindow()" ></cfform></td>
    <td bgcolor="##CC9999">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
    <td bgcolor="##CC3333">&nbsp;</td>
  </tr>
 </cfoutput>
</table>
</body>
</html>
