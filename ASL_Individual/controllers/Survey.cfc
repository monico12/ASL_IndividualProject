﻿<cfcomponent extends="Controller" output="false">
	
	<cffunction name="register" >
		<cfset survey = model("survey").new()>
	</cffunction>
	
	<cffunction name="create">
		<cfset survey = model("survey").new(params.survey)>
		
		<cfset survey.save()>
		
	</cffunction> 
	
</cfcomponent>