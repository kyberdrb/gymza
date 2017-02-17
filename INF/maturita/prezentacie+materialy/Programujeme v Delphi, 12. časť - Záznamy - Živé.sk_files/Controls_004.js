//****************************************************************
//* COMMON LIBRARY
//****************************************************************


//********************************************
jQuery.HandleEnter = function(element,callback)
{
	jQuery(element).bind($.browser.mozilla ? 'keypress' : 'keydown', function(event){
		var code=event.charCode || event.keyCode;
		if(code && code == 13) {
  			callback(event.target);
  			event.preventDefault();
		};
	});
};

jQuery.HandleClick = function(element,callback)
{
	jQuery(element).bind('click', function(event){
  		callback(event.target);
  		event.preventDefault();
	});

};

//****************************************************************
//* SEARCH WEB
//****************************************************************


//********************************************
$(document).ready(function (){
				if($("#search-web").length==0)
				{
					return;
				}
				$("#search-web > span > input").bind('focus', function(){$(this).val('')});
				$.HandleEnter($("#search-web > span > input"), function(){
					document.location = "/vysledky-hledania/default.aspx?searchtext=" + encodeURI($("#search-web > span > input").val());
				});
				$.HandleClick($("#search-web > span > a"), function(){
					document.location = "/vysledky-hledania/default.aspx?searchtext=" + encodeURI($("#search-web > span > input").val());
				});
});



//****************************************************************
//* SEARCH VIDEO
//****************************************************************


//********************************************
$(document).ready(function (){
				if($("#video-browser-search").length==0)
				{
					return;
				}
				$("#video-browser-search > span > input").bind('focus', function(){$(this).val('')});
				$.HandleEnter($("#video-browser-search > span > input"), function(){
					eval(String($("#video-browser-search > .button > a").attr("href")).replace("javascript:",""));
				});
});



//****************************************************************
//* LOGON WEB
//****************************************************************


//********************************************
$(document).ready(function (){
				if($("#logon-web").length==0)
				{
					return;
				}
				$("#logon-web > span > input:lt(2)").bind('focus', function(){$(this).val('')});
				$.HandleEnter($("#logon-web > span > input"), function(){
					eval(String($("#logon-web > div > .button > a").attr("href")).replace("javascript:",""));
				});
				$.HandleEnter($("#logon-web > div > small > input"), function(){
					eval(String($("#logon-web > div > .button > a").attr("href")).replace("javascript:",""));
				});
});




//****************************************************************
//* PAGE PROMO ARTICLE ROTATOR
//****************************************************************


