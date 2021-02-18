<cfif isdefined("url.action")>
	<cfif url.action is "delete">
		<cfset session.cart.removeItem(url.position)>
	</cfif>
</cfif>

<cfset migiCart = session.cart.getCart()>

<cfdocument format="PDF">



<!--- Place custom content here --->
<h3>Shopping Cart</h3>

<table>
	<tr>
		<th>Title</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>&nbsp;</th>
	</tr>
	
	<cfoutput>
	<cfloop from="1" to="#arraylen(migiCart)#" index="counter">
		<tr>
			<td>#migiCart[counter].ItemName.getItemName()#</td>
			<td>#dollarformat(migiCart[counter].ItemName.getprice())#</td>
			<td>#migiCart[counter].quantity#</td>
			<td><a href="cart.cfm?action=delete&position=#counter#">Delete</a></td>
		</tr>
	</cfloop>
	</cfoutput>
</table>

</cfdocument>
