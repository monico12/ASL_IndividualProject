<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	
	<!---<cffunction name="init" >
		<cfset filters(through="checkLogin", except="login, signin, register, create, landing, home")>
	</cffunction>--->
	
	<cffunction name="checkLogin" >
		<cfif not StructKeyExists(session, "user")>
			<cfset redirectTo(controller="user", action="landing")>
		</cfif>
	</cffunction>
	
</cfcomponent>