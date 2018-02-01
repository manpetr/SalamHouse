<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=device-width" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="mobile-web-app-capable" content="yes" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="Teco a.s." />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript">
(function(document,navigator,standalone) {
if ((standalone in navigator) &amp;&amp; navigator[standalone]) {
var curnode, location=document.location, stop=/^(a|html)$/i;
document.addEventListener('click', function(e) {
curnode=e.target;
while (!(stop).test(curnode.nodeName)) {
curnode=curnode.parentNode;
}
if('href' in curnode &amp;&amp; ( curnode.href.indexOf('http') || ~curnode.href.indexOf(location.host) ) ) {
e.preventDefault();
location.href = curnode.href;
}
},false);
}
})(document,window.navigator,'standalone');
</script>
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Index</title>
<script src="PAGE1.JS?U=1517499844" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1517499844 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="refclr.js" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1517499844 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border: 0px;">
<div style="background-color:#FFFFFF;position: relative; width: 280px; height: 405px;">
<form action="javascript:PostGlobal();">
<input type="submit" style="position: absolute; top: 280px; left: 75px; z-index: 4; height: 50px; width: 125px; background-color: #F0F0F0;" value="Pracovna" />
<input type="submit" style="position: absolute; top: 175px; left: 76px; z-index: 10; height: 50px; width: 125px; background-color: #F0F0F0;" value="Obyvak" />
</form>
<div style="position: absolute; top: 20px; left: 60px; z-index: 1;">Zaluzie</div>
<form style="position: absolute; top: 280px; left: 24px; z-index: 2;">
<xsl:if test="INPUT[1]/@VALUE = 0">
<input id="INPUT1h" type="hidden" name="{INPUT[1]/@NAME}" value="1" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/1DOWNA_1.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<input id="INPUT1h" type="hidden" name="{INPUT[1]/@NAME}" value="0" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/1DOWNA_1.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 279px; left: 205px; z-index: 3;">
<xsl:if test="INPUT[2]/@VALUE = 0">
<input id="INPUT2h" type="hidden" name="{INPUT[2]/@NAME}" value="1" />
<div id="INPUT2" class="imgsub" onclick="PostXML2()" style="background-image: url(IMAGES/1UPARROW.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<input id="INPUT2h" type="hidden" name="{INPUT[2]/@NAME}" value="0" />
<div id="INPUT2" class="imgsub" onclick="PostXML2()" style="background-image: url(IMAGES/1UPARROW.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 283px; left: 80px; z-index: 5;">
<xsl:if test="INPUT[3]/@VALUE = 0">
<input id="INPUT3h" type="hidden" name="{INPUT[3]/@NAME}" value="1" />
<div id="INPUT3" class="imgsub" onclick="PostXML3()" style="background-image: url(IMAGES/LED_OR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input id="INPUT3h" type="hidden" name="{INPUT[3]/@NAME}" value="0" />
<div id="INPUT3" class="imgsub" onclick="PostXML3()" style="background-image: url(IMAGES/LED_OR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 298px; left: 80px; z-index: 6;">
<xsl:if test="INPUT[4]/@VALUE = 0">
<input id="INPUT4h" type="hidden" name="{INPUT[4]/@NAME}" value="1" />
<div id="INPUT4" class="imgsub" onclick="PostXML4()" style="background-image: url(IMAGES/LED_GR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<input id="INPUT4h" type="hidden" name="{INPUT[4]/@NAME}" value="0" />
<div id="INPUT4" class="imgsub" onclick="PostXML4()" style="background-image: url(IMAGES/LED_GR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 313px; left: 80px; z-index: 7;">
<xsl:if test="INPUT[5]/@VALUE = 0">
<input id="INPUT5h" type="hidden" name="{INPUT[5]/@NAME}" value="1" />
<div id="INPUT5" class="imgsub" onclick="PostXML5()" style="background-image: url(IMAGES/LED_OR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<input id="INPUT5h" type="hidden" name="{INPUT[5]/@NAME}" value="0" />
<div id="INPUT5" class="imgsub" onclick="PostXML5()" style="background-image: url(IMAGES/LED_OR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 175px; left: 25px; z-index: 8;">
<xsl:if test="INPUT[6]/@VALUE = 0">
<input id="INPUT6h" type="hidden" name="{INPUT[6]/@NAME}" value="1" />
<div id="INPUT6" class="imgsub" onclick="PostXML6()" style="background-image: url(IMAGES/1DOWNA_1.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<input id="INPUT6h" type="hidden" name="{INPUT[6]/@NAME}" value="0" />
<div id="INPUT6" class="imgsub" onclick="PostXML6()" style="background-image: url(IMAGES/1DOWNA_1.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 174px; left: 206px; z-index: 9;">
<xsl:if test="INPUT[7]/@VALUE = 0">
<input id="INPUT7h" type="hidden" name="{INPUT[7]/@NAME}" value="1" />
<div id="INPUT7" class="imgsub" onclick="PostXML7()" style="background-image: url(IMAGES/1UPARROW.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<input id="INPUT7h" type="hidden" name="{INPUT[7]/@NAME}" value="0" />
<div id="INPUT7" class="imgsub" onclick="PostXML7()" style="background-image: url(IMAGES/1UPARROW.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 178px; left: 81px; z-index: 11;">
<xsl:if test="INPUT[8]/@VALUE = 0">
<input id="INPUT8h" type="hidden" name="{INPUT[8]/@NAME}" value="1" />
<div id="INPUT8" class="imgsub" onclick="PostXML8()" style="background-image: url(IMAGES/LED_OR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<input id="INPUT8h" type="hidden" name="{INPUT[8]/@NAME}" value="0" />
<div id="INPUT8" class="imgsub" onclick="PostXML8()" style="background-image: url(IMAGES/LED_OR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 193px; left: 81px; z-index: 12;">
<xsl:if test="INPUT[9]/@VALUE = 0">
<input id="INPUT9h" type="hidden" name="{INPUT[9]/@NAME}" value="1" />
<div id="INPUT9" class="imgsub" onclick="PostXML9()" style="background-image: url(IMAGES/LED_GR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<input id="INPUT9h" type="hidden" name="{INPUT[9]/@NAME}" value="0" />
<div id="INPUT9" class="imgsub" onclick="PostXML9()" style="background-image: url(IMAGES/LED_GR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 208px; left: 81px; z-index: 13;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT10h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT10" class="imgsub" onclick="PostXML10()" style="background-image: url(IMAGES/LED_OR_1.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT10h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT10" class="imgsub" onclick="PostXML10()" style="background-image: url(IMAGES/LED_OR_3.PNG); line-height: 15px; height: 15px; width: 30px;"></div>
</xsl:if>
</form>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="border: 0px; text-align: center">© 2007 - 2016 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
