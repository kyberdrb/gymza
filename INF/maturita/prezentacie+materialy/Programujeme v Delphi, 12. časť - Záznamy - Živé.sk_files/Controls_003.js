//**************************************************
// ORIGINAL MF THUMBNAIL HANDLER
//**************************************************

//**************************************************
function BigImg1(ARI,IMI)
{
	var rndm = "thumb" + Math.floor(1000000*Math.random());
	var wa = window.open("/ShowFullThumbNailOldDigi2.aspx?ari=" + ARI + "&imi=" + IMI.replace("x","/"), rndm,'status=1, tollbar=0');
}
//**************************************************
function BigImg(ARI,IMI)
{
	var rndm = "thumb" + Math.floor(1000000*Math.random());
	var img = IMI;
	if (img.indexOf("x") == 0){
		img = img.replace("x", "/");
	}
	var wa = window.open("/ShowFullThumbNailOldDigi.aspx?ari=" + ARI + "&imi=" + ARI + img, rndm,'status=1, tollbar=0');
}
//**************************************************
function BigImgGal(IMI)
{
	var rndm = "thumb" + Math.floor(1000000*Math.random());
	var wa = window.open("/ShowFullThumbNailOldDigi.aspx?imi=" + IMI, rndm,'status=1, tollbar=0');
}


//**************************************************
// FULL SIZE IMAGE HANDLER
//**************************************************

//**************************************************
function ShowFullThumbNail(id_file, width, height, title, action)
{
	var IdArticle = ParseArticleId();
  	window.open("/ShowArticleImages.aspx?id_file=" + id_file + (IdArticle!=null ? "&article=" + IdArticle : ""),"fullImage", "resizable=yes,scrollbars=no,status=yes,width=1120,height=640");
	return false;
}
//**************************************************
function ShowArticleImage(id_file, width, height, title, action)
{
	return ShowFullThumbNail(id_file, width, height, title, action);
}
//**************************************************
function ShowCatalogThumbNail(fname, ftitle)
{
	var rnd = Math.floor(1000000*Math.random());
	window.open("/ShowFullThumbNail.aspx?file=" + fname + "&title=" + ftitle, "fullImage" + rnd, "scrollbars=no, status=yes");
	return false;
}
//**************************************************
function ShowBazarImage(title){
	var rnd = Math.floor(1000000*Math.random());
	window.open("/ShowFullThumbNail.aspx?bazar=" + title,"fullImage" + rnd, "scrollbars=no,status=yes,width=800,height=600");
	return false;
}


//**************************************************
function ParseArticleId()
{
	var Location 	= String(document.location).split("/");
	var ArticleId	= null;
	if(Location[Location.length-2].indexOf("a-")!=-1)
	{
		try
		{
			ArticleId = parseInt(Location[Location.length-2].substring(Location[Location.length-2].indexOf("a-")+2)); 
		}
		catch(e)
		{
			//empty
		}
	}
	else if(Location[Location.length-1].indexOf("article=")!=-1)
	{
		try
		{
			ArticleId = parseInt(Location[Location.length-1].substring(Location[Location.length-1].indexOf("article=")+8)); 
		}
		catch(e)
		{
			//empty
		}
	}
	return ArticleId;
};