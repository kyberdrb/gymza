var ServeName 		= "www.zive.sk";
var ServerOpenOptions 	= '';//'resizable=1, scrollbars=1, toolbar=1, status=1, menubar=1';
//****************************************************************
//* FACEBOOK
//****************************************************************

//********************************************
function AddToFaceBook(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(u)+'&t='+encodeURIComponent(t),'sharer', ServerOpenOptions);
	return false;
}


//****************************************************************
//* DELICIOUS
//****************************************************************

//********************************************
function AddToDelicious(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('http://del.icio.us/post?v=4&noui&jump=close&url='+encodeURIComponent(u)+'&title='+encodeURIComponent(t), 'delicious', ServerOpenOptions);
	return false;
}


//****************************************************************
//* MS LIVE
//****************************************************************

//********************************************
function AddToLive(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('https://favorites.live.com/quickadd.aspx?marklet=1&mkt=cs-cz&url='+encodeURIComponent(u)+'&title='+encodeURIComponent(t)+'&top=1', 'live', ServerOpenOptions);
	return false;
}


//****************************************************************
//* MY SPACE
//****************************************************************

//********************************************
function AddToMySpace(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('http://www.myspace.com/index.cfm?fuseaction=postto&t=' + encodeURIComponent(t) + '&c=&u=' + encodeURIComponent(u), 'myspace', ServerOpenOptions);
	return false;
}


//****************************************************************
//* GOOGLE BOOKMARKS
//****************************************************************

//********************************************
function AddToGoogle(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('http://www.google.com/bookmarks/mark?op=add&title=' + encodeURIComponent(t) + '&bkmk=' + encodeURIComponent(u), 'google', ServerOpenOptions);
	return false;
}

//****************************************************************
//* TWITTER
//****************************************************************

//********************************************
function AddToTwitter(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle;
	window.open('http://twitter.com/home?status=' + encodeURIComponent(t) + ' - ' + encodeURIComponent(u), 'twitter', ServerOpenOptions);
	return false;
}

//****************************************************************
//* LINKUJ
//****************************************************************

//********************************************
function AddToLinkuj(aTitle, aId){
	u="http://" + ServeName + "/?article=" + aId;
	t=aTitle + " - " + ServeName;
	window.open('http://linkuj.cz/?id=linkuj&title=' + encodeURIComponent(t) + '&url=' + encodeURIComponent(u), 'linkuj', ServerOpenOptions);
	return false;
}

//****************************************************************
//* E-MAIL
//****************************************************************

//********************************************
function ShowCaptchaMailer(x, y)
{
	var oPos 	= $("#CaptchaMailer").position();
	$("#ArticleByMail").css({"top" : oPos.top-440, "left" : oPos.left-125}).show();
	$(".ArticleByMail").removeClass("CaptchaLoader").show();
	return false;
}