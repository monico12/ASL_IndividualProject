﻿<cfparam name="answer" >
<cfparam name="questions" type="query">
<cfparam name="survey" >

<!---<cfdump var="#questions#" >--->

<cfoutput >
	
	<h1>#survey.title#</h1>
	<div id="questionlist">
	#startFormTag(action="submit", key="#params.key#")#
	<cfset j = 1>
	<cfloop query="questions">
			#hiddenFieldTag(name="#j#", value="#questions.id#")#
        	Question: #questions.question#
     		<cfset stringData = #questions.choices#>
			<cfset arrData = ListToArray(stringData, ",")>
				
				<ul>
					<cfloop index="i" from="1" to="4">
							<li>#radioButton(objectName="answer", property="#j#", tagValue="#i#", label="")#
							#arrData[i]#</li>
					</cfloop><hr>
				</ul>
				<cfset j++>
	</cfloop>
	
	#submitTag(value="Submit Answers", class="smallbutton")#
	#endFormTag()#
	
	</div>
	
</cfoutput>