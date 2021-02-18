<cfparam name="#URL.option#" default="1" type="numeric">
<cfform  name="Form" action="cliform.cfm?option=#Form.TemplaName#">
<cfselect enabled="yes" name="TemplaName" multiple="yes">
<option value="1">Boutique 2 pages w/ Cart</option>
<option value="2">Retailer 3 pages w/ 2 Cart</option>
<option value="3">Retailer 3 pages w/o 2 Cart</option>
<option value="4">Retailer 4 pages w/ 3 Cart</option>
<option value="5">Retailer 4 pages w/o 3 Cart</option>
<option value="6">Retailer 5 pages w/ 4 Cart</option>
<option value="7">Retailer 6 pages w/ 5 Cart</option>
<option value="8">Art Protfoilio 2 pages no Cart</option>
<option value="9">Faith 3 Calender </option>
<option value="10">League 1 </option>
<option value="11">League 2 </option>
<option value="12">League 3 </option>
<option value="13">League 4 </option>
<option value="14">501 c3 1 page w Donation option req. bank info</option>
<option value="15">501 c3 1 page w/o Donation option</option>
<option value="16">501 c3 2 page w Donation option</option>
<option value="17">501 c3 3 page w Donation option</option>
<option value="18">501 c3 4 page w Donation option</option>
<option value="19">501 c3 5 page Donation included</option>
<option value="20">Wholeseller 2 pages</option>
<option value="21">Wholeseller 3 pages</option>
<option value="22">Wholeseller 4 pages</option>
<option value="23">Wholeseller 5 pages</option>
<option value="24">Wholeseller 6 pages</option>
<option value="25">Wholeseller 7 pages</option>
<option value="26">Other</option>
</cfselect>
</cfform>