//********************************************
function RunPromoAnimation(ToDisplay, ForceDisplay)
{
	if(ToDisplay>=$("#page-description > .page-promo").length)
	{
		ToDisplay = 0;
	}
	var CurrentIndex = $("#page-description > .page-promo").index($("#page-description > .page-promo:visible"));

	if(ForceDisplay)
	{
		$("#page-description > .page-promo:eq(" + CurrentIndex + ")").css('zIndex', '2').css('opacity', '0').hide();
		$("#page-description > .page-promo:eq(" + ToDisplay + ")").css('zIndex', '1').css('opacity', '1').show();
	}
	else
	{
		$("#page-description > .page-promo:eq(" + CurrentIndex + ")").css('zIndex', '2');
		$("#page-description > .page-promo:eq(" + ToDisplay + ")").css('zIndex', '1').css('opacity', '1').show();
		$("#page-description > .page-promo:eq(" + CurrentIndex + ")").animate({opacity: 0}, "normal", "linear", function(){$("#page-description > .page-promo:eq(" + CurrentIndex + ")").hide();if(jQuery.browser.msie){$("#page-description > .page-promo:eq(" + CurrentIndex + ")").get(0).style.removeAttribute('filter');}});
	}
	if(jQuery.browser.msie)
	{
		$("#page-description > .page-promo:eq(" + CurrentIndex + ")").get(0).style.removeAttribute('filter');
		$("#page-description > .page-promo:eq(" + ToDisplay + ")").get(0).style.removeAttribute('filter');
	}
	
	//$("#page-description > .page-promo:eq(" + ToDisplay + ")").animate({top: 14}, 7000, "linear", function(){RunPromoAnimation(ToDisplay+1)});
	$("#page-description > .page-promo-navigator > .page-promo-navigator-button:eq(" + CurrentIndex + ")").removeClass('page-promo-navigator-button-active');
	$("#page-description > .page-promo-navigator > .page-promo-navigator-button:eq(" + ToDisplay + ")").addClass('page-promo-navigator-button-active');
}
//********************************************
function SetPromoAnimation(Step, ExactIndex)
{
	var CurrentIndex = $("#page-description > .page-promo").index($("#page-description > .page-promo:visible"));

	$("#page-description > .page-promo:animated").stop(true);

	if(ExactIndex)
	{
		$("#page-description > .page-promo-navigator").css('zIndex', '1');
		$("#page-description > .page-promo-navigator > .page-promo-navigator-links").hide();
		RunPromoAnimation(Step, true);
	}
	else if(Step+CurrentIndex<0)
	{
		RunPromoAnimation($("#page-description > .page-promo").length-1, true);	
	}
	else if(Step+CurrentIndex==$("#page-description > .page-promo").length)
	{
		RunPromoAnimation(0, true);	
	}
	else
	{
		RunPromoAnimation(Step+CurrentIndex, true);
	}
}
//********************************************
$(document).ready(function (){
				if($("#page-description").length==0)
				{
					return;
				}
				$("#page-description > .page-promo-navigator > .page-promo-navigator-links").append("<div class=\"header\"></div>");
				$("#page-description > .page-promo > .page-promo-text > h1").each(function(){
					$("#page-description > .page-promo-navigator > .page-promo-navigator-links").append("<div class=\"link\">" + $(this).html() + "</div>");
				});
				$("#page-description > .page-promo-navigator > .page-promo-navigator-links").append("<div class=\"footer\"><a href=\"/neprehliadnite/sc-64/default.aspx\">Ďalšie najlepšie články</a></div>");

				$("#page-description > .page-promo-navigator > .page-promo-navigator-button").click(function()
				{
					$("#page-description > .page-promo-navigator > .page-promo-navigator-links").hide();
					SetPromoAnimation($("#page-description > .page-promo-navigator > .page-promo-navigator-button").index(this), true);

				}).mouseover(function(){
					SetPromoAnimation($("#page-description > .page-promo-navigator > .page-promo-navigator-button").index(this), true);
					$("#page-description > .page-promo-navigator").css('zIndex', '10');
					$("#page-description > .page-promo-navigator > .page-promo-navigator-links").show();
				});
				$("#page-description > .page-promo-navigator > .page-promo-navigator-arrow-prev").click(function()
				{
					SetPromoAnimation(-1, false);
				});
				$("#page-description > .page-promo-navigator > .page-promo-navigator-arrow-next").click(function()
				{
					SetPromoAnimation(1, false);
				});
				$("#page-description > .page-promo-navigator").mouseleave(function(){
					$("#page-description > .page-promo-navigator").css('zIndex', '1');
					$("#page-description > .page-promo-navigator > .page-promo-navigator-links").hide();
				});
				//$("#page-description > .page-promo:eq(0)").animate({top: 14}, 7000, "linear", function(){RunPromoAnimation(1)});
		   });



//****************************************************************
//* CATALOG FAST SEARCH
//****************************************************************


