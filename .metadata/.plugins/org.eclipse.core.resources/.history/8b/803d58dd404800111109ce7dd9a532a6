<cfparam name="user" >

<cfoutput >
	<div id="registerform">
	#startFormTag(action="create")#
	
	#errorMessagesFor("user")#
	<ul>
	<li>#textField(label="First Name", objectName="user", property="firstName", class="inputfields")#</li>
	<li>#textField(label="Last Name", objectName="user", property="lastName", class="inputfields")#</li>
	<li>#textField(label="Email", objectName="user", property="email", class="inputfields")#</li>
	<li>#textField(label="Username", objectName="user", property="username", class="inputfields")#</li>
	<li>#passwordField(label="Password", objectName="user", property="password", class="inputfields")#</li>
	<li>#passwordField(label="Confirm Password", objectName="user", property="passwordConfirmation", class="inputfields")#</li>
	
	<li>#submitTag(value="Sign Up", class="button")#</li>
	</ul>
	</div>
	#endFormTag()#
	
</cfoutput>