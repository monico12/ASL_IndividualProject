<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
	<body>
		#styleSheetLinkTag(source="main", head=true)#
		
		<div id="wrapper">#includeContent()#</div>
	</body>
</html>
</cfoutput>