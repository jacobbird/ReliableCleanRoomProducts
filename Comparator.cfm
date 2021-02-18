<cfparam default="" name="attributes.datasource" type="string">
<cfparam default="" name="attributes.column" type="string">
<cfparam default="" name="attributes.table" type="string">
<cfparam default="" name="attributes.varaibles" type="string">

<cftry>

	<cfquery name="qComp" datasource="#attributes.datasource#">
		select #attributes.column#
		from #attributes.table#
	</cfquery> 
    
    <cfloop query="qComp">
    	<cfif #attribute.variable# eq qComp.#attributes.column#>
			<cfset m = true>
		<cfelse>
    		<cfset m = false>
		</cfif>
    <cfloop>
    
	<cfcatch type="missinginclude">
		<cfthrow type="missinginclude"  
     	 message="Neccesary attributes not definded in tag, check syntax. Required attributes are Datasource, Table, Column, and Variable" 		
     	 errorcode="ATTCATCHTHROW:001">
	</cfcatch>
    
</cftry>