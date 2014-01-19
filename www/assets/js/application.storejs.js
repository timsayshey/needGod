/* 
	jQuery Mobile Boilerplate
	application.js
*/
$(document).on("pageinit", function(event){

	/*
	resizeContent();

	$(window).resize(function() {
		resizeContent();
	});

	function resizeContent()
	{
		contentHeight = document.documentElement.clientHeight - 135 + "px";
		$(".ui-content").css("min-height",contentHeight);
	} 
	*/
	function round(n) 
	{
		return Math.round(n*100+((n*1000)%10>4?1:0))/100;
	}
	// Set Variables
	var WFA = 0; // Weight at Front Axel
	var WT  = 0; // Total Weight of car
	var WB  = 0; // Wheel Base (distance between axels)
	var CoG = 0; // Center of Gravity

	// Reset Values
	$("#home a").click(function()
	{
		WFA = 0; // Weight at Front Axel
		WT  = 0; // Total Weight of car
		WB  = 0; // Wheel Base (distance between axels)
		CoG = 0; // Center of Gravity
		qInserted = 0;

		$("#WFA #number").html("");
		$("#WT #number").html("");
		$("#WB #number").html("");
		$("#CoG #number").html("");
		$(".numBox").html("");

		$("#Results #rCoG").removeClass("ui-body-c").addClass("ui-body-a");
		$("#Results #rWFA").removeClass("ui-body-c").addClass("ui-body-a");
		$("#Results #rWT").removeClass("ui-body-c").addClass("ui-body-a");
		$("#Results #rWB").removeClass("ui-body-c").addClass("ui-body-a");
	});

	// Set Back and Next Buttons
	$("a#CoG").click(function() // CoG
	{
		$("#Results #rCoG").removeClass("ui-body-a").addClass("ui-body-c");

		$('#WFA #Back').attr('href','#home');
		$('#WFA #Next').attr('href','#WB');

		$('#WB #Back').attr('href','#WFA');
		$('#WB #Next').attr('href','#WT');

		$('#WT #Back').attr('href','#WB');
		$('#WT #Next').attr('href','#Results');

		$("#Results #Back").attr('href','#WT');
	});

	$("a#WFA").click(function() // Weight at Front Axel
	{
		$("#Results #rWFA").removeClass("ui-body-a").addClass("ui-body-c");

		$('#CoG #Back').attr('href','#home');
		$('#CoG #Next').attr('href','#WT');

		$('#WT #Back').attr('href','#CoG');
		$('#WT #Next').attr('href','#WB');

		$('#WB #Back').attr('href','#WT');
		$('#WB #Next').attr('href','#Results');

		$("#Results #Back").attr('href','#WB');
	});

	$("a#WB").click(function() // Wheelbase
	{
		$("#Results #rWB").removeClass("ui-body-a").addClass("ui-body-c");

		$('#CoG #Back').attr('href','#home');
		$('#CoG #Next').attr('href','#WT');

		$('#WT #Back').attr('href','#CoG');
		$('#WT #Next').attr('href','#WFA');

		$('#WFA #Back').attr('href','#WT');
		$('#WFA #Next').attr('href','#Results');

		$("#Results #Back").attr('href','#WFA');
	});

	$("a#WT").click(function() // Total Weight of Car
	{
		$("#Results #rWT").removeClass("ui-body-a").addClass("ui-body-c");

		$('#CoG #Back').attr('href','#home');
		$('#CoG #Next').attr('href','#WB');

		$('#WB #Back').attr('href','#CoG');
		$('#WB #Next').attr('href','#WFA');

		$('#WFA #Back').attr('href','#WB');
		$('#WFA #Next').attr('href','#Results');

		$("#Results #Back").attr('href','#WFA');
	});

	// Submit Value and set results
	$("#WFA #Next").click(function(e) // Weight at Front Axel
	{
		var numField = $("#WFA #number");

		if(numField.html().length != 0)
		{
			numField.css("border","#aaa solid 1px");
			WFA = numField.html();
			WFA = parseFloat(WFA);
			doMath();
			$("#Results #rWFA span span").text(WFA);
		}
		else
		{
			alert("Whoops, you forgot to enter a number. Try again.");
			numField.css("border","#ffcc00 solid 2px");			
			e.preventDefault();
    		e.stopImmediatePropagation();			
		}
	});

	$("#WT #Next").click(function(e) // Total Weight of Car
	{
		var numField = $("#WT #number");

		if(numField.html().length != 0)
		{
			numField.css("border","#aaa solid 1px");
			WT = $("#WT #number").html();
			WT = parseFloat(WT);
			doMath();
			$("#Results #rWT span span").text(WT);
		}
		else
		{
			alert("Whoops, you forgot to enter a number. Try again.");
			numField.css("border","#ffcc00 solid 2px");
			e.preventDefault();
    		e.stopImmediatePropagation();
		}
	});

	$("#WB #Next").click(function(e) // Wheelbase
	{
		var numField = $("#WB #number");

		if(numField.html().length != 0)
		{
			numField.css("border","#aaa solid 1px");
			WT = $("#WT #number").html();
			WB = $("#WB #number").html() + $("#WB #fraction").html();
			WB = parseFloat(WB);
			doMath();
			$("#Results #rWB span span").text(WB);
		}
		else
		{
			alert("Whoops, you forgot to enter a number. Try again.");
			numField.css("border","#ffcc00 solid 2px");
			e.preventDefault();
    		e.stopImmediatePropagation();
		}
	});

	$("#CoG #Next").click(function(e) // CoG
	{
		var numField = $("#CoG #number");

		if(numField.html().length != 0)
		{
			numField.css("border","#aaa solid 1px");
			CoG = $("#CoG #number").html() + $("#CoG #fraction").html();
			CoG = parseFloat(CoG);
			doMath();
			$("#Results #rCoG span span").text(CoG);
		}
		else
		{
			alert("Whoops, you forgot to enter a number. Try again.");
			numField.css("border","#ffcc00 solid 2px");
			e.preventDefault();
    		e.stopImmediatePropagation();
		}
	});

	$(".Next").click(function(){
		console.log("WFA: " + WFA + " WB: " + WB + " WT: " + WT + " CoG: " + CoG);
	});

	function doMath()
	{			

		if(WFA !== 0 && WT !== 0 && WB !== 0) // CoG
		{
			CoG = WFA * WB / WT;
			CoG = round(CoG);

			$("#Results #rCoG span span").text(CoG);
		}
		else if(CoG !== 0 && WT !== 0 && WB !== 0) // Weight at Front Axel
		{
			WFA = CoG * WT / WB;
			WFA = round(WFA);

			$("#Results #rWFA span span").text(WFA);
		}
		else if(CoG !== 0 && WFA !== 0 && WB !== 0) // Total Weight of Car
		{
			WT = WFA * WB / CoG;
			WT = round(WT);

			$("#Results #rWT span span").text(WT);
		}
		else if(CoG !== 0 && WFA !== 0 && WT !== 0) // Wheelbase
		{
			WB = CoG * WT / WFA;
			WB = round(WB);
			
			$("#Results #rWB span span").text(WB);
		}
		
		// Set Values and Insert into DB
		qCoG = $("#Results #rCoG span span").text();		
		qWFA = $("#Results #rWFA span span").text();
		qWT = $("#Results #rWT span span").text();
		qWB = $("#Results #rWB span span").text();	
		var now = new Date();
		now.format("dd/M/yy h:mm tt");

		qValues = { CoG: parseFloat(qCoG), WFA: parseFloat(qWFA), WT: parseFloat(qWT), WB: parseFloat(qWB), timemark: now };		

		if(qValues.CoG > 0.00 &&	
		   qValues.WFA > 0.00 &&
		   qValues.WT > 0.00 &&
		   qValues.WB > 0.00 &&
		   qInserted == 0) 
		{	
			insertResult(qValues);			
			qInserted = 1;
		};	
	}
	
	function insertResult(qValues) 
	{
		if(store.get("results"))
		{
			qResults = store.get("results");
		} else {
			qResults = [];			
		}
		
		qResultsAdd = [qValues];		
		qResultsNew = qResults.concat(qResultsAdd);
		
		if(qInserted == 0)
		{
			store.set("results", qResultsNew);	
		}
		
	}
	
	$(".addResult").click(function(evt)
	{
		generateResults();
		console.log('success');
		evt.stopPropagation();
		evt.preventDefault();
	})

	function generateResults()
	{
		$("#SavedResultsList").html('');

		if(store.get("results"))
		{
			var qResults = store.get("results");
			for (var i = 0; i < qResults.length; i++) 
			{
				qHtml = '<li>' +
							'<h3>' + qResults[i].timemark + '</h3>' +					
							'<div class="ui-grid-a">' +
								'<div class="ui-block-a">' +
									'Weight at Front axle<br>' +
									'<span class="amountResult"><span>' + qResults[i].WFA + '</span> ounces</span>' +
								'</div>' +
								'<div class="ui-block-b">' +
									'Center of Gravity<br>' +
									'<span class="amountResult"><span>' + qResults[i].CoG + '</span> inches in front of the rear axle</span>' +
								'</div>' +          
								'<br class="clear"><br>' +
								'<div class="ui-block-a">' +
									'Total Weight of Car<br>' +
									'<span class="amountResult"><span>' + qResults[i].WT + '</span> ounces</span>' +
								'</div>' +
								'<div class="ui-block-b">' +
									'Wheelbase<br>' + 
									'<span class="amountResult"><span>' + qResults[i].WB + '</span> inches</span>' +
								'</div>' +        
							'</div>' +
							'<br class="clear">' +
						'</li>';

				$("#SavedResultsList").append(qHtml);
				$("#SavedResultsList").listview("refresh")				
			}
		}
	}
	
	// Hide Banner on Soft Keyboard
	$("input").focus(function (evt) {
         $(".footer").hide();
		 evt.preventDefault();
    });
	$("input").focusout(function () {
         $(".footer").show();
    });	
	

});