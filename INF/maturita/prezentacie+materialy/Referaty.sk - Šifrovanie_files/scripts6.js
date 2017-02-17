var urlprefix='http://referaty.atlas.sk/referaty/';
var previous=null;
var paused=1;
var actual=0;
var rtim;
var tim;
var ltim;
var ltim2;
var kvetytim;
var kvetytim2;
var isatlas=1;
var contentLoaded=1;
var lShowed=0;
var vnewmailurl='http://registracia.atlas.sk/registration_step1.aspx';
var addt=new Array();
var mhpurl = "http://www.atlas.sk/";
var dofwd=1;
var expd= new Date();
addt=new Array();
addt['add']=1;
addt['start']=2;
addt['max']=4;
var IE = document.all?true:false;
var tempX = 0;
var tempY = 0;

function capturemouse() 
{
	if (!IE) document.captureEvents(Event.MOUSEMOVE);
	document.onmousemove = getMouseXY;
}

function getMouseXY(e) 
{
	if (IE) 
	{
		tempX = event.clientX+(document.documentElement.scrollLeft?document.documentElement.scrollLeft:document.body.scrollLeft);
		tempY = event.clientY+(document.documentElement.scrollTop ?document.documentElement.scrollTop:document.body.scrollTop);
	} 
	else 
	{
		tempX = e.pageX;
		tempY = e.pageY;
	}  
	if (tempX < 0){tempX = 0}
	if (tempY < 0){tempY = 0}  
	return true;
}