//********************************************
function SetPhoneModel(Manufacturer, Url)
{
	$.ajax(
	{
	  	url: 		Url + "?catalog=1&master=" + Manufacturer,
		cache: 		false,
		success: 	function(html)
				{
					$('#CatalogFastSearchDetail').empty();
  					eval(html);
					ShowDetail();
 				}
	});

}
//********************************************
function AddToDetail(Id, Name)
{
	$('#CatalogFastSearchDetail').append("<option value=\"" + Id +"\">" + Name + "</option>")
}
//********************************************
function ShowDetail()
{
	var CurrentModel = $('#CatalogFastSearchDetail').val();
	if(CurrentModel!="0")
	{
		$.ajax(
		{
		  	url: 		"/GetCatalogLink.aspx?item=" + CurrentModel,
			cache: 		false,
			success: 	function(html)
					{
						document.location = html;
					}
		});
	}else{
		$('#CatalogFastSearchDetail').attr("disabled", $('#CatalogFastSearchDetail > option').length<2)
	}
}
//********************************************
function AddToBasket(CurrentItem)
{
	if(!CurrentItem)
	{
		var CurrentItem	= $("#CatalogFastSearchDetail > option:selected").val() || 0;
	}
	if(CurrentItem!="0")
	{
		$('.catalog-basket-item').val(CurrentItem);
		eval(String($("#catalog-search-button > a").attr("href")).replace("javascript:",""));
	}
}
//********************************************
function HandleControlListClick(Control)
{
	if(!Control.get(0).checked)
	{
		return;
	}
	var ControlId 	= Control.attr("id");

	var Count 	= parseInt(ControlId.substring(ControlId.lastIndexOf("_")+1,ControlId.length));
	if(Count>0)
	{
		$("#" + ControlId.substring(0, ControlId.lastIndexOf("_"))+"_0").get(0).checked=false;
	}
	if(Count==0)
	{
		$("form :checkbox").each(function (i){
			if(this.id!=ControlId && this.id.indexOf(ControlId.substring(0, ControlId.lastIndexOf("_")))!=-1)
			{
				this.checked = false;
			}
		});
	}			
}
//********************************************
$(document).ready(function (){
				if($("#CatalogFastSearchMaster").length==0)
				{
					return;
				}

				var CurrentManufacturer	= $('#CatalogFastSearchMaster > option[text=' + $(".page-section-text > h1").text() + ']').val() || 0;

				if(CurrentManufacturer=="0")
				{
					CurrentManufacturer = $('#CatalogFastSearchMaster').val();
				}
				else
				{
					$('#CatalogFastSearchMaster > option[text=' + $(".page-section-text > h1").text() + ']').attr("selected", true);
				}
		
				if(CurrentManufacturer!="0")
				{
					SetPhoneModel(CurrentManufacturer, CatalogUrl);
				}
				else
				{
					$('#CatalogFastSearchDetail').attr("disabled", true);
				}

				$('#CatalogFastSearchMaster').change(function(){
					SetPhoneModel($(this).val(), CatalogUrl);
				});

				$('#CatalogFastSearchDetail').change(function(){
					if($("#FastSearchMaster").length==0)
					{
						ShowDetail();
					}
				});
		   });
//********************************************
$(document).ready(function (){
				if($("#FastSearchMaster").length==0)
				{
					return;
				}

				var CurrentManufacturer = $('#FastSearchMaster').val();
		
				if(CurrentManufacturer!="0")
				{
					SetPhoneModel(CurrentManufacturer, CatalogUrl);
				}
				else
				{
					$('#CatalogFastSearchDetail').attr("disabled", true);
				}

				$('#FastSearchMaster').change(function(){
					SetPhoneModel($(this).val(), CatalogUrl);
				});

				$('#catalog-show').click(function(){
					ShowDetail();
				});

				$('#catalog-compare').click(function(){
					AddToBasket();
				});

				$("#search-catalog-toggle").click(function(){
					if($("#search-catalog-toggle-data:visible").length>0)
					{
						$("#search-catalog-toggle-data").hide();
					}
					else
					{
						$("#search-catalog-toggle-data").show();
					}
				});
		   });




//****************************************************************
//* CATALOG COMPARE
//****************************************************************


//********************************************
$(document).ready(function (){
				if($(".catalog-compare-mover").length==0)
				{
					return;
				}
				if($(".catalog-results tr:eq(0)").children().length<3)
				{
					$(".catalog-compare-mover").css("visibility", "hidden");
				}
				else
				{
					$(".catalog-compare-mover > img").click(function(){
						var LinkIndex 		= $(".catalog-compare-mover > img").index($(this));
						var ColumnCount		= $(".catalog-results tr:eq(0)").children().length;
						var MaxVisibleColumns	= 5;
						var VisibleColumns	= new Array();
						    VisibleColumns.push(1);
					
						switch(LinkIndex)
						{
							case 0: for(var i=1; i<MaxVisibleColumns; i++)
								{
									if(ColumnCount>i)
									{
										VisibleColumns.push(i+1);
									}
								}
								break;
							case 1: var FirstVisibleColumn = $(".catalog-results tr:eq(0)").children().index($(".catalog-results tr:eq(0)").children().filter(":visible").get(1));
								if(FirstVisibleColumn <=1)
								{
									return;
								} 
								for(var i=FirstVisibleColumn-1; i<FirstVisibleColumn+MaxVisibleColumns-2; i++)
								{
									if(ColumnCount>i)
									{
										VisibleColumns.push(i+1);
									}
								}
								break;
							case 2: var FirstVisibleColumn = $(".catalog-results tr:eq(0)").children().index($(".catalog-results tr:eq(0)").children().filter(":visible").get(1));
								if(ColumnCount - FirstVisibleColumn - MaxVisibleColumns < 0)
								{
									return;
								} 
								for(var i=FirstVisibleColumn+1; i<FirstVisibleColumn+MaxVisibleColumns; i++)
								{
									if(ColumnCount>i)
									{
										VisibleColumns.push(i+1);
									}
								}
								break;
							case 3: for(var i=MaxVisibleColumns; i>1; i--)
								{
									if(ColumnCount-i>=0)
									{
										VisibleColumns.push(ColumnCount-i+2);
									}
								}
								break;
						}
						$(".catalog-results tr th").hide();
						$(".catalog-results tr td").hide();
	
						for(var i=0; i<VisibleColumns.length; i++)
						{
							$(".catalog-results tr th:nth-child(" + VisibleColumns[i] + ")").show();
							$(".catalog-results tr td:nth-child(" + VisibleColumns[i] + ")").show();
						}
					});
				};
		   });




