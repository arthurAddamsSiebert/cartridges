//  ------------------------------------------------------------------------ //
//                             PopCalendar 1.6                               //
//                    Copyright (c) 2010 alquanto.net                        //
//                       <http://www.alquanto.net/>                          //
//  ------------------------------------------------------------------------ //
//  This program is free software; you can redistribute it and/or modify     //
//  it under the terms of the GNU Lesser General Public License as           //
//  published by the Free Software Foundation; either version 2.1            //
//  of the License, or (at your option) any later version.                   //
//                                                                           //
//  You may not change or alter any portion of this comment or credits       //
//  of supporting developers from this source code or any supporting         //
//  source code which is considered copyrighted (c) material of the          //
//  original comment or credit authors.                                      //
//                                                                           //
//  This program is distributed in the hope that it will be useful,          //
//  but WITHOUT ANY WARRANTY; without even the implied warranty of           //
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            //
//  GNU Lesser General Public License for more details.                      //
//                                                                           //
//  You should have received a copy of the GNU Lesser General Public License //
//  along with this program; if not, write to the Free Software              //
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA //
//  ------------------------------------------------------------------------ //
//
// visit http://alquanto.net/software/popcalendar for updates
//
// HISTORY
// 2010-06-22  ALQUANTO
//        * released v1.6
//        * readded time-boxes for editing datetime values. Just use a format like "dd.mm.yyyy hh:ii:ss" for this.
// 2009-12-11  ALQUANTO
//        * released v1.5
//        * fixed some bugs, added lazy param-feature, added default-formats, removed silly year-calculation
// 2009-12-10  Karl Edwall  <karl at magicnotes dot com>
//        * bug: calendar didn't work in Opera. Uses now getFullYear() instead of getYear()
// 2008-09-17  Carlos Peix
//        * new language: portuguese
// 2008-08-29  Brian Bowman
//        * bug: monthName not defined... fixed.
// 2007-12-10  Oliver Baltz
//        * small typo in french "august" (no utf8-encoding)
// 2007-09-04  ALQUANTO
//        * bug: divs in caption not floating left. fixed.
//        * add: function show now interpretes strings as control-params as document-ids
// 2007-04-30  Murat Purc
//        * bug: calendar-table wasn't closed correctly, sometimes missing </tr>
// 2006-12-18  Tom Vonsild
//        * bug: year was falsely calculated in IE6
// 2006-12-12  Tom Vonsild
//        * new language: danish
// 2006-12-07  ALQUANTO
//        * new behaviour: don't hide selectboxes and applets in IE7
//        * new feature: show only one-letter-daynames with "showDayLetter = true"
// 2006-12-06  Davy Belmans
//        * fixed bug with Holiday-Records
// 2006-11-01  Joshua Mills
//        * fixed bug in enablePast-param
// 2006-10-23  Marco Savini
//        * fixed positioning glitches with IE7
// 2006-08-11  ALQUANTO
//        * fixed some language-strings (utf8-sequences)
// 2006-06-28  Marco Lupo Stanghellini
//        * new Language (italian, it)
// 2006-04-30  ALQUANTO
//        * update: most of the calendar are made of DIVs, all styles are now in stylesheet
//        * var "imgDir" renamed to "theme", because now you are able to have different themes for the calendar
//        * 'gfx/popcalendar.css' renamed to 'default/style.css'
// 2006-04-20  ALQUANTO
//        * update: new language: french
// 2006-04-19  ALQUANTO
//        * release
//        * update: reimplementation of OO-calendar
//        * update: shorter function-names
//        * update: some global vars are not necessary anymore
//        * update: now you have to call the calendar via popCalendar.show()
//        * update: only one array is necessary for daynames. --> modified Array-Handling
// 2006-04-04  Engelke Eschner
//        * popCalendar becomes a selfcontaining Object
//        * bugfix: fixed positioning to work with strict modes in IE/Moz (+'px')
//        * init() has a new parameter to optionally install event handlers to hide the calendar
// 2005-07-23  ALQUANTO
//        * release... some fixes, etc.
// 2005-04-30  Dariusz Markowicz
//        * new Language (polish, pl)
// 2005-03-10  ALQUANTO
//        * all IDs in html are now prefixed with "pc"
//        * most CSS now is in external stylesheet
//        * optimized CSS
//        * no close-button
//        * new design: very small design
//        * optimized function: constructCalendar()
// 2005-03-08  ALQUANTO
//        * all IDs in HTML are now prefixed with "pcID"
//        * simplier CSS, no Font-Tags anymore
//        * no support for NS4 anymore (what the hell is that? :-) )
// 2004-09-03  sanjaya
//        * new Language (no)
//        * new feature: added time-boxes (just add "hh:ii:ss" to your dateformat in Showcalendar)
// 2003-07-30  ALQUANTO
//        * german language included
//        * modified languageLogic with the ISO-2letter-strings
//        * changes in in showCalendar: defaultLanguage is already set...
//        * js and html corrected... more xhtml-compliant... simplier css
// 2003-07-25  PinoToy
//        * new logic for multiple languages (English, Spanish and ready for more)
//        * changes in popUpMonth & popDownMonth methods for hiding popup
//        * changes in popDownYear & popDownYear methods for hidding popup
//        * new logic for disabling dates in the past
//        * new method showCalendar, dynamic configuration of language, enabling past & position
//        * changes in the styles
// 2001-12-02  Tan Ling Wee
//        * initial version, thanx!

