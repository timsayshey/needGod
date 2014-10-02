<cfparam name="nextTitle" default="Next">
<cfparam name="backTitle" default="Back">
<cfparam name="backIcon" default="1">
<cfparam name="nextIcon" default="1">
<cfparam name="backTheme" default="b">
<cfparam name="nextTheme" default="b">

<cfoutput>
<div class="ui-grid-a">
    <div class="ui-block-a">
        <a href="###back#" data-role="button" id="Back" <cfif backIcon>data-icon="arrow-l"</cfif> data-theme="#backTheme#">#backTitle#</a>
    </div>
    <div class="ui-block-b">
        <a href="###next#" id="Next" data-role="button" <cfif nextIcon>data-icon="arrow-r" data-iconpos="right"</cfif> data-theme="#nextTheme#">#nextTitle#</a>
    </div>    
</div>
</cfoutput>

<cfset nextTheme = "b">
<cfset backTheme = "b">
<cfset nextIcon = 1>
<cfset backIcon = 1>
<cfset nextTitle = "Next">
<cfset backTitle = "Back">