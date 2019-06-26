
/*****************************************************************************
 *
 * Copyright (c) 2003-2004 Kupu Contributors. All rights reserved.
 *
 * This software is distributed under the terms of the Kupu
 * License. See LICENSE.txt for license text. For a list of Kupu
 * Contributors see CREDITS.txt.
 *
 *****************************************************************************/

// $Id$

function StartKupu(organization, url, contextTemplateName) {
   
	this.organization = organization;
	this.url = url;
	this.contextTemplateName=contextTemplateName;
	
	this.getInnerText = function(text, tagName){
		tagName = tagName.toLowerCase();
		var startTag = "<"+tagName+">";
		var endTag = "</"+tagName+">";
		var start = text.indexOf(startTag);
		if (start < 0) 
			start = text.indexOf(startTag.toUpperCase());
		if (start < 0 ) {
			alert("The content contains no "+startTag+"-element");
			window.close();
		}
		var end = text.indexOf(endTag);
		if (end < 0) 
			end = text.indexOf(endTag.toUpperCase());
		if (end < 0 ) {
			alert("The content contains no closing "+startTag+"-element");
			window.close();
		}
		return text.substring(start+startTag.length,end);
	}
	
    this.handleStart = function(request, kupu){
			if(request.readyState == 4) {
				var htmltext="";
				var xhtmldoc = Sarissa.getDomDocument();
				var head = this.getInnerText(request.responseText,"head");
				var body = this.getInnerText(request.responseText,"body");
				/*var doc = kupu.getInnerDocument();
				var newBody = doc.createElement("body");
				newBody.innerHTML = body;
				var mediafilter = new ReverseMediaObjectFilter();
				mediafilter.initialize(kupu);
				mediafilter.filter(xhtmldoc, newBody);*/
				htmltext = "<html><head>"+head+"</head><body>"+body+"</body></html>";
				kupu.getInnerDocument().open();
				kupu.getInnerDocument().write(htmltext);
				kupu.getInnerDocument().close();
				window.setTimeout(
					new ContextFixer(
						this._initFirefox, 
						this, kupu).execute,
					1);					

			}		    

    }
    
    this._initFirefox = function(kupu) {
    	if (kupu.getInnerDocument().getElementById('kupu-editable')==null)
			window.setTimeout(
				new ContextFixer(
					this._initFirefox, 
					this, kupu).execute,
				1);					
		else {	
		/////////////////////////
		var xhtmldoc = Sarissa.getDomDocument();
				var mediafilter = new ReverseMediaObjectFilter();
				mediafilter.initialize(kupu);
				mediafilter.filter(xhtmldoc, kupu.getInnerDocument());		
		//////////////////////////////
			kupu.initialize();
			var tool = kupu.getTool('contextchoosertool');
			tool.setCurrentContextTemplateName(this.contextTemplateName);
		}
    }
    
    this.getKupu = function(){
        var frame = document.getElementById('kupu-editor'); 
	    var kupu = initKupu(frame, organization);
		var xmlhttp = Sarissa.getXmlHttpRequest();
		xmlhttp.open("GET",url , true);
		var call = new ContextFixer(this.handleStart,this,xmlhttp,kupu);
		xmlhttp.onreadystatechange = call.execute;
		xmlhttp.send(null);
	    return kupu;
    };
};
