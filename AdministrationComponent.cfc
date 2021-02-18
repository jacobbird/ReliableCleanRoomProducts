<cfcomponent>
      
	<cffunction name="getAdminPass" returntype="query">
    <cfset key = "mx3op281">
    <cfquery datasource="warehouse" name="adminpass">
    select password
    from admin
    where Number = 1
    </cfquery> 
    <cfreturn adminpass/>
	</cffunction>
    
    <cffunction name="adminkey" returntype="string">
     <cfset key = "mx3op281"> 
    <cfreturn variables.key>
    </cffunction>
    
    <cffunction name="getCustomerInformation" returntype="query">
    <cfargument name="SearchParameterOne" type="string" required="no"  default="LastName">
    <cfargument name="SearchParameterTwo" type="string" required="no" default="">
    <cfquery datasource="warehouse" name="searcharps">
    select *
    from customersInfo
    Where #arguments.SearchParameterOne# like '%#arguments.SearchParameterTwo#%'
    </cfquery>
    <cfreturn searcharps/> 
    </cffunction>
    
    <cffunction name="MakePerferred" returntype="void">
    <cfargument name="UserID" type="string" required="yes" default="">
    <cfquery datasource="warehouse">
    Update customersInfo
    Set AccessType='Perferred'
    WHERE UserID='#arguments.UserID#'
    </cfquery>
    </cffunction>
    
    <cffunction name="makeStandard" returntype="void">
    <cfargument name="UserID" type="string" required="no" default="">
    <cfquery datasource="warehouse">
    Update customersInfo
    Set AccessType='Standard'
    WHERE UserID='#arguments.UserID#'
    </cfquery>
    </cffunction>
    
</cfcomponent>