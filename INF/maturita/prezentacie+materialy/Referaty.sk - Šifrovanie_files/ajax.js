   var http_request = false;
   var whatwillcome = 1;
   var polozky = null;
   var checkError = false;
   var lastValue;
   var endScript = false;
   var timer;
   var arrayCity;
   var lastCitySelect = "error";
   var showCitySearch ;
   var test;
   var jaEnter = true;
   var addCity = false;
   var fx = [];
   
   function notshow(idDiv){
   		var objectDiv = document.getElementById(idDiv);
   		objectDiv.style.display = "none";
   }
   
   function show(idDiv){
   		var objectDiv = document.getElementById(idDiv);
   		objectDiv.style.display = "block";
   }
   
	function showSpan(idSpan){
		if(idSpan == 'messageErrorValutation'){
			document.getElementById('messageErrorValutation1').style.display = 'inline';
		}
		var objectDiv = document.getElementById(idSpan);
   		objectDiv.style.display = "inline";
}
   
   function makeRequest(url, parameters) {
      http_request = false;
      if (window.XMLHttpRequest) { // Mozilla, Safari,...
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
            http_request.overrideMimeType('text/xml');
         }
      } else if (window.ActiveXObject) { // IE
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      http_request.onreadystatechange = alertContents;
      http_request.open('GET', url + parameters, true);
      http_request.send(null);
   }
	function alertContents() {

       if (http_request.readyState == 4) {
           if (http_request.status == 200) {
               polozky  = http_request.responseText;
           } else {
               alert('There was a problem with the request.');
           }
       }

   } 
	function SwitchNews(param,param2) {
   //   makeRequest('http://makac/wanda/xml.php', '?param='+param+'&param2='+param2);
      makeRequest(prefix+'SwitchNews.php', '?param='+param+'&param2='+param2);
   }

   
function onSubmitAddSchool(f,event){
	
	//if(jaEnter == '') jaEnter = true;
	if(jaEnter == false) {
		jaEnter = true;
		if(addCity == true) $('city').focus();
		return false;
	}
	
	/*
	if((f.nameSchool.value == '' || f.street.value == '' || f.streetNumber.value == '' || f.psc.value == '' || f.notice.value == '')) {
		
	
		if(f.nameSchool.value == ''){
			alert('Chýba názov školy');
			$('nameSchool').focus();
		}
		else if(f.street.value == ''){
			alert('Chýba ulica');
			$('street').focus();
		}
		
		else if(f.streetNumber.value == ''){
			alert('Chýba číslo ulice');
			$('streetNumber').focus();
		}
		else if(f.city.value == ''){
			alert('Chýba Mesto');
			$('city').focus();
		}
		else if(f.psc.value == ''){
			alert('Chýba  PSČ');
			$('psc').focus();
		}
		else if(f.notice.value == ''){
			alert('Chýba  Charakteristika');
			$('notice').focus();
		}
		
		return false;
	}*/
 	
 	
 	return true;
 	
	
}

 
function stoper() {
	
	clearTimeout(timer);
}
   
	function test(event){
		cursor(event);
		with(event)
    	if(event.keyCode == 40 || event.keyCode == 38 || event.keyCode == 13 || event.keyCode == 27 || (event.keyCode <= 9 && event.keyCode >= 31)) return false; 
		stoper();
		var searchCity =  document.getElementById('city').value;
		if(searchCity.length >= 4){
			var poststr='page=0&phrase='+searchCity+'&filt=2';
			document.ajax("http://referaty.atlas.sk/mapapi/search/index.php",poststr,'afterajax');
		}
		return true;
	}

function delay(prmSec)
{
 prmSec *= 1000;
 
 var eDate = null;
 var eMsec = 0;
 
 var sDate = new Date();
 var sMsec = sDate.getTime();
 
 do {
 eDate = new Date();
 eMsec = eDate.getTime();
 
 } while ((eMsec-sMsec)<prmSec);
} 



function foo()
{
	Ajax = Ajax.extend({abort: function (){this.transport.abort();}});
	Object.extend(document,MD);
}


function removeElement( el ) { 
 	 var parent = document.getElementById( el ).parentNode; 
 	 parent.removeChild( document.getElementById( el )); 
}

