<cfparam name="surveys" type="query" >
<cfparam name="survey">

<cfoutput >
	<div class="nav">
	<ul>
	<li>#linkTo(action="home", controller="user", text="Home")#</li>
	<li>#linkTo(action="questionlist", controller="main", text="Survey")#</li>
	<li>#linkTo(action="results", controller="main", text="Survey Results")#</li>
	<li>#linkTo(text="logout", controller="user", action="landing")#</li>
	</ul>
	</div>

	<div id="surveylist">
	<ul><cfloop query="surveys">
		#startFormTag(action="survey", key="#surveys.id#")#
	    <li>#surveys.title#
		   #hiddenFieldTag(name="surveyId", value=surveys.id)#
		    #submitTag(value="Take Survey", class="smallbutton")#
		</li>
		#endFormTag()#
	    </cfloop>
	</ul>
	</div>
</cfoutput>