function switchSearch(what)
{
	if (previous==null)
	{
		previous=document.getElementById('srrf');
	}
	var srdiv=document.getElementById('searcher');
	var cpt=document.getElementById('sr'+what);
	document.getElementById('whatsearch').value=what;
	previous.className='';
	srdiv.className=what;
	cpt.className='sel';
	previous=document.getElementById('sr'+what);
}
function switchLogin(what)
{
	if(contentLoaded==1)
	{
		var srdiv=document.getElementById('loginform');
		var ld=document.getElementById('ladd');
		var nmurl=document.getElementById('newmail');
		srdiv.className=what+'log';
		if(what=='pb')
		{
			
			ld.innerHTML='@pobox.sk';
			vnewmailurl='http://registracia.pobox.sk/profile.asp?new=1&refapp=&sitelogin=&lang=SK';
			isatlas=0;
		}
		else
		{
			ld.innerHTML='@atlas.sk';
			vnewmailurl='http://registracia.atlas.sk/registration_step1.aspx';
			isatlas=1;
		}
	}
	else 
	{
		setTimeout("switchLogin('"+what+"');",500);
		//init();
		return true;
	}
}
function switchTop(what)
{
	if(contentLoaded==1)
	{
		var srdiv=document.getElementById('texts');
		srdiv.className=what;
		switchContent(what);
	}
	else 
	{
		setTimeout("switchTop('"+what+"');",500);
		//init();
		return true;
	}
}
function logme()
{
	var act;
	var ladd;
	var lform=document.getElementById('formlogin');
	var username=document.getElementById('loginname');
	var uname=document.getElementById('uname');
		var domain=document.getElementById('ego_domain');
	//alert(isatlas);
	if(isatlas==1) 
	{
		//act='http://registracia.atlas.sk/verify.aspx';
		act='https://user.atlas.sk';
		ladd='@atlas.sk';
		domain.value='atlas.sk';
		lform.url.value='http://ego.atlas.sk/sso/after-login/fwd-cookie/?baseurl='+location.href;
	}
	else
	{
		//act='http://registracia.pobox.sk/verify.aspx';
		//act='http://puser.centrum.sk';
		//act='http://pobox.centrum.sk/set_cookie.php';
		act='https://puser.centrum.sk';
    ladd='@pobox.sk';
		domain.value='pobox.sk';
		lform.url.value='http://ego.centrum.sk/sso/after-login/fwd-cookie/?baseurl='+location.href;
		
	}
	setP(document.getElementById('logourl'));
	username.value=uname.value+ladd;
	lform.action=act;
	lform.submit();
	
}
function switchContent(what)
{
	if(contentLoaded==1)
	{
		var cont1='';
		var cont2='';
		var i=1;
		var contt1=document.getElementById('ci1');
		var contt2=document.getElementById('ci2');
		switch(what)
		{
			case 'vy':
				play();
			break;
			default:
				pause();
				cont1+='<'+'a href="'+(mtexts[what][0]['url'])+'"'+'><'+'img src="http://img.mediacentrum.sk/gallery/80/'+(mtexts[what][0]['img'])+'.jpg" align="left" width="80"  height="60"'+'>';
				cont1+='<'+'/a>';
				cont1+='<'+'h3'+'><'+'a href="'+(mtexts[what][0]['url'])+'"'+'>'+(mtexts[what][0]['title'])+'<'+'/a'+'><'+'/h3>';
				cont1+='<'+'div'+' class="txt"><'+'a href="'+(mtexts[what][0]['url'])+'">'+(mtexts[what][0]['content'])+'<'+'/a'+'><'+'/div'+'>';
				cont1+='<'+'div class="secti"'+'><'+'a href="'+(mtexts[what][0]['secturl'])+'">'+(mtexts[what][0]['sectname'])+'</a> - '+'<'+'a href="'+(mtexts[what][0]['caturl'])+'">'+(mtexts[what][0]['catname'])+'<'+'/a'+'><'+'/div'+'>';
				for(i=1;i<=5;i++)
				{
					cont2+='<'+'h4'+'><'+'a href="'+(mtexts[what][i]['url'])+'"'+'>'+(mtexts[what][i]['title'])+'<'+'/a'+'><'+'/h4'+'>';
				}
				contt1.innerHTML=cont1;
				contt2.innerHTML=cont2;
			break;
		}
	}
	else 
	{
		setTimeout("switchContent('"+what+"');",500);
		//init();
		return true;
	}
}
function playpause()
{
	if (paused==1) 
	{
		
		play();
	}
	else 
	{
		pause();
	}
}
function play()
{
	if(contentLoaded==1)
	{
		var pimg=document.getElementById('playpauseimg');
		var srdiv=document.getElementById('texts');
		srdiv.className='vy';
		paused=0;
		next();
		pimg.src=urlprefix+'images/g_pause.gif';
		rtim=setTimeout('play();',6500);
	}
	else 
	{
		setTimeout("play;",500);
		//init();
		return true;
	}
}
function pause()
{
	clearTimeout(rtim);
	var pimg=document.getElementById('playpauseimg');
	pimg.src=urlprefix+'images/g_play.gif';
	paused=1;
}
function next()
{
	try
	{
		var srdiv=document.getElementById('texts');
		srdiv.className='vy';
		fillcontent();
		actual++;
		if(actual>4) actual=0;
	}
	catch(myError){}
}
function prev()
{
	try
	{
		var srdiv=document.getElementById('texts');
		srdiv.className='vy';
		fillcontent();
		actual--;
		if(actual<0) actual=4;
	}
	catch(myError){}
}
function fillcontent()
{
	try
	{
		var cont1='';
		var cont2='';
		var contt1=document.getElementById('ci1');
		var contt2=document.getElementById('ci2');
	
		cont1+='<'+'a href="'+(ctexts[actual][0]['url'])+'"'+'><'+'img src="http://img.mediacentrum.sk/gallery/80/'+(ctexts[actual][0]['img'])+'.jpg" align="left" width="80" height="60" '+'>';
		cont1+='<'+'/a>';
		cont1+='<'+'h3'+'><'+'a href="'+(ctexts[actual][0]['url'])+'"'+'>'+(ctexts[actual][0]['title'])+'<'+'/a'+'><'+'/h3>';
		cont1+='<'+'div'+' class="txt"><'+'a href="'+(ctexts[actual][0]['url'])+'">'+(ctexts[actual][0]['content'])+'<'+'/a'+'><'+'/div'+'>';
		cont1+='<'+'div class="secti"'+'><'+'a href="'+(ctexts[actual][0]['secturl'])+'">'+(ctexts[actual][0]['sectname'])+'</a> - '+'<'+'a href="'+(ctexts[actual][0]['caturl'])+'">'+(ctexts[actual][0]['catname'])+'<'+'/a'+'><'+'/div'+'>';
	
		cont2+='<'+'a href="'+(ctexts[actual][1]['url'])+'"'+'><'+'img src="http://img.mediacentrum.sk/gallery/80/'+(ctexts[actual][1]['img'])+'.jpg" align="left" width="80" height="60" '+'>';
		cont2+='<'+'/a>';
		cont2+='<'+'h3'+'><'+'a href="'+(ctexts[actual][1]['url'])+'"'+'>'+(ctexts[actual][1]['title'])+'<'+'/a'+'><'+'/h3>';
		cont2+='<'+'div'+' class="txt"><'+'a href="'+(ctexts[actual][1]['url'])+'">'+(ctexts[actual][1]['content'])+'<'+'/a'+'><'+'/div'+'>';
		cont2+='<'+'div class="secti"'+'><'+'a href="'+(ctexts[actual][1]['secturl'])+'">'+(ctexts[actual][1]['sectname'])+'</a> - '+'<'+'a href="'+(ctexts[actual][1]['caturl'])+'">'+(ctexts[actual][1]['catname'])+'<'+'/a'+'><'+'/div'+'>';
		contt1.innerHTML=cont1;
		contt2.innerHTML=cont2;
	}
	catch(myError){}
}
function HideL_ID(lid)
{
		document.getElementById(lid).style.display='none';
}

