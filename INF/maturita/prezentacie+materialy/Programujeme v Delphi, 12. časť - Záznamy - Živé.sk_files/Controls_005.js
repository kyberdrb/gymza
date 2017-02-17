var ArticleFontSize =
(
	{
		Size:		1,

		CookieName: 	"ZiveSkFontSize=",

		CookieExpire:	120, //days

		Spot:		".font-resizer-area",

		LineHeights:	["1.5em", "1.5em", "1.5em"],

		SetSize:
			
			function(FontSize)
			{

				if(!FontSize)
				{
					var FontSize = this.GetSize();
					if(FontSize==null)
					{
						FontSize = this.Size;
					}
					else
					{
						this.Size = FontSize;
					}
				}
				else
				{
					$(".font-resizer > img:eq(" + (this.Size-1) + ")").attr("src", "/Client.Images/Icons/icon-size-" + this.Size + ".gif");
					this.Size = FontSize;
				}
				var date = new Date();
				date.setTime(date.getTime()+(this.CookieExpire*24*60*60*1000));
				var expires = "; expires=" + date.toGMTString();
				document.cookie = this.CookieName + FontSize + expires + "; path=/";

				$(this.Spot).css("font-size", ((FontSize-1)*30 + 100) + "%").css("line-height", this.LineHeights[FontSize-1]);
				$(".font-resizer > img:eq(" + (FontSize-1) + ")").attr("src", "/Client.Images/Icons/icon-size-" + FontSize + "-active.gif");
			},

		GetSize:
			function()
			{
				var ca = document.cookie.split(';');
				for(var i=0;i < ca.length;i++)
				{
					var c = ca[i];
					while (c.charAt(0)==' ') c = c.substring(1,c.length);
					if (c.indexOf(this.CookieName) == 0) return c.substring(this.CookieName.length,c.length);
				}
				return null;
			},

		ClearSize:
			function()
			{
				document.cookie = this.CookieName + "-1" + "; path=/";
			}


	}
);