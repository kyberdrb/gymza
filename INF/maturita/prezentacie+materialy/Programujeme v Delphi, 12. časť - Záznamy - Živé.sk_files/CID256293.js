var sas_manager = {formats: {
f13082: {scriptURL: function() {return '<scr'+'ipt language="Javascr'+'ipt" src="http://ww651.smartadserver.com/diff/651/2388112/show0.asp?2388112;236476;7230292864390939667;283519247;S;target=CID%3d256293%3b"></scr'+'ipt>';}},
f13097: {scriptURL: function() {return '<scr'+'ipt language="Javascr'+'ipt" src="http://ww651.smartadserver.com/diff/651/2403381/show2.asp?2403381;236476;7230292864390939667;283519247;S;target=CID%3d256293%3b"></scr'+'ipt>';}},
f14739: {scriptURL: function() {return '<scr'+'ipt language="Javascr'+'ipt" src="http://ww651.smartadserver.com/diff/651/1807355/show5.asp?1807355;236476;7230292864390939667;283519247;S;target=CID%3d256293%3b"></scr'+'ipt>';}}},
exists: function(formatId) {return 'object' == typeof (this.formats['f' + formatId]);},
render: function(formatId) {if (this.exists(formatId)) {document.write(this.formats['f' + formatId].scriptURL());}}}
