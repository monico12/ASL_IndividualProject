﻿<cfcomponent extends="Controller" output="false">
	
	<cffunction name="landing" >
		<cfset user = model("user").new()>
		<cfset surveys = model("survey").new()>		
	</cffunction>
	
	<cffunction name="home" >
		
			<cfset survey = model("survey").new()>
			<cfset surveys = model("survey").findAll(where="userId = #session.user.id#")>
		
	</cffunction>
	
	<cffunction name="register" >
		<cfset user = model("user").new()>
		
	</cffunction>
	
	<cffunction name="create">
		
		<cfset user = model("user").new(params.user)>
		
		<!--- salting and hashing password --->
		<cfset salt="salt" />
		<cfset passwordHash=Hash(user.password & salt, 'MD5' ) />
		<cfset confirmPasswordHash=Hash(user.passwordConfirmation & salt, 'MD5' )/>
		
		<cfset user.password = #passwordHash#>
		<cfset user.passwordConfirmation = #confirmPasswordHash#>
		
		<cfset user.save()>
			
		<cfset user= model("user").findOne(where="username='#params.user.username#' AND password='#passwordHash#'")>
		<cfset surveys = model("surveys").findAll(where="userId = #user.id#")>
		
		<cfif IsObject(user)>
			
			<cfset session.user.id = user.id>
			<cfset session.user.username = user.username>
			
			<cfset surveys = model("surveys").findAll(where="userId = #session.user.id#")>
			<cfset renderPage(action="home", controller="user")>
			
		<cfelse>
			
			<cfset user= model("user").new(username=params.user.username)>
			<cfset flashInsert(error="Invalid username and password")>
			<cfset renderPage(action="landing")>
			
		</cfif>
		
	</cffunction>
	
	<!--- log out function - ends session and redirects them to the login page--->
	<cffunction name="logout" >
		
		<cfset StructDelete(session, "user")>
		<cfset redirectTo(controller="user")>
		
	</cffunction>
	
	<!--- creates an empty user object --->
	<cffunction name="login">
		<cfset user= model("user").new()>
	</cffunction>
	
	<!--- log in function - starts session --->
	<cffunction name="signin">
		<cfset user = model("user").new()>
		
		<cfset salt="salt" />
		<cfset passwordHash=Hash(params.user.password & salt, 'MD5' ) />
		<cfset user= model("user").findOne(where="username='#params.user.username#' AND password='#passwordHash#'")>
		
		<cfif IsObject(user)>
			
			<cfset session.user.id = user.id>
			<cfset session.user.username = user.username>
			
			<cfset surveys = model("surveys").findAll(where="userId = #session.user.id#")>
			<cfset renderPage(action="home")>
			
		<cfelse>
			<cfset user= model("user").new(username=params.user.username)>
			<cfset flashInsert(error="Invalid username and password")>
			<cfset renderPage(action="landing")>
			
		</cfif>

	</cffunction>
	
	<!--- gets list of survey from a user using their id --->
	<cffunction name="surveyList" >
		<cfset surveys = model("survey").new()>
		<cfset surveys = model("survey").findAll(where="userId = #session.user.id#")>
		<!---<cfset surveyList = model("survey").findAll(where="userId = 20")>
		<cfset redirectTo(controller="user", action="home")>--->
		
	</cffunction>
	
</cfcomponent>