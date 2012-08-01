/*$(document).ready(function() {
	//A. El navegador es Safari
	//if($.browser.safari)

	//B. El navegador es Internet Explorer, pero con versión superior a la 6
	//if ($.browser.msie && $.browser.version > 6)

	//C. El navegador es Internet Explorer, pero con versión inferior o igual a la 6
	//if ($.browser.msie && $.browser.version <= 6)

	//D. El navegador es Mozilla Firefox en versión 2 o superior
	//if ($.browser.mozilla && $.browser.version >= "1.8")

	/*var browser = "";
	//var ref = document.referrer.toLowerCase();

	if ($.browser.mozilla) browser = "Firefox";
	if ($.browser.safari) browser = "Safari";
	if ($.browser.msie) browser = "IE";
	if ($.browser.opera) browser = "Opera";

	if (browser == "IE")
	{
		//createCookie('REFERRER', ref, 1);
		//alert(readCookie('REFERRER'));
		//eraseCookie('REFERRER');
	}
});*/

/*var browser = "";

/*if ($.browser.mozilla) browser = "Firefox";
if ($.browser.safari) browser = "Safari";
if ($.browser.msie) browser = "IE";
if ($.browser.opera) browser = "Opera";*/

//browser = navigator.appCodeName;
//var isIE = /*@cc_on!@*/false;

function isIE()
{
	return /msie/i.test(navigator.userAgent) && !/opera/i.test(navigator.userAgent);
}


/**
 * submitForm(submitName)
 * Submit para forms
 * @access public
 * @return void
 **/

function submitForm(submitName)
{
	$('#'+submitName).submit();
}

/**
 * esetUsername(username)
 * Valida usuario de ESET
 * @access public
 * @return bool
 **/
function esetUsername(username)
{
	//return preg_match('/^(av-[0-9]{7})$|^(eav-[0-9]{8})$|^(trial-[0-9]{8})$/i', username);
	var filter = /^(av-[0-9]{7})$|^(AV-[0-9]{7})$|^(eav-[0-9]{8})$|^(EAV-[0-9]{8})$|^(trial-[0-9]{8})$|^(TRIAL-[0-9]{8})$/;
	return (filter.test(username)) ? true : false;
}

/**
 * trim(s)
 * Elimina espacios del comienzo y fin de una cadena
 * @access public
 * @return string
 **/
function trim(s)
{
	while (s.length > 0 && (s[0] == ' ' || s[0] == '\n')) s = s.substring(1, s.length);
	while (s.length > 0 && (s[s.length-1] == ' ' || s[s.length - 1] == '\n')) s = s.substring(0, s.length-1);
	return s;
}

/**
 * validateEsetUsername(string)
 * Valida usuario de ESET
 * @access public
 * @return bool
 **/
function validateEsetUsername(string)
{
	var filtro_usr1 = /^([A-Z]{3,3}-[0-9]{8,8})$/;
	var filtro_usr2 = /^([A-Z]{2,2}-[0-9]{7,7})$/;
	var filtro_usr3 = /^([A-Z]{5,5}-[0-9]{8,8})$/;

	if (!filtro_usr1.test(string) && !filtro_usr2.test(string) && !filtro_usr3.test(string))
		return false;
	else
		return true;
}

/**
 *
 * @access public
 * @return void
 **/
function changeCountry(countryCode)
{
	var redirect = "";
	
	if (countryCode.toLowerCase() == "uy")
		redirect = "http://www.eset.com.uy/";
	else if (countryCode.toLowerCase() == "mx")
		redirect = "http://www.eset.com.mx/";
	/*else if (countryCode.toLowerCase() == "br")
		redirect = "http://www.eset.com.br/";*/
	else
		redirect = "/esetla-country-" + countryCode;

	window.location.href = redirect;
}

function changeCountry2(countryCode)
{
	var redirect = "";
	
	if (countryCode.toLowerCase() == "uy")
		redirect = "http://www.eset.com.uy/";
	else if (countryCode.toLowerCase() == "mx")
		redirect = "http://www.eset.com.mx/";
	else
		redirect = "/esetla-country-" + countryCode;
	
	//if (browser == "IE")
	if (isIE())
	{
		var fakeLink = document.createElement("a");
		
		fakeLink.href = redirect;
        document.body.appendChild(fakeLink);
        fakeLink.click(); // click() method defined in IE only
	}
	else
		window.location.href = redirect;
}

/**
 *
 * @access public
 * @return void
 **/
function changeLanguage(language)
{
	var redirect = "";
	
	if (language.toLowerCase() == "pt")
		redirect = "http://www.eset.com.br/";
	else if (language.toLowerCase() == "es")
		redirect = "http://www.eset-la.com/";
	/* REEMPLAZAR POR esto para permitir cambio de sección entre idiomas.
	if (language.toLowerCase() == "pt")
		redirect = "http://www.eset.com.br"+window.location.pathname;
	else if (language.toLowerCase() == "es")
		redirect = "http://www.eset-la.com"+window.location.pathname;
	*/
	window.location.href = redirect;
}

function createCookie(name, value, days)
{
	if (days)
	{
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	//document.cookie = name + " = " + value + expires + "; path=/";
	document.cookie = name + " = " + value + expires;
}

function readCookie(name)
{
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++)
	{
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function eraseCookie(name)
{
	createCookie(name,"",-1);
}

function leftTrim(sString)
{
	while (sString.substring(0,1) == ' ')
		sString = sString.substring(1, sString.length);

	return sString;
}

function rightTrim(sString)
{
	while (sString.substring(sString.length-1, sString.length) == ' ')
		sString = sString.substring(0,sString.length-1);

	return sString;
}

function allTrim(sString)
{
	while (sString.substring(0,1) == ' ')
		sString = sString.substring(1, sString.length);

	while (sString.substring(sString.length-1, sString.length) == ' ')
		sString = sString.substring(0,sString.length-1);

	return sString;
}

function validateNumber(str)
{
    str = allTrim(str);
    return /^[+]?\d{1,3}(\.\d{1,2})?$/.test(str);
}

/**
 *
 * @access public
 * @return boolean
 **/
function checkMail(email)
{
	var filtro = /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@+([_a-zA-Z0-9-]+\.)*[a-zA-Z0-9-]{2,200}\.[a-zA-Z]{2,6}$/;

	return filtro.test(email);
}