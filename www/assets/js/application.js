$(document).on("pageinit", function(event){
									
	$("#part2 #Next").click(function()
	{		
		setTimeout(function () 
		{ 
			$.mobile.changePage("#part4");
		}, 3000);
	});
	
});