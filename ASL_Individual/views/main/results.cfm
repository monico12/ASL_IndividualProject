﻿<cfparam name="surveys" type="query" >


<cfoutput >
	<div class="nav">
	<ul>
	<li>#linkTo(action="home", controller="user", text="Home")#</li>
	<li>#linkTo(action="questionlist", controller="main", text="Survey")#</li>
	<li>#linkTo(action="results", controller="main", text="Survey Results")#</li>
	<li>#linkTo(text="logout", controller="user", action="landing")#</li>
	</ul>
	</div>
	
	<div id="surveyresultlist">
	<ul>
	<cfloop query="surveys">
		<li>#linkTo(action="userResults", controller="main", text="#surveys.title#", key="#surveys.id#")#</li>
	</cfloop>
	</ul>
	</div>
</cfoutput>