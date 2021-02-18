<cfquery name="q1" datasource="mrigotit" dbname="migisc">
SELECT *
FROM itemssc
</cfquery>
<cfif isDefined("url.action")>
<cfif url.action is "update">
<cfset num = LSParseNumber("#Form.quan#")>
<cfquery name="q2"  datasource="mrigotit" dbname="migisc">
UPDATE itemssc
SET Quan= #q1.Quan# - #variables.num#
WHERE ItemName = '#form.name#' 
AND SizeSML = '#form.size#'

</cfquery>
</cfif>
</cfif>

<cfform action="applett.cfm?action=update">
<table width="746" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td width="181" valign="top">Decription:
    <cfselect name="desc" query="q1" value="Description">
    
    </cfselect>
  	</td>
    <td valign="top" width="182">Item Name:
    <cfselect name="name" query="q1"  value="ItemName" >   
    </cfselect>
    </td>
    <td valign="top" width="140">Size:
    <cfselect name="size" query="q1" value="SizeSML"></cfselect></td>
    <td valign="top" width="243">Quantity:
    <cfinput type="text" name="quan"></td>
    <td valign="top">
    <cfinput name="sumbit" type="submit">
    </td>
  </tr>
</table>
</cfform>
