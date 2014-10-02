<cfhttp url="http://outerplex.com/NeedGod/assets/www/index.cfm">

<cffile action="write"
	file="#expandPath('.')#\index.html"
	output="#cfhttp.filecontent#">

<cfif isDefined("url.redir")>
	<cflocation addtoken="no" url="index.html">
</cfif>

<a href="generate.cfm?redir">Generate new index.html</a>