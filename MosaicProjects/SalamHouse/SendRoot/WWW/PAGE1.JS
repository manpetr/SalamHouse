
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(pstr,pf) {var isDel=new RegExp("^([-:]|\\s|\\.)");var isNotDel=new RegExp("^[YMDhmsz]");var strYY='', strMM='0', strDD='0', strhh='0', strmm='0', strss='0', strzz='0';var j = 0;for(var i = 0; i < pstr.length; i++, j++) {if(isNotDel.test(pstr.charAt(i))) {if(isDel.test(pf.charAt(j))) {j--;} else {switch(pstr.charAt(i)) {case 'Y' : strYY += pf.charAt(j); break;case 'M' : strMM += pf.charAt(j); break;case 'D' : strDD += pf.charAt(j); break;case 'h' : strhh += pf.charAt(j); break;case 'm' : strmm += pf.charAt(j); break;case 's' : strss += pf.charAt(j); break;case 'z' : strzz += pf.charAt(j); break;}}}}strzz = (strzz+'00').substr(0,4);  return new Date(strYY, strMM, strDD, strhh, strmm, strss, strzz);}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function BackToReferrer() {
r = document.referrer.toLowerCase();
if(r==''||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
} else {document.location.href=r;}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1517499844) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
var Input1h = document.getElementById('INPUT1h');
if(Input1h) { vz = x[0].getAttribute('VALUE') == '0'; iz = Input1h.value == '0';
if(vz == iz) {
if(vz) {
Input1h.value = '1';
Input1.style.backgroundImage = 'url("IMAGES/1DOWNA_1.PNG")';
if(Input1.getAttribute('value') != null) {Input1.value = '';} else {}
} else {
Input1h.value = '0';
Input1.style.backgroundImage = 'url("IMAGES/1DOWNA_1.PNG")';
if(Input1.getAttribute('value') != null) {Input1.value = '';
} else {}
}}} else {
if(x[0].getAttribute('VALUE') == '0') {
SetBg('INPUT1', '1DOWNA_1.PNG');
} else {
SetBg('INPUT1', '1DOWNA_1.PNG');
}}
var Input2 = document.getElementById('INPUT2');
var Input2h = document.getElementById('INPUT2h');
if(Input2h) { vz = x[1].getAttribute('VALUE') == '0'; iz = Input2h.value == '0';
if(vz == iz) {
if(vz) {
Input2h.value = '1';
Input2.style.backgroundImage = 'url("IMAGES/1UPARROW.PNG")';
if(Input2.getAttribute('value') != null) {Input2.value = '';} else {}
} else {
Input2h.value = '0';
Input2.style.backgroundImage = 'url("IMAGES/1UPARROW.PNG")';
if(Input2.getAttribute('value') != null) {Input2.value = '';
} else {}
}}} else {
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT2', '1UPARROW.PNG');
} else {
SetBg('INPUT2', '1UPARROW.PNG');
}}
var Input3 = document.getElementById('INPUT3');
var Input3h = document.getElementById('INPUT3h');
if(Input3h) { vz = x[2].getAttribute('VALUE') == '0'; iz = Input3h.value == '0';
if(vz == iz) {
if(vz) {
Input3h.value = '1';
Input3.style.backgroundImage = 'url("IMAGES/LED_OR_1.PNG")';
if(Input3.getAttribute('value') != null) {Input3.value = '';} else {}
} else {
Input3h.value = '0';
Input3.style.backgroundImage = 'url("IMAGES/LED_OR_3.PNG")';
if(Input3.getAttribute('value') != null) {Input3.value = '';
} else {}
}}} else {
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'LED_OR_1.PNG');
} else {
SetBg('INPUT3', 'LED_OR_3.PNG');
}}
var Input4 = document.getElementById('INPUT4');
var Input4h = document.getElementById('INPUT4h');
if(Input4h) { vz = x[3].getAttribute('VALUE') == '0'; iz = Input4h.value == '0';
if(vz == iz) {
if(vz) {
Input4h.value = '1';
Input4.style.backgroundImage = 'url("IMAGES/LED_GR_1.PNG")';
if(Input4.getAttribute('value') != null) {Input4.value = '';} else {}
} else {
Input4h.value = '0';
Input4.style.backgroundImage = 'url("IMAGES/LED_GR_3.PNG")';
if(Input4.getAttribute('value') != null) {Input4.value = '';
} else {}
}}} else {
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT4', 'LED_GR_1.PNG');
} else {
SetBg('INPUT4', 'LED_GR_3.PNG');
}}
var Input5 = document.getElementById('INPUT5');
var Input5h = document.getElementById('INPUT5h');
if(Input5h) { vz = x[4].getAttribute('VALUE') == '0'; iz = Input5h.value == '0';
if(vz == iz) {
if(vz) {
Input5h.value = '1';
Input5.style.backgroundImage = 'url("IMAGES/LED_OR_1.PNG")';
if(Input5.getAttribute('value') != null) {Input5.value = '';} else {}
} else {
Input5h.value = '0';
Input5.style.backgroundImage = 'url("IMAGES/LED_OR_3.PNG")';
if(Input5.getAttribute('value') != null) {Input5.value = '';
} else {}
}}} else {
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT5', 'LED_OR_1.PNG');
} else {
SetBg('INPUT5', 'LED_OR_3.PNG');
}}
var Input6 = document.getElementById('INPUT6');
var Input6h = document.getElementById('INPUT6h');
if(Input6h) { vz = x[5].getAttribute('VALUE') == '0'; iz = Input6h.value == '0';
if(vz == iz) {
if(vz) {
Input6h.value = '1';
Input6.style.backgroundImage = 'url("IMAGES/1DOWNA_1.PNG")';
if(Input6.getAttribute('value') != null) {Input6.value = '';} else {}
} else {
Input6h.value = '0';
Input6.style.backgroundImage = 'url("IMAGES/1DOWNA_1.PNG")';
if(Input6.getAttribute('value') != null) {Input6.value = '';
} else {}
}}} else {
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT6', '1DOWNA_1.PNG');
} else {
SetBg('INPUT6', '1DOWNA_1.PNG');
}}
var Input7 = document.getElementById('INPUT7');
var Input7h = document.getElementById('INPUT7h');
if(Input7h) { vz = x[6].getAttribute('VALUE') == '0'; iz = Input7h.value == '0';
if(vz == iz) {
if(vz) {
Input7h.value = '1';
Input7.style.backgroundImage = 'url("IMAGES/1UPARROW.PNG")';
if(Input7.getAttribute('value') != null) {Input7.value = '';} else {}
} else {
Input7h.value = '0';
Input7.style.backgroundImage = 'url("IMAGES/1UPARROW.PNG")';
if(Input7.getAttribute('value') != null) {Input7.value = '';
} else {}
}}} else {
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT7', '1UPARROW.PNG');
} else {
SetBg('INPUT7', '1UPARROW.PNG');
}}
var Input8 = document.getElementById('INPUT8');
var Input8h = document.getElementById('INPUT8h');
if(Input8h) { vz = x[7].getAttribute('VALUE') == '0'; iz = Input8h.value == '0';
if(vz == iz) {
if(vz) {
Input8h.value = '1';
Input8.style.backgroundImage = 'url("IMAGES/LED_OR_1.PNG")';
if(Input8.getAttribute('value') != null) {Input8.value = '';} else {}
} else {
Input8h.value = '0';
Input8.style.backgroundImage = 'url("IMAGES/LED_OR_3.PNG")';
if(Input8.getAttribute('value') != null) {Input8.value = '';
} else {}
}}} else {
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT8', 'LED_OR_1.PNG');
} else {
SetBg('INPUT8', 'LED_OR_3.PNG');
}}
var Input9 = document.getElementById('INPUT9');
var Input9h = document.getElementById('INPUT9h');
if(Input9h) { vz = x[8].getAttribute('VALUE') == '0'; iz = Input9h.value == '0';
if(vz == iz) {
if(vz) {
Input9h.value = '1';
Input9.style.backgroundImage = 'url("IMAGES/LED_GR_1.PNG")';
if(Input9.getAttribute('value') != null) {Input9.value = '';} else {}
} else {
Input9h.value = '0';
Input9.style.backgroundImage = 'url("IMAGES/LED_GR_3.PNG")';
if(Input9.getAttribute('value') != null) {Input9.value = '';
} else {}
}}} else {
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT9', 'LED_GR_1.PNG');
} else {
SetBg('INPUT9', 'LED_GR_3.PNG');
}}
var Input10 = document.getElementById('INPUT10');
var Input10h = document.getElementById('INPUT10h');
if(Input10h) { vz = x[9].getAttribute('VALUE') == '0'; iz = Input10h.value == '0';
if(vz == iz) {
if(vz) {
Input10h.value = '1';
Input10.style.backgroundImage = 'url("IMAGES/LED_OR_1.PNG")';
if(Input10.getAttribute('value') != null) {Input10.value = '';} else {}
} else {
Input10h.value = '0';
Input10.style.backgroundImage = 'url("IMAGES/LED_OR_3.PNG")';
if(Input10.getAttribute('value') != null) {Input10.value = '';
} else {}
}}} else {
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT10', 'LED_OR_1.PNG');
} else {
SetBg('INPUT10', 'LED_OR_3.PNG');
}}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('PAGE1.XML','"+pd+"')",1);}else{setTimeout("GetXML('PAGE1.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML1() {
var Input1h = document.getElementById('INPUT1h');
PostXML('PAGE1.XML', encodeURIComponent(Input1h.name+'='+Input1h.value));
}
function PostXML2() {
var Input2h = document.getElementById('INPUT2h');
PostXML('PAGE1.XML', encodeURIComponent(Input2h.name+'='+Input2h.value));
}
function PostXML3() {
var Input3h = document.getElementById('INPUT3h');
PostXML('PAGE1.XML', encodeURIComponent(Input3h.name+'='+Input3h.value));
}
function PostXML4() {
var Input4h = document.getElementById('INPUT4h');
PostXML('PAGE1.XML', encodeURIComponent(Input4h.name+'='+Input4h.value));
}
function PostXML5() {
var Input5h = document.getElementById('INPUT5h');
PostXML('PAGE1.XML', encodeURIComponent(Input5h.name+'='+Input5h.value));
}
function PostXML6() {
var Input6h = document.getElementById('INPUT6h');
PostXML('PAGE1.XML', encodeURIComponent(Input6h.name+'='+Input6h.value));
}
function PostXML7() {
var Input7h = document.getElementById('INPUT7h');
PostXML('PAGE1.XML', encodeURIComponent(Input7h.name+'='+Input7h.value));
}
function PostXML8() {
var Input8h = document.getElementById('INPUT8h');
PostXML('PAGE1.XML', encodeURIComponent(Input8h.name+'='+Input8h.value));
}
function PostXML9() {
var Input9h = document.getElementById('INPUT9h');
PostXML('PAGE1.XML', encodeURIComponent(Input9h.name+'='+Input9h.value));
}
function PostXML10() {
var Input10h = document.getElementById('INPUT10h');
PostXML('PAGE1.XML', encodeURIComponent(Input10h.name+'='+Input10h.value));
}

function PostGlobal() {
}
