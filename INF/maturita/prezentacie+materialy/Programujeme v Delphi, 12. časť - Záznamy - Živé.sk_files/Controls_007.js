//**************************************************
// BB SKYSCRAPER HANDLER
//**************************************************

//**************************************************
$(window).scroll(function(){	
	if($("#advert-stickysky:visible").length>0)
	{
		if($(window).scrollTop() < ($("#page-data-background").height()-$("#advert-stickysky").height()) )
		{
			$("#advert-stickysky").css("top", $(window).scrollTop()+2);
		}
	}
});


//**************************************************
// BB MESIAC SO SPOLOCNOSTOU
//**************************************************

//**************************************************
function WriteMesiacSo(oAdv, c)
{
	$("#BBAdvertMWith").append('<div class="rssitem' + (typeof(c)!="undefined" ? 'rss-item-last" align="center"' : '"' ) + '>' + oAdv + '</div>');
}

