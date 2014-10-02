$(document).on("pageinit", function(event){
	
	$(document).on("click", ".popup", function(e) 
	{		
		window.open($(this).attr("href"), '_blank', 'location=yes');
		e.preventDefault();
		e.stopImmediatePropagation();
	});
	
	$("#part2 #Next").click(function()
	{		
		setTimeout(function () 
		{ 
			$.mobile.changePage("#part4");
		}, 3000);
	});
	
});