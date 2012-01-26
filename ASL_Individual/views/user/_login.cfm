<cfparam name='user'>
<cfparam name="surveys">
<cfoutput>
	<div id="loginform">
	#startFormTag(action="signin")#
	#textField(label="Username", objectName="user", property="username", class="inputfields")#
	#passwordField(label="Password", objectName="user", property="password", class="inputfields")#
	#submitTag(value="Login", class="button")#
	#endFormTag()#
	</div>
</cfoutput>