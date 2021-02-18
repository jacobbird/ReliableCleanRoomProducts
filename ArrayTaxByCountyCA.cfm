<cfset TaxByCounty = ArrayNew(3)>
<cfscript>
ArrayAppend(TaxByCounty[1][1], Acampo)
ArrayAppend(TaxByCounty[1][1], San Joaquin)
ArrayAppend(TaxByCounty[1][1], 0.07750)

</cfscript>
<cfdump var="#TaxByCounty#">