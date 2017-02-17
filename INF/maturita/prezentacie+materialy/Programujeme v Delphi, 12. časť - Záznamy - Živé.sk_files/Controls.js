$(document).ready(function(){
	if(typeof(Inquiry)!="undefined")
	{
		$("<div class=\"box inquiry-box\"></div>").insertBefore("#main-article  .bbtext > p:first");
		//header
		$(".inquiry-box").append("<div class=\"box-header\"><h3>" + Inquiry.title + "</h3></div>");
		//strips
		$(".inquiry-box").append("<div class=\"box-data\"></div>");
		$(Inquiry.answers).each(function(i, item){
			if(item.id)
			{
				$(".inquiry-box .box-data").append('<div class="inquiry-answer"><a href="javascript:PubSystemControlsRunInquiryVote(' + item.id + ', ' + item.id_answer + ')">' + item.answer + '</a></div>');

				var Strip 	 = '<div class="inquiry-state">';
				    Strip 	+= '<span class="inquiry-state-count">' + item.clicks + '%</span>';
				    Strip 	+= '<span class="inquiry-state-strip"><a href="javascript:PubSystemControlsRunInquiryVote(' + item.id + ', ' + item.id_answer + ')"><span style="width:' + (item.clicks+10) + 'px;"></span></a></span>';
				    Strip 	+= '</div>';
				$(".inquiry-box .box-data").append(Strip);
			}
		});
		//footer
		$(".inquiry-box").append("<div class=\"box-footer\">Hlasovalo " + (Inquiry.count | 0) + " ľudí</div>");
	}
});