function google_ad_request_done(o)
{
	var insE=$('googleAdWordsEl');
	if(o.length>0 && insE)
	{
		if(MooTools.version=='1.11')
		{
			new Element('div').addClass('blockTitle3').setHTML('<a href="'+google_info.feedback_url+'" target="_blank">Reklamy Google</a>').injectInside(insE);
			var i=0;
			for(i=0;i<o.length;i++)
			{
				var ad=o[i];
				var e=new Element('div').addClass('item');
				var p=new Element('p');
				var str='';
				str+='<a href="'+ad.url+'" class="title" target="_blank">'+ad.line1+'</a>'
				str+=ad.line2+' '+ad.line3+'<br/>';
				str+='<a href="'+ad.url+'" target="_blank" class="info">'+ad.visible_url+'</a>'
				p.setHTML(str);
				p.injectInside(e);
				e.injectInside(insE);
			}
		}
		else
		{
			new Element('div').addClass('blockTitle3').set('html','<a href="'+google_info.feedback_url+'" target="_blank">Reklamy Google</a>').inject(insE);
			var i=0;
			for(i=0;i<o.length;i++)
			{
				var ad=o[i];
				var e=new Element('div').addClass('item');
				var p=new Element('p');
				var str='';
				str+='<a href="'+ad.url+'" class="title" target="_blank">'+ad.line1+'</a>'
				str+=ad.line2+' '+ad.line3+'<br/>';
				str+='<a href="'+ad.url+'" target="_blank" class="info">'+ad.visible_url+'</a>'
				p.set('html',str);
				p.inject(e);
				e.inject(insE);
			}
		}
	}
}
google_ad_client = 'ca-centrum-sk';
google_ad_section = 'default';
google_ad_output = 'js';
google_max_num_ads = '3';