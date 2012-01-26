<cfcomponent extends="Model" output="false">
	<cffunction name="init" >
		<!--- checks if the input fields are empty --->
		<cfset validatesPresenceOf("firstName, lastName, email, username, password")>
		<!--- checks database if email or username has been used --->
		<cfset validatesUniquenessOf("email, username")>
		<!--- checks if password matches confirmation password --->
		<cfset validatesConfirmationOf("password")>
		<!--- checks if its in a valid email format --->
		<cfset validatesFormatOf(property="email", type="email")>
	</cffunction>
</cfcomponent>