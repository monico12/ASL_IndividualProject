﻿<!---<cfparam name="survey" type="query" >
<cfoutput >
	#linkTo(text="logout", controller="user", action="logout")#
	<h1>Welcome #linkTo(text="#session.user.username#", controller="main", action="createSurvey")#</h1>
	
	#linkTo(text="Create a Survey", controller="main", action="createSurvey")#
	#linkTo(text="Take a Survey", controller="main", action="takeSurvey")#
	
	<ul><cfloop query="survey">
	    <li>#linkTo(text="#survey.title#", controller="main", action="displayList")#</li>	
	    </cfloop>
	</ul>
	
</cfoutput>--->
<cfparam name="surveys" type="query">

<cfoutput>
	<div class="nav">
	<ul>
	<li>#linkTo(action="home", controller="user", text="Home")#</li>
	<li>#linkTo(action="questionlist", controller="main", text="Survey")#</li>
	<li>#linkTo(action="results", controller="main", text="Survey Results")#</li>
	<li>#linkTo(text="logout", controller="user", action="landing")#</li>
	</ul>
	</div>
	<h1>Welcome #linkTo(text="#session.user.username#", controller="main", action="createSurvey")#</h1>
	#linkTo(text="Create a Survey", controller="main", action="createSurvey")#
	#linkTo(text="Take a Survey", controller="main", action="takeSurvey", class="logoutlink")#
	
	<div id="content">
	<h2>Survey List</h2>
	<ul><cfloop query="surveys">
	    <li>#linkTo(text="#surveys.title#", controller="", action="")#</li>	
	    </cfloop>
	</ul>
	</div>
</cfoutput>
