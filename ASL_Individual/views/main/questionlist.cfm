<cfparam name="questions" type="query" >
<cfparam name="survey" >
<cfdump var="#questions#" >
<cfoutput>
	#linkTo(text="logout", controller="user", action="landing")#
	#linkTo(action="home", controller="user", text="Home")#	
	#linkTo(text="Home", action="home", controller="user")#
	
	<h1>#survey.title#</h1>
	<p>#survey.description#</p>
	<ul><cfloop query="questions">
	    	<li>Question: #questions.question#</li>
				<cfset stringData = #questions.choices#>
				<cfset arrData = ListToArray(
					stringData,
					","
					) >
				<ul>
					<cfloop index="i" from="1" to="4">
						<li>Choice #i#: #arrData[i]#</li>
					</cfloop>
				</ul>
	    </cfloop>
	</ul>
</cfoutput>