function afterajax(obj)
{

	var points=obj.points;
	var tableNotice = document.getElementById('noticeSelect');
	//tableNotice.innerText = '';
	
	if(arrayCity){
		for (var i = 0; i < arrayCity.length; i++){
			if(document.getElementById('city'+i))
			removeElement('city'+i);
		}
	}
	

	tableNotice.style.display = "none";
	showCitySearch = false;
	stoper();
	if(obj.cities > 0){
			
			tableNotice.style.textAlign = "center";
			tableNotice.style.display = "block";
			showCitySearch = true;
			stoper();
			lastCitySelect = "error";
			tableNotice.style.width = "215px";
			arrayCity = new Array();
			var x = 0;
		
		
		points.forEach(function(item){
    	if(!document.getElementById(item.name)){
    		var d=document.createElement('div');
			//var idDiv = 'city'+x;
			arrayCity[x] = item.name;
			//d.id = idDiv;
			d.innerHTML= '<div class="outDiv" id="city'+x+'" onmouseover="this.className=\'owerDiv\';stoper();" onClick="showAndAdd(\'noticeSelect\',\''+item.name+'\',\'city\')" onmouseout="this.className=\'outDiv\';ofLoadMouse();">'+item.name+'</div>';
			tableNotice.appendChild(d);
			
		}
		
		x++;
	});
	}
	
	if(obj.cities == 0) {
		document.getElementById('citycontrol').value = '';
		
	}
	timer = setTimeout("clearCity()",5000);
    
}
	
function cursor(){
	
	$('city').onkeydown=function(event){ 
		event=new Event(event); 
		
		if(showCitySearch && (event.key == "down" || event.key == "up" || event.key == "enter")){
			showCitySearch = true;
			if(lastCitySelect == "error" && event.key == "down" ){
				lastCitySelect = 0;
			}
			
			else if(lastCitySelect == "error" && event.key == "up"){
				lastCitySelect = (arrayCity.length-1) ;
			}
			
			else if(lastCitySelect != "error" && event.key == "up"){
				if(lastCitySelect == 0) lastCitySelect = (arrayCity.length -1);
				else lastCitySelect = lastCitySelect -1;
			
			}
			
			else if(lastCitySelect != "error" && event.key == "down"){
				if((lastCitySelect + 1) == arrayCity.length) lastCitySelect =0;
				else lastCitySelect ++;
			}
			
			if(lastCitySelect != "error" && event.key == "enter" ){
				jaEnter = false;
				document.getElementById('city').value = arrayCity[lastCitySelect];
				document.getElementById('noticeSelect').style.display = "none";
				addCity = true;
				showCitySearch = false;
				stoper();
			}
			
			for (var i = 0; i < arrayCity.length; i++){
				
				if(i == lastCitySelect){
					document.getElementById('city'+i).className = "owerDiv";
					
				}
				else document.getElementById('city'+i).className = "outDiv";
			}
		
		stoper();
		timer = setTimeout("clearCity()",5000);
		}
	};
	
	return true;
	
}

function clearCity(){
	document.getElementById('noticeSelect').style.display = "none";
	stoper();
	showCitySearch = false;
}

function ofLoadMouse(){
	timer = setTimeout("clearCity()",500);
}

function showAndAdd(showHiddenId,valueAdd,valueId){
	var objectVisibility = document.getElementById(showHiddenId);
	objectVisibility.style.display = "none";
	showCitySearch = false;
	stoper();
	var objectIDValue = document.getElementById(valueId);
	objectIDValue.value = valueAdd;

}

var MD=
{
	ajax:function(u,p,f,onm)
	{
		var url=u;
		var param=p;
		if(this.htr) this.htr.abort();
		//$('loader').style.display='block';
		this.htr=new Ajax(url,
		{
			method:'post',
			postBody:param,
			onComplete:function(res)
			{
				
				//$('loader').style.display='none';
				document.ajaxexec(f,res,onm);
				//document.htr=null;
			}
		}).request();
	},
	ajaxexec:function(fun,param,onm)
	{
		eval(fun+'('+param+');');
	}
}

function savePointAll(keySave,x,y,detailId,SchoolName){
	var poststr='keySave='+keySave+'&x='+x+'&y='+y+'&detailId='+detailId+'&SchoolName='+SchoolName;
	document.ajax("http://referaty.atlas.sk/skoly/savePoint.php",poststr,'SavePoint');
}

function SavePoint(obj){
	
	if(obj)
	{
		var message = obj.message;
		message.forEach(function(item){
			document.getElementById('messageMap').innerHTML = item.text;
			document.getElementById('messageMap').style.display = 'block';
			timer = setTimeout("dontShowTimmerStop('messageMap')",5000);
			if(item.x){
				POINTS=[{"name":item.SchoolName,"x":item.x,"y":item.y,"nmb":"S"}];
			}
		});
	}
	document.getElementById('savePoint').style.display = 'none';
	document.getElementById('changeBase').style.display = 'inline';
}

function dontShowTimmerStop(id){
	$(id).style.display = 'none';
	stoper();
}
function showMessageChangePoint(){
	$('messageMap').innerHTML = 'Presuňte bod a kliknite na tlačidlo uložiť.';
	document.getElementById('messageMap').style.display = 'block';
	timer = setTimeout("dontShowTimmerStop('messageMap')",5000);
	
}
function dontShow(id){
	document.getElementById(id).style.display = 'none';
}

window.onload=foo;