function ShowL_ID(lid,move,type)
{
	clearTimeout(tim);
	if (type==1 && lShowed==0)
	{
		tempX = tempX- 220;
		tempY = tempY- 150; 
	}
	if (type==1 && lShowed==1)
	{
		tempX = tempX;
		tempY = tempY- 150; 
	}
	else if (type==2) 
	{
		tempX = tempX- 220;
		tempY = tempY- 160; 
	}
	else if (type==3) 
	{
		tempX = tempX- 250;
		tempY = tempY; 
	}
	else if (type==0 && lShowed==0)
	{
		tempX = tempX- 220;
		tempY = tempY; 
	}
	else if (type==0 && lShowed==1)
	{
		tempX = tempX;
		tempY = tempY; 
	}
	document.getElementById(lid).style.display='block';
	if (move) 
	{
		document.getElementById(lid).style.top = tempY+'px';
		document.getElementById(lid).style.left = tempX+'px';
	}
	lastL=lid;
}

function doLay(did,move,type)
{
	tim=setTimeout('ShowL_ID(\''+did+'\',\''+move+'\',\''+type+'\')',1000);
}

function hLay(did)
{
	clearTimeout(tim);
	tim=setTimeout('HideL_ID(\''+did+'\')',1000);
}
function fillLay(what,idx,lid,w)
{
	try
	{
		var cont='';
		var conti=document.getElementById(lid);
		switch(w)
		{
			case 'm':
				cont+='<'+'div class="inn"'+'><'+'a href="'+(mtexts[what][idx]['url'])+'"'+'><'+'img src="http://img.mediacentrum.sk/gallery/80/'+(mtexts[what][idx]['img'])+'.jpg" align="left" width="80" height="60"'+'>';
				cont+='<'+'/a>';
				cont+='<'+'div'+'><'+'a href="'+(mtexts[what][idx]['url'])+'">'+(mtexts[what][idx]['content'])+'<'+'/a'+'> <'+'span'+'>'+'['+'<'+'a href="'+(mtexts[what][idx]['url'])+'">'+'+'+'<'+'/a'+'>'+']'+'<'+'/span'+'><'+'/div'+'><'+'/div'+'>';
			break;
			case 's':
				cont+='<'+'div class="inn"'+'><'+'a href="'+(stexts[what][idx]['url'])+'"'+'><'+'img src="http://img.mediacentrum.sk/gallery/80/'+(stexts[what][idx]['img'])+'.jpg" align="left" width="80" height="60"'+'>';
				cont+='<'+'/a>';
				cont+='<'+'div'+'><'+'a href="'+(stexts[what][idx]['url'])+'">'+(stexts[what][idx]['content'])+'<'+'/a'+'> <'+'span'+'>'+'['+'<'+'a href="'+(stexts[what][idx]['url'])+'">'+'+'+'<'+'/a'+'>'+']'+'<'+'/span'+'><'+'/div'+'><'+'/div'+'>';
			break;
		}
		conti.innerHTML=cont;
	}
	catch(myError)
	{
	}
}
function crTim()
{
	clearTimeout(tim);
}
function fillHd(g,an)
{
	var cont=document.getElementById('rcc1'+g.toString());
	cont.innerHTML='<a href="'+(stexts[an]['url'])+'">'+(stexts[an]['title'])+'</a>';
}
function fwd()
{
	if(dofwd==0)
	{
		addt['start']+=(2*addt['add']);
		dofwd=1;
	}
	if(addt['start']>addt['max'] || addt['start']<1) addt['start']=1;
	var x;
	for(x=0;x<addt['add'];x++)
	{
		fillHd(x+1,addt['start']);
		addt['start']++;
	}
}
function rwd()
{
	var x;
	if(dofwd==1)
	{
		addt['start']-=(2*addt['add']);
		dofwd=0;
	}
	if(addt['start']<1) addt['start']=addt['max']+addt['start'];
	for(x=0;x<addt['add'];x++)
	{
		fillHd(x+1,addt['start']);
		addt['start']++;
	}
	addt['start']-=(2*addt['add']);
}
function showLay()
{
	ltim=setTimeout('shLay();',1000);
}
function shLay()
{
	document.getElementById('smalllay').style.display='none';
	document.getElementById('biglay').style.display='block';
	setTimeout('closeLayer();',17000);
	lShowed=1;
}
function clrTimBL()
{
	if(lShowed==0) clearTimeout(ltim);
}
function closeLayer()
{
	document.getElementById('smalllay').style.display='block';
	document.getElementById('biglay').style.display='none';
	lShowed=0;
}
function setMHP(othis)
{
	var tdate=new Date();
	var ddate=new Date();
	var hpms = navigator.appVersion.indexOf("MSIE");	
	var hpie5 = (hpms>0) && (parseInt(navigator.appVersion.substring(hpms+5, hpms+7)) >= 5);
	if(hpie5)
	{
		othis.style.behavior='url(#default#homepage)';
		if (!othis.isHomePage(mhpurl))
		{
			othis.setHomePage(mhpurl);
		}
	}
}
function newmail()
{
	document.location=vnewmailurl;
}
function doKvety()
{
	kvetytim=setTimeout('sKvet();',1200);
}
function sKvet()
{
	document.getElementById('skvety').style.display='block';
}
function hKvet()
{
	document.getElementById('skvety').style.display='none';
}
function hKvety()
{
	kvetytim2=setTimeout('hKvet();',500);
}
function rTimK()
{
	clearTimeout(kvetytim2);
}
function testCook()
{
	var isCookie;
	isCookie=getCookie('testcookie');
	if(isCookie=='cookieenabled') return true;
	else return false;
}
function setCookie(name, value, expires, path, domain, secure) 
{
	document.cookie= name + "=" + escape(value) +
	((expires) ? "; expires=" + expires.toGMTString() : "") +
	((path) ? "; path=" + path : "") +
	((domain) ? "; domain=" + domain : "") +
	((secure) ? "; secure" : "");
}
function getCookie(name)
{
	var dc = document.cookie;
	var prefix = name + "=";
	var begin = dc.indexOf("; " + prefix);
	if (begin == -1) 
	{
		begin = dc.indexOf(prefix);
		if (begin != 0) return null;
    } 
    else 
    {
        begin += 2;
    }
    var end = document.cookie.indexOf(";", begin);
    if (end == -1) 
    {
        end = dc.length;
    }
    return unescape(dc.substring(begin + prefix.length, end));
}
function deleteCookie(name, path, domain) 
{
    if (getCookie(name)) 
    {
        document.cookie = name + "=" +
		((path) ? "; path=" + path : "") +
		((domain) ? "; domain=" + domain : "") +
		"; expires=Thu, 01-Jan-70 00:00:01 GMT";
    }
}
function setP(othis)
{
	var isc=getCookie('setHP');
	var tdate=new Date();
	var ddate=new Date();

	var hpurl = "http://www.atlas.sk/";
	var hpms = navigator.appVersion.indexOf("MSIE");	
	var hpie5 = (hpms>0) && (parseInt(navigator.appVersion.substring(hpms+5, hpms+7)) >= 5);
	if(hpie5)
	{
		othis.style.behavior='url(#default#homepage)';
		if (!othis.isHomePage(hpurl) && isc!='dohp')
		{
			othis.setHomePage(hpurl);
			ddate.setTime(((tdate.getTime())+(3600*24*30*1000)));
			setCookie('setHP','dohp',ddate,'/','.atlas.sk');
		}
	}
}
function logger(w)
{
	var lgr=document.getElementById('clicklogger');
	var rn=Math.random().toString();
	lgr.src='http://www.atlas.sk/loger.php?w='+w+'&rn='+rn.substring(2,10);
}
