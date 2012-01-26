<cfcomponent extends="Model" output="false">
	<!--- checks if the input fields are empty --->
	<cfset validatesPresenceOf("title, description")>
</cfcomponent>