var prefix='http://referaty.atlas.sk/';
var prefix1 = 'http://referaty.atlas.sk/hodnotenie-skoly/'; 

	var IE = document.all?true:false;
	var tempX = 0;
	var tempY = 0;

function capturemouse() {
	if (!IE) document.captureEvents(Event.MOUSEMOVE);
	document.onmousemove = getMouseXY;
}

function nextimg(id,image)
{
	document.location=prefix+'gallery.php?id='+id+'&image='+image;
}
function nextimg2(id,image)
{
	document.location=prefix+'gallery_prev.php?id='+id+'&image='+image;
}
function print_img() {
	document.getElementById('hide1').style.visibility="hidden";
	document.getElementById('voting').style.visibility="hidden";
	document.getElementById('leftbox').style.background="none";
	//dso.style.visibility='hidden';
	window.print();
	document.getElementById('hide1').style.visibility="visible";
	document.getElementById('voting').style.visibility="visible";
	document.getElementById('leftbox').style.background="#F7F7F7";
	//dso.style.visibility='visible';	
}

function getMouseXY(e) {
  if (IE) { // grab the x-y pos.s if browser is IE
    tempX = event.clientX + (document.documentElement.scrollLeft ?
   document.documentElement.scrollLeft :
   document.body.scrollLeft);
    tempY = event.clientY +  (document.documentElement.scrollTop ?
   document.documentElement.scrollTop :
   document.body.scrollTop);
  } else {  // grab the x-y pos.s if browser is NS
    tempX = e.pageX;
    tempY = e.pageY;
  }  
  if (tempX < 0){tempX = 0}
  if (tempY < 0){tempY = 0}  

  return true;
}

function doGallery(id,image)
{
	window.open(prefix+'gallery.php?id='+id+'&image='+image,'gall','width=770,height=630');
}
function doGallery2(id,image)
{
	window.open(prefix+'gallery_prev.php?id='+id+'&image='+image,'gall','width=770,height=630');
}


var lastL='';
var tim='';
var show = 1;
function HideL_ID(lid)
{
		document.getElementById(lid).style.display='none';
		lastL ='';
}
function ShowL_ID(lid,move,type)
{
		clearTimeout(tim);
			if (type==1) {
				tempX = tempX+ 20;
				tempY = tempY; 
			}
			else if (type==2) {
				tempX = tempX- 220;
				tempY = tempY- 160; 
			}
			else {
				tempX = tempX- 220;
				tempY = tempY; 
			}

			document.getElementById(lid).style.display='block';
			if (move) {
				document.getElementById(lid).style.top = tempY+'px';
				document.getElementById(lid).style.left = tempX+'px';
			}
	lastL=lid;

}

function doLay(did,move,type)
{
	
	/*alert(did);*/
	if(lastL!='' && lastL!=did) 
	{
		clearTimeout(tim);
		HideL_ID(lastL);
	}
	else if (lastL==did) clearTimeout(tim);
	if (move) move=1;
	else move = 0;
	if (lastL!=did) {
		if (lastL) HideL_ID(lastL);
		tim=setTimeout('ShowL_ID(\''+did+'\',\''+move+'\',\''+type+'\')',1000);
	}
}

function hLay(did)
{
	clearTimeout(tim);
	tim=setTimeout('HideL_ID(\''+did+'\')',0);
}
function rTim()
{
	clearTimeout(tim);
}

function replymsg(msgid)
{
	previd=document.getElementById('msgpar').value;
	if(previd=='')
	{
		window.scrollTo(0,0);
		document.getElementById('msgpar').value=msgid;
		document.getElementById('msg'+msgid).className='msgboxs';
		document.getElementById('msgsub').value='Re: '+document.getElementById('subj'+msgid).innerHTML;
	}
	else
	{
		if(msgid==previd)
		{
			document.getElementById('msgpar').value='';
			document.getElementById('msg'+msgid).className='msgbox';
			document.getElementById('msgsub').value='';
		}
		else
		{
			window.scrollTo(0,0);			
			document.getElementById('msgpar').value=msgid;
			document.getElementById('msg'+previd).className='msgbox';
			document.getElementById('msg'+msgid).className='msgboxs';
			document.getElementById('msgsub').value='Re: '+document.getElementById('subj'+msgid).innerHTML;
		}
	}
}
var src_MAX=30;

function addSrc(){
	showSrc(src_CURR, true);
	src_CURR++;
	if(src_CURR == src_MAX){
		dso = document.getElementById('src_more');
		if(dso){
			dso.style.visibility = 'hidden';
			dso.style.position = 'absolute';
		}
	}
}

function showSrc(which, visible){
	var dso = 0;
	if(document.getElementById){
		dso = document.getElementById('src_' + which);
		if(dso){
			dso.style.position='relative';
			dso.style.visibility='visible';
			/*if(!visible) dso.style.display = 'none';
			dso.innerHTML = getAttachField(which);*/
		}
	}
}				

var img_MAX=30;

function addImg(){
	showImg(img_CURR, true);
	img_CURR++;
	if(img_CURR == img_MAX){
		dso = document.getElementById('img_more');
		if(dso){
			dso.style.visibility = 'hidden';
			dso.style.position = 'absolute';
		}
	}
}

function showImg(which, visible){
	var dso = 0;
	if(document.getElementById){
		dso = document.getElementById('img_' + which);
		if(dso){
			dso.style.position='relative';
			dso.style.visibility='visible';
			/*if(!visible) dso.style.display = 'none';
			dso.innerHTML = getAttachField(which);*/
		}
	}
}				

var link_MAX=30;

function addLnk(){
	showLnk(link_CURR, true);
	link_CURR++;
	if(link_CURR == link_MAX){
		dso = document.getElementById('lnk_more');
		if(dso){
			dso.style.visibility = 'hidden';
			dso.style.position = 'absolute';
		}
	}
}

function showLnk(which, visible){
	var dso = 0;
	if(document.getElementById){
		dso = document.getElementById('lnk_' + which);
		if(dso){
			dso.style.position='relative';
			dso.style.visibility='visible';
			/*if(!visible) dso.style.display = 'none';
			dso.innerHTML = getAttachField(which);*/
		}
	}
}				

function DisWindow() {
	window.open('','disclaimer','width=455,height=390');
}
function sel_lang(id,element1) {
	element = document.getElementById('lang'+id);
	if (element1.checked) {
		element.checked = true;
	}
	else {
		document.getElementById('lang1').checked= true;
	}
}

function change_action(form) {
	action = form.idcat.value;
	if (action) {
		form.action = "./spravy/"+action+"/";
	}
	else {
		form.action = "./spravy/";
	}
}

function detailValutationView(UIDuser,detailId) {
	window.open(prefix1+'user_valutation.php?idUser='+UIDuser+'&detailId='+detailId,'disclaimer','width=470,height=270,location=0,menubar=0,toolbar=0,status=0');
}
function pravidlaOpen() {
	window.open(prefix1+'pravidla.html','disclaimer','width=470,height=580');
} 


function checkMaxLenghtTextarea(maxChar,CountChar){
	if(CountChar< maxChar) {
		return true;
	}
	else return false;
}

function showSchool(){
	if($('m').value == 0) {
		$('regionMessage').style.display = 'block';
		timer = setTimeout("dontShowTimmerStop('regionMessage')",5000);
		return false;
		}
	
	else {
		return true;
	}
}