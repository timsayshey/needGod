<cfoutput>
<cfset n = pageName>
<div id="#pageName#" data-role="page" data-theme="a">

	<div data-role="header" 
		data-theme="a"
		data-position="fixed">
		<h1>Need God?</h1>
		
		<cfif n neq "home">
			<a href="javascript:history.go(-1)" data-icon="arrow-l" data-iconpos="notext">Back</a>
		</cfif>
		
	</div><!-- header -->

	<div data-role="content" data-theme="a">

        <div class="#pageName#">
        </div>
</cfoutput>