//****************************************************************
//* CATALOG DETAIL
//****************************************************************
$(document).ready(function (){
				if($(".row-descriptor").length==0)
				{
					return;
				}
				$(".row-descriptor").mouseover(function(){
					$(".row-descriptor-field-info").hide();
					if($("#" + this.id + "-field-info").length>0)
					{
						$("#" + this.id + "-field-info").show();
					}
					else
					{
						$.ajax(
						{
						  	url: 		"/export.aspx?fieldinfo=1&id=" + String(this.id).substring(String(this.id).lastIndexOf("-")+1),
							cache: 		false,
							target:		$(this),
							success: 	function(html, status)
							{
								this.target.parent().prepend("<div class=\"row-descriptor-field-info\" id=\"" + (this.target.attr("id") + "-field-info") + "\">" + (html.substring(html.indexOf(">")+1, html.lastIndexOf("<")))  + "</div>");
								$("#" + this.target.attr("id") + "-field-info").css("top", this.target.position().top);
							}
						});
					}
				}).mouseout(function(){
					$(".row-descriptor-field-info").hide();
				});
});

//********************************************

//****************************************************************
//* FORUM SEARCH
//****************************************************************

//********************************************
function showppp()
{
	var wa = window.open("/adolozka.htm", "adol", "width=300, height=360, status=1, scrollbars=0, tollbar=0, resizable=0");
}
//********************************************
$(document).ready(function (){
			$(".arlist-data-forum-collapse-header").click(function(){
				var CurrentHeader = $(this);
				var CurrentView   = $(".arlist-data-forum-collapse-header").index(CurrentHeader);
				if(CurrentHeader.hasClass("arlist-data-forum-collapse-header-expanded"))
				{
					CurrentHeader.removeClass("arlist-data-forum-collapse-header-expanded");
					$(".arlist-data-forum-collapse-data:eq(" + CurrentView + ")").hide();
				}
				else
				{
					CurrentHeader.addClass("arlist-data-forum-collapse-header-expanded");
					$(".arlist-data-forum-collapse-data:eq(" + CurrentView + ")").show();
				}
			});
		});



//****************************************************************
//* BAZAR
//****************************************************************

var BazarRSSParams = new Array("", "", "", "rss=bazar");


//********************************************
function CharCounter(GetFrom, WriteTo, MaxLength)
{  
	var CurrText = $(GetFrom).val();
	if(CurrText.length > MaxLength*1)
	{
		$(GetFrom).val(CurrText.substring(0, MaxLength*1)); 
	}
	$(WriteTo).html(MaxLength-$(GetFrom).val().length);
}
//********************************************
function SetBazarRSSParam(oSelect, pName, pos){
	if(oSelect.type == "select-one"){
		if(oSelect.selectedIndex<1){
			BazarRSSParams[pos] = "";
		}else{
			BazarRSSParams[pos] = pName + "=" + oSelect.value;
		}
	}else{
		if(oSelect.type == "checkbox"){
			BazarRSSParams[pos] = oSelect.checked ? pName + "=1" : "";
		}
	}
	return true
}
//********************************************
function GetBazarRSS(){
	var bUrl = "";
	for(var i=0; i<BazarRSSParams.length; i++){
		if(BazarRSSParams[i]!=""){
			bUrl += ((bUrl=="") ? "" : "&") + BazarRSSParams[i];
		}
	}
	document.forms[0].BazarRssUrl.value = "http://www.zive.sk/rss/sc-47/default.aspx?" + bUrl;
}
//********************************************
function SearchInBazar(sender, adParam, activeBazarFilter)
{
	var url = window.location.pathname;
	var qs = "";
	var adValue = "";
	if(!sender.type){
		qsParams[sender] = adParam;
	}else{
		if (sender.type == "select-one"){
		  if (sender.selectedIndex == -1){
		    sender.selectedIndex = 0;
		  }
		  qsParams[adParam] = sender.options[sender.selectedIndex].value;
		}else if (sender.type == "checkbox"){
		  if (sender.checked){
			 qsParams[adParam] = "1";
		  }else{
			 qsParams[adParam] = "";
		  }
		}
	}

	if (document.forms[0].ddlPageSize != null){
		qsParams["PageSize"] = document.forms[0].ddlPageSize.options[document.forms[0].ddlPageSize.selectedIndex].value;
	}
	
	for(var property in qsParams) {
		if ((qsParams[property] == null) || (property=="section") || (qsParams[property] == "" && (sender.type == "select-one"))){
			continue;
		}
		if (qs.length == 0){
		  qs += (property + "=" + qsParams[property]);
		}else{
		  qs += ("&" + property + "=" + qsParams[property]);
		}
	}
	if (qs.length > 0){
		url += ("?" + qs);
	}
	if (activeBazarFilter){
		window.location = url.replace("&newsearch=1", "");
	}
}
//********************************************
$(document).ready(function (){
				if($("#reply-bazar").length==0)
				{
					return;
				}
				$("#reply-bazar").click(function(){
					if($("#reply-bazar-data:visible").length>0)
					{
						$("#reply-bazar-data").hide();
					}
					else
					{
						$("#reply-bazar-data").show();
					}
				});
		});
