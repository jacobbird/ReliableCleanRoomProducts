<!-- This Code is Copywritten (c) 2009 All Rights Reserved to Clean, Simple, and Smart dba "Out of Site Development" --> 

<cfparam default="" name="Cookie.UserID"  type="string">
<cfset UserName = "">
<cfif structKeyExists(COOKIE, "FullName")>
<cfset UserName = "Welcome: You are currently Logged In as #Cookie.UserID#! ">
</cfif>

<cfparam name="url.action" type="string" default="none">
<cfparam name="Form.Search" type="string" default="none">
<cfparam name="Cookie.AccessType" type="string" default="">
<cfparam name="url.category" type="string" default="">
<cfparam name="url.key" type="string" default="">
<cfparam name="variables.vanquish" type="string" default=0>

<cfinvoke component="customercarecomponent" method="aboutus" returnvariable="aboutusret" />
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Window-target" content="fiduciary">
		<title>Home Page</title>
		<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
		<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
		<script type="text/javascript">
			<!--
			function MM_openBrWindow(theURL,winName,features) { //v2.0
  				window.open(theURL,winName,features);
			}
			function MM_findObj(n, d) { //v4.01
  				var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    			d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  				if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>

<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<link href="UniversalFormatter.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<link href="UniversalFormatterTwo.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {
	color: #333333
}
.style4 {color: #333333}
-->
</style>
</head>

<body background="images/Area Fill/bIGbG.jpg" onLoad="MM_preloadImages('images/ButtonBank/SignIn_OVER.gif','images/ButtonBank/NewMember_OVER.gif','images/ButtonBank/Purchase_BTN_OVER.jpg','images/ButtonBank/SignOut_OVER.gif','images/ButtonBank/Home_OVER.jpg','images/ButtonBank/Store_OVER.jpg','images/ButtonBank/AboutUs_OVER.jpg','images/ButtonBank/ContactUs_OVER.jpg')" leftmargin="0" rightmargin="0" topmargin="0">
<table height="951" width="100%" border="0" cellpadding="0" cellspacing="0">
  
  <tr valign="top" >
    <td height="140" colspan="3" valign="top" align="left" background="images/Area Fill/TopBarFill.jpg"><img src="images/Area Fill/TopBarLeft.jpg" border="0"></td>
    <td width="250" height="140" colspan="2" align="right" valign="top" background="images/Area Fill/TopBarRight.jpg" class="style1"><cfif not structKeyExists(COOKIE, "FullName")>
    <a href="https://secure.reliablecleanroomproducts.com/BuyersLoginPage.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image13','','images/ButtonBank/SignIn_OVER.gif',1)"><img src="images/ButtonBank/SignIn_OUT.gif" name="Image13" width="64" height="24" border="0"></a><a href="https://secure.reliablecleanroomproducts.com/NewBuyersPage.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image14','','images/ButtonBank/NewMember_OVER.gif',1)"><img src="images/ButtonBank/NewMember_OUT.gif" name="Image14" width="99" height="24" border="0"></a>
	<cfelse>
	<a href="LogOut.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Sign Out','','images/ButtonBank/SignOut_OVER.gif',1)"><img src="images/ButtonBank/SignOut_OUT.gif" name="Sign Out" width="70" height="24" border="0"></a>
    </cfif>
	<cfif structKeyExists(COOKIE, "FullName")>
    </cfif>
	<img src="images/ButtonBank/searchbarspace.gif" width="250" height="11"><cfoutput>#variables.UserName#</cfoutput>  </td>
  </tr>
  <tr valign="top" height="1">
    <td height="0" colspan="2" background="images/ButtonBank/ButtonBarFiller.jpg"><a href="http://www.reliablecleanroomproducts.com/index.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Home','','images/ButtonBank/Home_OVER.jpg',1)"><img src="images/ButtonBank/Home_OUT.jpg" name="Home" width="75" height="35" border="0"></a><a href="https://secure.reliablecleanroomproducts.com/store.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Store','','images/ButtonBank/Store_OVER.jpg',1)"><img src="images/ButtonBank/Store_OUT.jpg" name="Store" width="124" height="35" border="0"></a><a href="http://www.reliablecleanroomproducts.com/AboutUs.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('About Us','','images/ButtonBank/AboutUs_OVER.jpg',1)"><img src="images/ButtonBank/AboutUs_OUT.jpg" name="About Us" width="105" height="35" border="0"></a><a href="http://www.reliablecleanroomproducts.com/ContactUs.cfm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Contact Us','','images/ButtonBank/ContactUs_OVER.jpg',1)"><img src="images/ButtonBank/ContactUs_OUT.jpg" name="Contact Us" width="126" height="35" border="0"></a></td>
<td height="1" colspan="3" valign="topm" align="left" background="images/ButtonBank/ButtonBarFiller.jpg">  </td>
</tr>
  <tr valign="top">
    <td width="128" valign="top" bgcolor="#666666" class="ArialStoreWhite">      
      <p><span class="style5"><br>
    </span></p></td>
	<td width="783" align="center" valign="top" bgcolor="#666666" class="ArialStoreWhite"><br>
	  <p align="justify"><cfoutput>#aboutusret.description#</cfoutput></p>
	  
    <td colspan="3" align="left" bgcolor="#666666" valign="top"></td>
  </tr>
  <tr>
    <td colspan="5" height="72" align="center" valign="bottom" bgcolor="#666666"><br><br>
      <p><span class="ArialStoreWhite">&nbsp; Home |   Store  |  &nbsp;Invoicing  &nbsp;|  Bulk Orders |  &nbsp;Terms and Conditions  &nbsp;|
        &nbsp;Contact Us</span> <span class="style5">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
    	&nbsp;    </span></p>    </td>
 </tr>
</table>
</body>