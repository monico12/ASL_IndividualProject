﻿<cfparam name="user" >
<cfparam name="survey" >

<cfoutput >
	
	#startFormTag(action="create")#
	
	#errorMessagesFor("user")#
	
	#textField(label="First Name", objectName="user", property="firstName")#
	#textField(label="Last Name", objectName="user", property="lastName")#
	#textField(label="Email", objectName="user", property="email")#
	#textField(label="Username", objectName="user", property="username")#
	#passwordField(label="Password", objectName="user", property="password")#
	#passwordField(label="Confirm Password", objectName="user", property="passwordConfirmation")#
	
	#submitTag(value="Sign Up", class="button")#
	#endFormTag()#
</cfoutput>