//********************************************
$(document).ready(function (){
				if($("#bazar-fast-search").length==0)
				{
					return;
				}
				$('#bazar-fast-search > .bazar-fast-search-data > span > select').change(function(){
					SearchInBazar($(this).attr("name"), $(this).val(), true);
				});
		});
//********************************************
$(document).ready(function (){
				if($(".bazar-search-item").length==0)
				{
					return;
				}
				$(".bazar-search-item").click(function(){
					if($("#bazar-search-item-data:visible").length>0)
					{
						$("#bazar-search-item-data").hide();
					}
					else
					{
						$("#bazar-search-item-data").show();
					}
				});
		});
//********************************************
$(document).ready(function (){
				if($(".char-counter > input").length==0)
				{
					return;
				}
				$(".char-counter > input").keyup(function(event){
					var element = event.target;
					CharCounter(element, "#" + $(element).attr("id") + " ~  span.char-counter-text", $(element).attr("maxlength"));
				});
				$(".char-counter > textarea").keyup(function(event){
					var element = event.target;
					CharCounter(element, "#" + $(element).attr("id") + " ~  span.char-counter-text", 1000);
				});
				$(".char-counter > span.char-counter-text").addClass("bold");
		});




//****************************************************************
//* PORADNA
//****************************************************************

//********************************************
$(document).ready(function (){
				if($(".poradna-search-item").length==0)
				{
					return;
				}
				$(".poradna-search-item").click(function(){
					$("#poradna-search-item-data").toggle();
				});
		   });

//****************************************************************
//* PANE CHANGER
//****************************************************************

//********************************************
function SetPanelContent(which)
{
	if(PaneTimer!=null)
	{
		clearTimeout(PaneTimer);
		PaneTimer = null;
	}
	if(typeof(which)=="undefined")
	{
		var which = parseInt(String($("#pane-changer > .box-tabs").attr("className")).replace("box-tabs-","").replace("box-tabs","").replace(" ","")) + 1;
	}
	if(which>2)
	{
		which = 0;
	}

	$("#pane-changer > .box-tabs").removeClass("box-tabs-0").removeClass("box-tabs-1").removeClass("box-tabs-2");

	$("#pane-changer > .box-data > .pane-changer-content").hide();
	$("#pane-changer > .box-tabs").addClass("box-tabs-" + which);
	$("#pane-changer > .box-data > .pane-changer-content:eq(" + which + ")").show();
	PaneTimer = setTimeout("SetPanelContent()", 15000);
}

var PaneTimer = null;

$(document).ready(function (){
				if($("#pane-changer").length==0)
				{
					return;
				}
				PaneTimer = setTimeout("SetPanelContent()", 15000);
		   });



function InsSm(which, where){
	var oObj = $("#" + (InsSm.arguments.length==1 ? "Editor" : where));
	if(oObj.length==1){
		oObj.get(0).value += which;
	}else{
		if(typeof(mailerEditor)!="undefined"){
			mailerEditor.value += which;
		}
	}
}