var popCalendar = {
	lg : "en", // Default Language: en - english ; es - spanish; de - german; no - norwegian; pl - polish
	enablePast : true, // true - enabled ; false - disabled
	fixedX : -1, // x position (-1 if to appear below control)
	fixedY : -1, // y position (-1 if to appear below control)
	startAt : 1, // 0 - sunday ; 1 - monday, ...
	showWeekNumber : true, // false - don't show; true - show
	showToday : true, // false - don't show; true - show
	showDayLetter : false, // false - use 2-3 letter day abbreviations; true - show only one letter for a day
	theme : "popcalendar.css", // popcalendar css file for images and styles
	hideElements : false, // InternetExplorer <6 overlaps selectboxes and applets BEFORE the popCalendar. so hide these temporarily?

	formatString : { // default dateformat-strings
		da : "dd-mm-yyyy",
		de : "dd.mm.yyyy",
		en : "mm/dd/yyyy",
		es : "dd/mm/yyyy",
		fr : "dd/mm/yyyy",
		it : "dd/mm/yyyy",
		nl : "dd-mm-yyyy",
		no : "dd.mm.yyyy",
		pl : "yyyy-mm-dd",
		pt : "dd-mm-yyyy"
	},

	gotoString : {
		da : "Gå til nuværende måned",
		de : "Zum aktuellen Monat",
		en : "Go to current month",
		es : "Ir al mes actual",
		fr : "Atteindre ...",
		it : "Vai al mese corrente",
		nl : "Ga naar de huidige maand",
		no : "G\u00E5 til n\u00E5v\u00E6rende m\u00E5ned",
		pl : "Przejdź do aktualnego miesiąca",
		pt : "Para ir ao mês atual"
	},

	todayString : {
		da : "Idag er",
		de : "Heute ist",
		en : "Today is",
		es : "Hoy es",
		fr : "aujourd'hui",
		it : "Oggi \u00E8",
		nl : "Vandaag is",
		no : "Idag er",
		pl : "Dzisiaj jest",
		pt : "Hoje é"
	},

	weekShortString : {
		da : "Uge",
		de : "KW",
		en : "Wk",
		es : "Sem",
		fr : "Se",
		it : "sett",
		nl : "wk",
		no : "Uke",
		pl : "Tyg",
		pt : "Sem"
	},

	weekString : {
		da : "Uge",
		de : "Kalenderwoche",
		en : "calendar week",
		es : "Sem",
		fr : "Semaine",
		it : "Settimana",
		nl : "wk",
		no : "Uke",
		pl : "Tyg",
		pt : "Semana"
	},

	scrollLeftMessage : {
		da : "Klik for at hoppe til forrige måned. Hold museknappen nede, for at rulle automatisk.",
		de : "Klicken Sie, um zum vorherigen Monat zu gelangen. Gedr\u00FCckt halten, um automatisch weiter zu scrollen.",
		en : "Click to scroll to previous month. Hold mouse button to scroll automatically.",
		es : "Presione para pasar al mes anterior. Deje presionado para pasar varios meses.",
		fr : "Click to scroll to previous month. Hold mouse button to scroll automatically.",
		it : "Premere per passare al mese precedente. Tenere premuto per scorrere vari mesi.",
		nl : "Klik om naar de vorige maand te scrollen. Houdt de muis ingedrukt om automatisch te scrollen.",
		no : "Klikk for \u00E5 g\u00E5 til forrige m\u00E5ned. Hold museknappen nede for \u00E5 bla fort tilbake.",
		pl : "Kliknij aby przej¶æ do poprzedniego miesiąca. Trzymaj wci¶niêty klawisz myszy aby przewijaæ automatycznie.",
		pt : "Pressione para acontecer ao mês precedente. Prenda a tecla de rato para enrolar-se automaticamente."
	},

	scrollRightMessage : {
		da : "Klik for at hoppe til næste måned. Hold museknappen nede, for at rulle automatisk.",
		de : "Klicken Sie, um zum n\u00E4chsten Monat zu gelangen. Gedr\u00FCckt halten, um automatisch weiter zu scrollen.",
		en : "Click to scroll to next month. Hold mouse button to scroll automatically.",
		es : "Presione para pasar al siguiente mes. Deje presionado para pasar varios meses.",
		fr : "Click to scroll to next month. Hold mouse button to scroll automatically.",
		it : "Premere per passare al mese successivo. Tenere premuto per scorrere vari mesi.",
		nl : "Klik om naar de volgende maand te scrollen. Houdt de muis  ingedrukt om automatisch te scrollen.",
		no : "Klikk for \u00E5 g\u00E5 til neste m\u00E5ned. Hold museknappen nede for \u00E5 bla fort framover.",
		pl : "Kliknij aby przej¶æ do nastêpnego miesiąca. Trzymaj wci¶niêty klawisz myszy aby przewijaæ automatycznie.",
		pt : "Pressione para acontecer ao seguinte mês. Saa pressionado para gastar diversos meses."
	},

	selectMonthMessage : {
		da : "Klik for at vælge måned.",
		de : "Klicken Sie, um einen Monat auszuw\u00E4hlen.",
		en : "Click to select a month.",
		es : "Presione para seleccionar un mes.",
		fr : "Cliquez pour choisir le mois.",
		it : "Premere per scegliere un mese.",
		nl : "Klik om een maand te selecteren.",
		no : "Klikk for \u00E5 velge m\u00E5ned.",
		pl : "Kliknij aby wybraæ miesiąc.",
		pt : "Pressione para selecionar um mês."
	},

	selectYearMessage : {
		da : "Klik for at vælge år.",
		de : "Klicken Sie, um ein Jahr auszuw\u00E4hlen.",
		en : "Click to select a year.",
		es : "Presione para seleccionar un a\u00F1o.",
		fr : "Cliquez pour choisir l'ann\u00E9e.",
		it : "Premere per scegliere un anno.",
		nl : "Klik om een jaar te selecteren.",
		no : "Klikk for \u00E5 velge \u00E5r.",
		pl : "Kliknij aby wybraæ rok.",
		pt : "Pressione para selecionar um ano."
	},

	selectDateMessage : { // do not replace [date], it will be replaced by date.
		da : "Vælg [date] som dato.",
		de : "W\u00E4hlen Sie [date] als Datum.",
		en : "Select [date] as date.",
		es : "Seleccione [date] como fecha.",
		fr : "Select [date] as date.",
		it : "Selezionare [date] come data.",
		nl : "Selecteer [date] als datum.",
		no : "Velg [dato] som dato.",
		pl : "Wybierz [date] jako datê.",
		pt : "Selecione [date] como a data."
	},

	monthName : {
		da : new Array("Januar", "Februar", "Marts", "April", "Maj", "Juni",
				"Juli", "August", "September", "Oktober", "November",
				"December"),
		de : new Array("Januar", "Februar", "M\u00E4rz", "April", "Mai",
				"Juni", "Juli", "August", "September", "Oktober", "November",
				"Dezember"),
		en : new Array("January", "February", "March", "April", "May", "June",
				"July", "August", "September", "October", "November",
				"December"),
		es : new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
				"Julio", "Agosto", "Septiembre", "Octubre", "Noviembre",
				"Diciembre"),
		fr : new Array("Janvier", "F\u00E9vrier", "Mars", "Avril", "Mai",
				"Juin", "Juillet", "Ao\u00FBt", "Septembre", "Octobre",
				"Novembre", "D\u00E9cembre"),
		it : new Array("Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio",
				"Giugno", "Luglio", "Agosto ", "Settembre", "Ottobre",
				"Novembre", "Dicembre"),
		nl : new Array("Januari", "Februari", "Maart", "April", "Mei", "Juni",
				"Juli", "Augustus ", "September", "Oktober", "November",
				"December"),
		no : new Array("Januar", "Februar", "Mars", "April", "Mai", "Juni",
				"Juli", "August", "September", "Oktober", "November",
				"Desember"),
		pl : new Array("Styczeń", "Luty", "Marzec", "Kwiecień", "Maj",
				"Czerwiec", "Lipiec", "Sierpień", "Wrzesień", "Październik",
				"Listopad", "Grudzień"),
		pt : new Array("Janeiro", "Fevereiro", "Março", "Abril", "Maio",
				"Junho", "Julio", "Agosto", "Setembro", "Outubro", "Novembro",
				"Dezembro")
	},

	monthNameAbbr : {
		da : new Array("Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Aug",
				"Sep", "Okt", "Nov", "Dec"),
		de : new Array("Jan", "Feb", "Mrz", "Apr", "Mai", "Jun", "Jul", "Aug",
				"Sep", "Okt", "Nov", "Dez"),
		en : new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
				"Sep", "Oct", "Nov", "Dec"),
		es : new Array("Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago",
				"Sep", "Oct", "Nov", "Dic"),
		fr : new Array("Jan", "Fev", "Mar", "Avr", "Mai", "Juin", "Juil",
				"Aout", "Sep", "Oct", "Nov", "Dec"),
		it : new Array("Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago",
				"Set", "Ott", "Nov", "Dic"),
		nl : new Array("Jan", "Feb", "Mrt", "Apr", "Mei", "Jun", "Jul", "Aug",
				"Sep", "Okt", "Nov", "Dec"),
		no : new Array("Jan", "Feb", "Mar", "Apr", "Mai", "Jun", "Jul", "Aug",
				"Sep", "Okt", "Nov", "Des"),
		pl : new Array("Sty", "Lut", "Mar", "Kwi", "Maj", "Cze", "Lip", "Sie",
				"Wrz", "Paź", "Lis", "Gru"),
		pt : new Array("Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago",
				"Set", "Out", "Nov", "Dez")
	},

	dayName : {
		da : new Array("Søn", "Man", "Tirs", "Ons", "Tors", "Fre", "Lør"),
		de : new Array("So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"),
		en : new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
		es : new Array("Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sab"),
		fr : new Array("Dim", "Lun", "Mar", "Mer", "Jeu", "Ven", "Sam"),
		it : new Array("Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"),
		nl : new Array("Zo", "Ma", "Di", "Wo", "Do", "Vr", "Za"),
		no : new Array("S\u00F8n", "Man", "Tir", "Ons", "Tor’", "Fre",
				"L\u00F8r"),
		pl : new Array("Nie", "Pn", "Wt", "Śr", "Cz", "Pt", "So"),
		pt : new Array("Dom", "2da", "3ça", "4ta", "5ta", "6ta", "Sab")
	},

	o : null,
	om : null,
	oy : null,
	monthSelected : null,
	yearSelected : null,
	dateSelected : null,
	omonthSelected : null,
	oyearSelected : null,
	odateSelected : null,
	yearConstructed : null,
	intervalID1 : null,
	intervalID2 : null,
	timeoutID1 : null,
	timeoutID2 : null,
	ctlToPlaceValue : null,
	ctlNow : null,
	dateFormat : null,
	nStartingYear : null,
	curX : 0,
	curY : 0,
	visYear : 0,
	visMonth : 0,
	bPageLoaded : false,
	ie : (/msie/i.test(navigator.userAgent) && !/opera/i
			.test(navigator.userAgent)),
	ie7 : (/msie 7/i.test(navigator.userAgent)),
	$ : function() {
		var e = new Array();
		for ( var i = 0; i < arguments.length; i++) {
			var element = arguments[i];
			if (typeof element == 'string')
				element = document.getElementById(element);
			if (arguments.length == 1)
				return element;
			e.push(element);
		}
		return e;
	},
	today : new Date(),
	dateNow : null,
	monthNow : null,
	yearNow : null,
	bShow : false,

	// hides <select> and <applet> objects (for IE only)
	hideElement : function(elmID, overDiv) {
		if (this.ie && !this.ie7) {
			for ( var i = 0; i < document.all.tags(elmID).length; i++) {
				var obj = document.all.tags(elmID)[i];
				if (!obj || !obj.offsetParent)
					continue;

				// Find the element's offsetTop and offsetLeft relative to the BODY tag.
				objLeft = obj.offsetLeft;
				objTop = obj.offsetTop;
				objParent = obj.offsetParent;

				while (objParent.tagName.toUpperCase() != 'BODY') {
					objLeft += objParent.offsetLeft;
					objTop += objParent.offsetTop;
					objParent = objParent.offsetParent;
				}

				objHeight = obj.offsetHeight;
				objWidth = obj.offsetWidth;

				if ((overDiv.offsetLeft + overDiv.offsetWidth) <= objLeft)
					;
				else if ((overDiv.offsetTop + overDiv.offsetHeight) <= objTop)
					;
				else if (overDiv.offsetTop >= (objTop + objHeight + obj.height))
					;
				else if (overDiv.offsetLeft >= (objLeft + objWidth))
					;
				else {
					obj.style.visibility = 'hidden';
				}
			}
		}
	},

	// unhides <select> and <applet> objects (for IE only)
	showElement : function(elmID) {
		if (this.ie && !this.ie7) {
			for ( var i = 0; i < document.all.tags(elmID).length; i++) {
				var obj = document.all.tags(elmID)[i];
				if (!obj || !obj.offsetParent)
					continue;
				obj.style.visibility = '';
			}
		}
	},

	// helper-functions:
	getLeft : function(l) {
		if (l.offsetParent)
			return (l.offsetLeft + this.getLeft(l.offsetParent));
		else
			return (l.offsetLeft);
	},

	getTop : function(l) {
		if (l.offsetParent)
			return (l.offsetTop + this.getTop(l.offsetParent));
		else
			return (l.offsetTop);
	},

	/**
	 * Initialize the calendar. This Function must be called before show()
	 * @param boolean installEventHandlers install event handlers to hide the calendar
	 */
	init : function(installEventHandlers) {
		this.dateNow = this.today.getDate();
		this.monthNow = this.today.getMonth();
		this.yearNow = this.today.getFullYear();

		var calHTML = "";
		calHTML += '<div onclick="popCalendar.bShow=true" id="pcIDcalendar" style="visibility:hidden;"><div id="pcIDcaption" unselectable="on"></div><div id="pcIDcontent">.</div>';
		if (this.showToday)
			calHTML += '<div id="pcIDfooter"></div>';
		calHTML += '</div><div id="pcIDselectMonth"></div><div id="pcIDselectYear"></div>';
		
		var calElement = document.createElement("div");
		calElement.style.position = "absolute";
		calElement.style.top = "0";
		calElement.innerHTML = calHTML;
		document.getElementsByTagName("body")[0].appendChild(calElement);

		this.o = this.$('pcIDcalendar');
		popCalendar.hide();
		this.om = this.$('pcIDselectMonth');
		this.oy = this.$('pcIDselectYear');
		this.yearConstructed = false;

		if (!installEventHandlers) { // hide calendar when enter has been pressed
			document.onkeypress = function(event) {
				if (!event)
					event = window.event;
				if (event.keyCode == 27)
					popCalendar.hide();
			};
			document.onclick = function() { // hide calendar when ...
				if (!popCalendar.bShow)
					popCalendar.hide();
				popCalendar.bShow = false;
			};
		}

		var c = document.createElement('link'); // insert CSS in header-section:
		with (c) {
			type = 'text/css';
			rel = 'stylesheet';
			href = cssDir + this.theme;
			media = 'screen';
		}
		document.getElementsByTagName("head")[0].appendChild(c);
		this.bPageLoaded = true;
	},

	hide : function() {
		this.o.style.visibility = 'hidden';
		if (this.om != null)
			this.om.style.visibility = 'hidden';
		if (this.oy != null)
			this.oy.style.visibility = 'hidden';
		if (this.hideElements) {
			this.showElement('SELECT');
			this.showElement('APPLET');
		}
	},

	// holidays...
	HolidaysCounter : 0,
	Holidays : new Array(),
	HolidayRec : function(d, m, y, desc) {
		this.d = d;
		this.m = m;
		this.y = y;
		this.desc = desc;
	},
	addHoliday : function(d, m, y, desc) {
		this.Holidays[this.HolidaysCounter++] = new this.HolidayRec(d, m, y,
				desc);
	},

	padZero : function(num) {
		return (num < 10) ? '0' + num : num;
	},

	constructDate : function(d, m, y) {
		var s = this.dateFormat;
		s = s.replace('dd', '<e>');
		s = s.replace('d', '<d>');
		s = s.replace('<e>', this.padZero(d));
		s = s.replace('<d>', d);
		s = s.replace('mmmm', '<p>');
		s = s.replace('mmm', '<o>');
		s = s.replace('MMM', '<o>');
		s = s.replace('mm', '<n>');
		s = s.replace('MM', '<n>');
		s = s.replace('m', '<m>');
		s = s.replace('M', '<m>');
		s = s.replace('<m>', m + 1);
		s = s.replace('<n>', this.padZero(m + 1));
		s = s.replace('<o>', this.monthName[this.lg][m]);
		s = s.replace('<p>', this.monthNameAbbr[this.lg][m]);
		s = s.replace('yyyy', y);
		s = s.replace('yy', this.padZero(y % 100));
		s = s.replace('hh', this.hour);
		s = s.replace('ii', this.minute);
		s = s.replace('ss', this.second);
		return s.replace('yy', this.padZero(y % 100));
	},

	close : function(day) {
		this.hide();
		if (day)
			this.dateSelected = day;
		this.ctlToPlaceValue.value = this.constructDate(this.dateSelected,
				this.monthSelected, this.yearSelected);
	},

	setToday : function() {
		this.dateSelected = this.dateNow;
		this.monthSelected = this.monthNow;
		this.yearSelected = this.yearNow;
		this.construct();
	},

	setTimePart : function(part, v) {
		v = Number(v);
		if (part == 'h')
			this.hour = this.padZero(v % 24);
		else if (part == 'i')
			this.minute = this.padZero(v % 60);
		else if (part == 's')
			this.second = this.padZero(v % 60);
	},

	StartDecMonth : function() { // Month Pulldown
		this.intervalID1 = setInterval('popCalendar.decMonth()', 80);
	},
	StartIncMonth : function() {
		this.intervalID1 = setInterval('popCalendar.incMonth()', 80);
	},
	incMonth : function() {
		this.monthSelected++;
		if (this.monthSelected > 11) {
			this.monthSelected = 0;
			this.yearSelected++;
		}
		this.construct();
	},
	decMonth : function() {
		this.monthSelected--;
		if (this.monthSelected < 0) {
			this.monthSelected = 11;
			this.yearSelected--;
		}
		this.construct();
	},
	constructMonth : function() {
		this.popDownYear();
		var s = '';
		for (i = 0; i < 12; i++) {
			var sName = this.monthName[this.lg][i];
			if (i == this.monthSelected)
				sName = '<strong>' + sName + '</strong>';
// inserted by INTERSHOP for disable past also for month
			if (!this.enablePast
					&& (this.yearSelected < this.yearNow
							|| (this.yearSelected == this.yearNow && i < this.monthNow))) {
				s += '<li><span class="pcMonthPast">' + sName + '</span></li>';
			} else
// end of insert by INTERSHOP
			s += '<li><a href="javascript:void(0)" onclick="popCalendar.monthSelected='
					+ i
					+ ';popCalendar.construct();popCalendar.popDownMonth();event.cancelBubble=true">'
					+ sName + '</a></li>';
		}
		this.om.innerHTML = '<ul onmouseover="clearTimeout(popCalendar.timeoutID1)" onmouseout="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.popDownMonth()\',100);event.cancelBubble=true">'
				+ s + '</ul>';
	},
	popUpMonth : function() {
		var leftOffset;
		if (this.visMonth == 1) {
			this.popDownMonth();
			this.visMonth--;
		} else {
			this.constructMonth();
			this.om.style.visibility = 'visible';
			leftOffset = parseInt(this.o.style.left)
					+ this.$('pcIDMonth').offsetLeft;
			if (this.ie)
				leftOffset += 1;
			this.om.style.left = leftOffset + 'px';
			this.om.style.top = parseInt(this.o.style.top) + 19 + 'px';
			if (this.hideElements) {
				this.hideElement('SELECT', this.om);
				this.hideElement('APPLET', this.om);
			}
			this.visMonth++;
		}
	},
	popDownMonth : function() {
		this.om.style.visibility = 'hidden';
		this.visMonth = 0;
	},

	incYear : function() { // Year Pulldown
		for ( var i = 0; i < 7; i++) {
			var newYear = (i + this.nStartingYear) + 1;
			this.$('pcY' + i).innerHTML = (newYear == this.yearSelected) ? '<strong>'
					+ newYear + '</strong>'
					: newYear;
		}
		this.nStartingYear++;
		this.bShow = true;
	},
	decYear : function() {
		for ( var i = 0; i < 7; i++) {
			var newYear = (i + this.nStartingYear) - 1;
			this.$('pcY' + i).innerHTML = (newYear == this.yearSelected) ? '<strong>'
					+ newYear + '</strong>'
					: newYear;
		}
		this.nStartingYear--;
		this.bShow = true;
	},
	selectYear : function(nYear) {
		this.yearSelected = parseInt(nYear + this.nStartingYear);
		this.yearConstructed = false;
		this.construct();
		this.popDownYear();
	},
	constructYear : function() {
		this.popDownMonth();
		var s = '';
		if (!this.yearConstructed) {
// inserted by INTERSHOP for disable past also for year
			if (!this.enablePast) {
				this.nStartingYear = this.yearNow;
				s = this.disablePastForYear();
			} else {
// end of insert by INTERSHOP
				s = '<li><a href="javascript:void(0)" class="showMore onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearInterval(popCalendar.intervalID1);popCalendar.intervalID1=setInterval(\'popCalendar.decYear()\',30)" onmouseup="clearInterval(popCalendar.intervalID1)">-</a></li>';
				var j = 0;
				this.nStartingYear = this.yearSelected - 3;
				for ( var i = (this.yearSelected - 3); i <= (this.yearSelected + 3); i++) {
					var sName = i;
					if (i == this.yearSelected)
						sName = '<strong>' + sName + '</strong>';
					s += '<li><a href="javascript:void(0)" id="pcY' + j
							+ '" onclick="popCalendar.selectYear(' + j
							+ ');event.cancelBubble=true">' + sName + '</a></li>';
					j++;
				}
				s += '<li><a href="javascript:void(0)" class="showMore onmouseout="clearInterval(popCalendar.intervalID2);" onmousedown="clearInterval(popCalendar.intervalID2);popCalendar.intervalID2=setInterval(\'popCalendar.incYear()\',30)" onmouseup="clearInterval(popCalendar.intervalID2)">+</a></li>';
			}
			this.oy.innerHTML = '<ul onmouseover="clearTimeout(popCalendar.timeoutID2)" onmouseout="clearTimeout(popCalendar.timeoutID2);popCalendar.timeoutID2=setTimeout(\'popCalendar.popDownYear()\',100)">'
					+ s + '</ul>';

			this.yearConstructed = true;
		}
	},
	popDownYear : function() {
		clearInterval(this.intervalID1);
		clearTimeout(this.timeoutID1);
		clearInterval(this.intervalID2);
		clearTimeout(this.timeoutID2);
		this.oy.style.visibility = 'hidden';
		this.visYear = 0;
	},
	popUpYear : function() {
		var leftOffset;
		if (this.visYear == 1) {
			this.popDownYear();
			this.visYear--;
		} else {
			this.constructYear();
			this.oy.style.visibility = 'visible';
			leftOffset = parseInt(this.o.style.left)
					+ this.$('pcIDYear').offsetLeft;
			if (this.ie)
				leftOffset += 1;
			this.oy.style.left = leftOffset + 'px';
			this.oy.style.top = parseInt(this.o.style.top) + 19 + 'px';
			this.visYear++;
		}
	},

	WeekNbr : function(n) { // construct calendar
		// Algorithm used from Klaus Tondering's Calendar document (The Authority/Guru)
		// http://www.tondering.dk/claus/calendar.html

		if (n == null)
			n = new Date(this.yearSelected, this.monthSelected, 1);
		var year = n.getFullYear();
		var month = n.getMonth() + 1;
		if (this.startAt == 0) {
			var day = n.getDate() + 1;
		} else {
			var day = n.getDate();
		}

		var a = Math.floor((14 - month) / 12);
		var y = year + 4800 - a;
		var m = month + 12 * a - 3;
		var b = Math.floor(y / 4) - Math.floor(y / 100) + Math.floor(y / 400);
		var J = day + Math.floor((153 * m + 2) / 5) + 365 * y + b - 32045;
		var d4 = (((J + 31741 - (J % 7)) % 146097) % 36524) % 1461;
		var L = Math.floor(d4 / 1460);
		var d1 = ((d4 - L) % 365) + L;
		var week = Math.floor(d1 / 7) + 1;
		return week;
	},

	construct : function() {
		var aNumDays = Array(31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		var startDate = new Date(this.yearSelected, this.monthSelected, 1);
		var endDate;
		
		var s = '<div id="pcIDleft"><a href="javascript:void(0)" onclick="popCalendar.decMonth()" onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.StartDecMonth()\',500)" onmouseup="clearTimeout(popCalendar.timeoutID1);clearInterval(popCalendar.intervalID1)" title="'
			+ this.scrollLeftMessage[this.lg]
			+ '">&nbsp;&nbsp;&nbsp;</a></div>';
	s += '<div id="pcIDright"><a href="javascript:void(0)" onclick="popCalendar.incMonth()" onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.StartIncMonth()\',500)" onmouseup="clearTimeout(popCalendar.timeoutID1);clearInterval(popCalendar.intervalID1)" title="'
			+ this.scrollRightMessage[this.lg]
			+ '">&nbsp;&nbsp;&nbsp;</a></div>';
	s += '<div id="pcIDMonth" onclick="popCalendar.popUpMonth()" title="'
			+ this.selectMonthMessage[this.lg] + '"></div>';
	s += '<div id="pcIDYear"  onclick="popCalendar.popUpYear()" title="'
			+ this.selectYearMessage[this.lg] + '"></div><br />';
	this.$('pcIDcaption').innerHTML = s;

		if (this.monthSelected == 1) { // get days of February
			endDate = new Date(this.yearSelected, this.monthSelected + 1, 1);
			endDate = new Date(endDate - (24 * 60 * 60 * 1000));
			var numDaysInMonth = endDate.getDate();
		} else {
			var numDaysInMonth = aNumDays[this.monthSelected];
		}

		var dayPointer = startDate.getDay() - this.startAt;

		if (dayPointer < 0)
			dayPointer = 6;

		var s = '<table><thead><tr>'; // dayheader

		if (this.showWeekNumber) { // spacer for Weeknumbers
			s += '<th class="pcWeekNumber"><acronym title="'
					+ this.weekString[this.lg] + '">'
					+ this.weekShortString[this.lg] + '</acronym></th>';
		}

		for ( var i = 0; i < 7; i++) { // render daynames
			if (this.showDayLetter)
				s += '<th>'
						+ this.dayName[this.lg][(i + this.startAt) % 7]
								.charAt(0) + '</th>';
			else {
				if (((i + this.startAt) % 7 == 0)
						|| (((i + this.startAt) % 7 == 6)))
					s += '<th class="pcWeekend">'
							+ this.dayName[this.lg][(i + this.startAt) % 7]
							+ '</th>';
				else
					s += '<th>' + this.dayName[this.lg][(i + this.startAt) % 7]
							+ '</th>';
			}
		}

		s += '</tr></thead><tbody><tr>';

		if (this.showWeekNumber) {
			s += '<td class="pcWeekNumber">' + this.WeekNbr(this.startDate)
					+ '</td>';
		}

		for ( var i = 1; i <= dayPointer; i++) {
			s += '<td>&nbsp;</td>';
		}

		for ( var datePointer = 1; datePointer <= numDaysInMonth; datePointer++) {
			dayPointer++;
			var sClass = '';
			var selDayAction = '';
			var sHint = '';

			for ( var k = 0; k < this.HolidaysCounter; k++) { // insert holidays
				if ((parseInt(this.Holidays[k].d) == datePointer)
						&& (parseInt(this.Holidays[k].m) == (this.monthSelected + 1))) {
					if ((parseInt(this.Holidays[k].y) == 0)
							|| ((parseInt(this.Holidays[k].y) == this.yearSelected) && (parseInt(this.Holidays[k].y) != 0))) {
						sClass = 'pcDayHoliday ';
						sHint += sHint == "" ? this.Holidays[k].desc : "\n"
								+ this.Holidays[k].desc;
					}
				}
			}
			sHint = sHint.replace('/\"/g', '&quot;');

			if ((datePointer == this.odateSelected)
					&& (this.monthSelected == this.omonthSelected)
					&& (this.yearSelected == this.oyearSelected)) {
				sClass += 'pcDaySelected'; // selected day
			} else if ((datePointer == this.dateNow)
					&& (this.monthSelected == this.monthNow)
					&& (this.yearSelected == this.yearNow)) {
				sClass += 'pcToday'; // today
			} else if ((dayPointer % 7 == (this.startAt * -1) + 1)
					|| ((dayPointer % 7 == (this.startAt * -1) + 7 && this.startAt == 1) || (dayPointer % 7 == this.startAt && this.startAt == 0))) {
				sClass += 'pcWeekend'; // sunday
			} else {
				sClass += 'pcDay'; // every other day
			}

			if (!this.enablePast
					&& (this.yearSelected < this.yearNow
							|| (this.yearSelected == this.yearNow && this.monthSelected < this.monthNow) || (this.yearSelected == this.yearNow
							&& this.monthSelected == this.monthNow && datePointer < this.dateNow))) {
				sClass += 'Past'; // all CSS-classes with past-style are suffixed with "Past":
			} else {
				selDayAction = 'href="javascript:popCalendar.close('
						+ datePointer + ');"';
			}

			// create HTML:
			s += '<td class="' + sClass + '"><a title="' + sHint + '" '
					+ selDayAction + '>' + datePointer + '</a></td>';

			if ((dayPointer + this.startAt) % 7 == this.startAt) {
				s += '</tr>';
				if (datePointer < numDaysInMonth) {
					s += '<tr>'; // open next table row, if we are not at the and of actual month
					if (this.showWeekNumber) {
						s += '<td class="pcWeekNumber">'
								+ (this.WeekNbr(new Date(this.yearSelected,
										this.monthSelected, datePointer + 1)))
								+ '</td>';
					}
				}
			}
		}

		if (dayPointer % 7 != 0)
			s += '</tr>'; // close last opened table row

		s += '</tbody></table>';

		// show time
		if (this.dateFormat.indexOf('h') != -1) {
			s += '<div style="text-align:center" />';
			s += '<input type="text" maxlength="2" size="1" value="'
					+ this.hour
					+ '" onchange="popCalendar.setTimePart(\'h\',this.value);" />';
			s += ' : ';
			s += '<input type="text" maxlength="2" size="1" value="'
					+ this.minute
					+ '" onchange="popCalendar.setTimePart(\'i\',this.value);" />';
			s += ' : ';
			s += '<input type="text" maxlength="2" size="1" value="'
					+ this.second
					+ '" onchange="popCalendar.setTimePart(\'s\',this.value);" />';
			s += '</div>';
		}

		this.$('pcIDcontent').innerHTML = s;
		this.$('pcIDMonth').innerHTML = '<a href="javascript:void(0)">'
				+ this.monthName[this.lg][this.monthSelected] + '</a>';
		this.$('pcIDYear').innerHTML = '<a href="javascript:void(0)">'
				+ this.yearSelected + '</a>';
	},

	/**
	 * Main function, shows the calendar.
	 *
	 * @param btn    The "button" which (de-)activates the calendar
	 * @param ctl    The field to receive the selected date; element or ID-string
	 * @param format Format of the date-string;  optional; see constructDate()
	 * @param lang   Language of the calendar;   optional; (da, de, en, es, fr, it, nl, no, pl, pt)
	 * @param past   allow dates in the past;    optional; yes=true, no=false
	 * @param x      x-position of the calendar; optional; -1 for directly below btn
	 * @param y      y-position of the calendar; optional; -1 for directly below btn
	 * @param start  Start of the week;          optional; Monday=1 or Sunday=0
	 */
	show : function(btn, ctl, format, lang, past, x, y, start) {		
		if (start != null)
			this.startAt = start;
		if (lang != null && lang != '' &&
				this.formatString[lang] && this.gotoString[lang] && this.todayString[lang] && this.weekShortString[lang] &&
				this.weekString[lang] && this.scrollLeftMessage[lang] && this.scrollRightMessage[lang] && this.selectMonthMessage[lang] &&
				this.selectYearMessage[lang] && this.selectDateMessage[lang] && this.monthName[lang] && this.monthNameAbbr[lang] &&
				this.dayName[lang])
			this.lg = lang;
		if (!format)
			format = this.formatString[this.lg];
		if (!btn)
			btn = this;
		if (!ctl)
			ctl = btn;

		this.enablePast = (past != null) ? past : this.enablePast;
		this.fixedX = (x != null) ? x : -1;
		this.fixedY = (y != null) ? y : -1;
		if (this.showToday)
			this.$('pcIDfooter').innerHTML = this.todayString[this.lg]
					+ ' <a title="' + this.gotoString[this.lg]
					+ '" href="javascript:popCalendar.setToday();">'
					+ this.dayName[this.lg][(this.today.getDay()) % 7] + ', '
					+ this.dateNow + ' '
					+ this.monthNameAbbr[this.lg][this.monthNow] + ' '
					+ this.yearNow + '</a>';
		this.popUp(btn, ctl, format);
	},

	popUp : function(btn, ctl, format) {
		var formatChar = '';
		var aFormat = new Array();
		if (typeof (btn) == 'string')
			btn = this.$(btn);
		if (typeof (ctl) == 'string')
			ctl = this.$(ctl);

		if (this.bPageLoaded) {
			if (this.o.style.visibility == 'hidden') {
				this.ctlToPlaceValue = ctl;
				this.dateFormat = format || this.dateFormat;
				formatChar = ' ';
				aFormat = this.dateFormat.split(formatChar);
				if (aFormat.length < 3) {
					formatChar = '/';
					aFormat = this.dateFormat.split(formatChar);
					if (aFormat.length < 3) {
						formatChar = '.';
						aFormat = this.dateFormat.split(formatChar);
						if (aFormat.length < 3) {
							formatChar = '-';
							aFormat = this.dateFormat.split(formatChar);
							if (aFormat.length < 3) {
								formatChar = ''; // invalid date format
							}
						}
					}
				}

				var tokensChanged = 0;
				var aData;
				if (formatChar != "") {
					aData = ctl.value.split(formatChar); // use user's date

					for ( var i = 0; i < 3; i++) {
						if ((aFormat[i] == "d") || (aFormat[i] == "dd")) {
							this.dateSelected = parseInt(aData[i], 10);
							tokensChanged++;
						} else if ((aFormat[i] == "m") || (aFormat[i] == "mm")
								|| (aFormat[i] == "M") || (aFormat[i] == "MM")) {
							this.monthSelected = parseInt(aData[i], 10) - 1;
							tokensChanged++;
						} else if (aFormat[i] == "yyyy") {
							this.yearSelected = parseInt(aData[i], 10);
							tokensChanged++;
						} else if (aFormat[i] == "mmm") {
							for (j = 0; j < 12; j++) {
								if (aData[i] == this.monthName[this.lg][j]) {
									this.monthSelected = j;
									tokensChanged++;
								}
							}
						} else if (aFormat[i] == "mmmm") {
							for (j = 0; j < 12; j++) {
								if (aData[i] == this.monthNameAbbr[this.lg][j]) {
									this.monthSelected = j;
									tokensChanged++;
								}
							}
						}
					}
				}
				var TimeFormatChar = ':';
				var timeString = ctl.value.split(" ");
				if (timeString[1] != null) {
					var timeTokens = timeString[1].split(':');
					if (timeTokens[0] && timeTokens[0].length == 2) {
						this.hour = timeTokens[0];
					}
					if (timeTokens[1] && timeTokens[1].length == 2) {
						this.minute = timeTokens[1];
					}
					if (timeTokens[2] && timeTokens[2].length == 2) {
						this.second = timeTokens[2];
					}
				} else {
					this.hour = 00;
					this.minute = 00;
					this.second = 00;
				}

				if ((tokensChanged != 3) || isNaN(this.dateSelected)
						|| isNaN(this.monthSelected) || this.monthSelected < 0
						|| isNaN(this.yearSelected)) {
					this.dateSelected = this.dateNow;
					this.monthSelected = this.monthNow;
					this.yearSelected = this.yearNow;
				}

				this.odateSelected = this.dateSelected;
				this.omonthSelected = this.monthSelected;
				this.oyearSelected = this.yearSelected;

				// construct content first, so that popup height calculation will be correct
				this.construct(1, this.monthSelected, this.yearSelected);

				if (typeof jQuery != 'undefined') { // use jQuery if available
					this.calculateOverlayPosition(btn);
				} else {
					this.o.style.top = (this.fixedY == -1) ? btn.offsetTop
							+ this.getTop(btn.offsetParent) + btn.offsetHeight
							+ 2 + 'px' : this.fixedY + 'px';
					this.o.style.left = (this.fixedX == -1) ? btn.offsetLeft
							+ this.getLeft(btn.offsetParent) + 'px'
							: this.fixedX + 'px';
				}

				this.o.style.visibility = "visible";
				if (this.hideElements) {
					this.hideElement('SELECT', this.$('pcIDcalendar'));
					this.hideElement('APPLET', this.$('pcIDcalendar'));
				}
				this.bShow = true;
			} else {
				popCalendar.hide();
				if (this.ctlNow != btn)
					this.popUp(btn, ctl, format);
			}
			this.ctlNow = btn;
		}
	},
	/**
	 * position overlay to an element, adjust position so it its completly visible 
	 */
	calculateOverlayPosition: function (btn) {
		// place popup near button
        var doc = document.documentElement, body = document.body,
            scrollX = doc.scrollLeft || body.scrollLeft,
            scrollY = doc.scrollTop || body.scrollTop,
            viewportWidth = (doc.clientWidth || window.innerWidth),
            viewportHeight = (doc.clientHeight || window.innerHeight),
            viewportRightEdge = viewportWidth + scrollX,
            viewportBottomEdge = viewportHeight + scrollY,
            overlay = $(this.o),
            popupWidth = overlay.outerWidth(),
            popupHeight = overlay.outerHeight(),
            button = $(btn),
            popupLeft = buttonLeft = button.offset().left,
            popupTop = buttonTop = button.offset().top + button.outerHeight();

		// check if parts of the popup are displayed offscreen
        if (buttonLeft + popupWidth >= viewportRightEdge) {
            // move popup to the left to make it visible
            popupLeft = viewportRightEdge - popupWidth;
        }
		if (buttonTop + popupHeight >= viewportBottomEdge) {
            if((buttonTop - scrollY) - popupHeight > 0) {
            	// show popup above button
            	popupTop -= button.outerHeight() + popupHeight;	
            } else {
            	// show popup on same height as button
            	popupTop = viewportBottomEdge - popupHeight;
            	
            	// attach to button, don't overlay if possible
            	var neededSpace = button.outerWidth() + popupWidth,
            		availableSpace = viewportRightEdge - buttonLeft,
            		spaceRemaining = availableSpace - neededSpace,
            		toLeft = spaceRemaining < 0 ? -spaceRemaining : 0;
        		popupLeft = buttonLeft + button.outerWidth() - toLeft;
            }
        }
		if(popupWidth > viewportWidth) {
			popupLeft = scrollX;
		}
		if(popupHeight > viewportHeight) {
			popupTop = scrollY;
		}

        overlay.css({
            left: (this.fixedX == -1) ? popupLeft : this.fixedX,
            top: (this.fixedY == -1) ? popupTop : this.fixedY
        });
	},
	
	/**
	 * for !enablePast start dropDown of year with actual year and remove showMore buttons (+/-)
	 * function inserted by INTERSHOP 
	 */
	disablePastForYear: function () {
		var s ='';
		var j = 0;
		for ( var i = this.nStartingYear; i <= (this.nStartingYear + 6); i++) {
			var sName = i;
			if (i === this.yearSelected)
				sName = '<strong>' + sName + '</strong>';
			if (!this.enablePast && (i < this.yearNow)) {
				s += '<li><span id="pcY' + j + '" class="pcYearPast">' + sName + '</span></li>';
			} else {
				s += '<li><a href="javascript:void(0)" id="pcY' + j
						+ '" onclick="popCalendar.selectYear(' + j
						+ ');event.cancelBubble=true">' + sName + '</a></li>';
			}
			j++;
		};
		return s;
	}
}

if (typeof jQuery !== 'undefined') {
	$(function () {
		popCalendar.init();
	});
}
else {
	popCalendar.init();
}
