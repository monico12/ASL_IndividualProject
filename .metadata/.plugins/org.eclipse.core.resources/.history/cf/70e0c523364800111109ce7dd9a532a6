<cfparam name="question" >
<cfparam name="survey" >

<cfoutput >
	<div class="nav">
	<ul>
	<li>#linkTo(action="home", controller="user", text="Home")#</li>
	<li>#linkTo(action="questionlist", controller="main", text="Survey")#</li>
	<li>#linkTo(text="logout", controller="user", action="landing")#</li>
	</ul>
	</div>
	
	<div id="addquestionform">
	#startFormTag(action="addQuestion")#
	<ul>
	<li>#textField(label="Question", objectName="question", property="question")#</li>
	
	<cfloop index="i" from="1" to="4" >
	
	<li>#radioButton(objectName="question", property="answer", tagValue="#i#", label="")#
	#textField(label="choice #i#", objectName="question", property="choices")#</li>
	
	</cfloop>
	
	<li>#submitTag(value="Add", class="button")#
	#linkTo(text="save", action="home", controller="user")#</li>
	</ul>
	#endFormTag()#
	</div>
</cfoutput>