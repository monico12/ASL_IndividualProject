<cfparam name="question" >
<cfparam name="survey" >
<cfparam name="questions" type="query" > 
<cfoutput>
<!--- TODO display questions --->

	<ul><cfloop query="questions">
	    	<li>#questions.question#</li>	
	    </cfloop>
	</ul>
	
</cfoutput>