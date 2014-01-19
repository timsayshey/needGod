$(document).ready(function(evt){  
    
    $('.key').hover(function(evt) {
    	evt.stopPropagation();
		evt.preventDefault();
    });

    $('.btn').hover(function(evt) {
    	evt.stopPropagation();
		evt.preventDefault();
    });
    
    $('.key').bind('tapone', function(evt){
		pageName = $(this).attr("rel");
        var numBox = $('.' + pageName + ' .numBox');
        if($(this).html() == '0'){
            if ($(numBox).html().length >= 0)
			{
                $(numBox).html($(numBox).html() + $(this).html());
			}
        }
        else
		{
            $(numBox).html($(numBox).html() + $(this).html());
		}
		evt.stopPropagation();
    });
	
    $('.btn').bind('tapone', function(evt){
		pageName = $(this).attr("rel");
        if($(this).attr("title") == 'DEL'){
            var numBox = $('.' + pageName + ' .numBox');
            if($(numBox).html().length >= 0)
			{
                $(numBox).html($(numBox).html().substring(0, $(numBox).html().length - 1));
            }
        }
        else
		{
            $(numBox).html('');
        }
        
        evt.stopPropagation();
    });
	
	//Modal 
	$('.mycontainer').hide();	
	
	$(".input").bind('tapone', function(evt){
		pageName = $(this).attr("rel");
		$('.' + pageName + ' .mymodal').css({
			top: '15%'
		});
		
		$('.' + pageName + ' .mycontainer').show();
		evt.stopPropagation();
		evt.preventDefault();
	});
	
	$('.mycontinue').bind('tapone', function(evt){
		pageName = $(this).attr("rel");
		
		$("#" + pageName + " .input").html($('.' + pageName + ' .numBox').html());
		
		$('.' + pageName + ' .mymodal').css({
			top: '-400px'
		});
		
		$('.' + pageName + ' .mycontainer').hide();	
		
	});
	
	$('.clearInput').bind('tapone', function(evt){
		pageName = $(this).attr("rel");
		$('.' + pageName + ' .numBox').html("");
		
		evt.stopPropagation();
		evt.preventDefault();
	});
	
});