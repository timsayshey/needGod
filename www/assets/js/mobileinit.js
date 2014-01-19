/* 
	jQuery Mobile Boilerplate
	mobileinit.js
	http://jquerymobile.com/demos/1.0.1/docs/api/globalconfig.html

	This file is only required if you need to apply overrides to the
	page before anything else has run. It MUST be loaded before
	the jQuery Mobile javascript file.
*/
$(document).bind('mobileinit', function(event){
	// apply overrides here
	//$.mobile.loadingMessage = "Loading ...";
        //$.mobile.loadingMessageTheme = "a"
        //$.mobile.loadingMessageTextVisible = false; 
        //$.mobile.pageLoadErrorMessage = "Error Loading Page"
        //$.mobile.pageLoadErrorMessageTheme = "e"
	
	// Navigation
	//$.mobile.page.prototype.options.backBtnText = "Go back";
	//$.mobile.page.prototype.options.addBackBtn      = true;
	//$.mobile.page.prototype.options.backBtnTheme    = "d";
	
	// Page
	//$.mobile.page.prototype.options.headerTheme = "a";  // Page header only
	//$.mobile.page.prototype.options.contentTheme    = "c";
	//$.mobile.page.prototype.options.footerTheme = "a";
	
	// Listviews
	//$.mobile.listview.prototype.options.headerTheme = "a";  // Header for nested lists
	//$.mobile.listview.prototype.options.theme           = "c";  // List items / content
	//$.mobile.listview.prototype.options.dividerTheme    = "d";  // List divider
	//$.mobile.listview.prototype.options.splitTheme   = "c";
	//$.mobile.listview.prototype.options.countTheme   = "c";
	//$.mobile.listview.prototype.options.filterTheme = "c";
	//$.mobile.listview.prototype.options.filterPlaceholder = "Filter data...";
	
	//$.mobile.dialog.prototype.options.theme
	//$.mobile.selectmenu.prototype.options.menuPageTheme
	//$.mobile.selectmenu.prototype.options.overlayTheme
    $.mobile.buttonMarkup.hoverDelay = 0;

	// Setting #container div as a jqm pageContainer
    $.mobile.pageContainer = $('#container');

    // Setting default page transition to slide
    $.mobile.defaultPageTransition = '';

    initBanners = 0;

});

$( document ).on( "pageinit", function() {
    $( "#popupVideo iframe" )
        .attr( "width", 0 )
        .attr( "height", 0 );
		  
    $( "#popupVideo" ).on({
        popupbeforeposition: function() {
            var size = scale( 497, 298, 15, 1 ),
                w = size.width,
                h = size.height;

            $( "#popupVideo iframe" )
                .attr( "width", w )
                .attr( "height", h );
        },
        popupafterclose: function() {
            $( "#popupVideo iframe" )
                .attr( "width", 0 )
                .attr( "height", 0 );    
        }
    });

    function scale( width, height, padding, border ) {
        var scrWidth = $( window ).width() - 30,
            scrHeight = $( window ).height() - 30,
            ifrPadding = 2 * padding,
            ifrBorder = 2 * border,
            ifrWidth = width + ifrPadding + ifrBorder,
            ifrHeight = height + ifrPadding + ifrBorder,
            h, w;

        if ( ifrWidth < scrWidth && ifrHeight < scrHeight ) {
            w = ifrWidth;
            h = ifrHeight;
        } else if ( ( ifrWidth / scrWidth ) > ( ifrHeight / scrHeight ) ) {
            w = scrWidth;
            h = ( scrWidth / ifrWidth ) * ifrHeight;
        } else {
            h = scrHeight;
            w = ( scrHeight / ifrHeight ) * ifrWidth;
        }

        return {
            'width': w - ( ifrPadding + ifrBorder ),
            'height': h - ( ifrPadding + ifrBorder )
        };
    };
});

