<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken.isml", null, "2");} %>
<script type="text/javascript">
/**
 * Based on OWASP CSRFGuard 3.0.0.503. See https://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project.
 */

/**
 * The OWASP CSRFGuard Project, BSD License
 * Eric Sheridan (eric.sheridan@owasp.org), Copyright (c) 2011 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *    1. Redistributions of source code must retain the above copyright notice,
 *       this list of conditions and the following disclaimer.
 *    2. Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *    3. Neither the name of OWASP nor the names of its contributors may be used
 *       to endorse or promote products derived from this software without specific
 *       prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
var CSRFGuard = (function() {	
	var TOKEN_NAME = "SynchronizerToken";
	
	/** string utility functions * */
	String.prototype.startsWith = function(prefix) {
		return this.indexOf(prefix) === 0;
	}

	String.prototype.endsWith = function(suffix) {
		return this.match(suffix+"$") === suffix;
	};

	/** hook using standards based prototype * */
	function hijackStandard() {
		XMLHttpRequest.prototype._open = XMLHttpRequest.prototype.open;
		XMLHttpRequest.prototype.open = function(method, url, async, user, pass) {
			this.url = url;
			
			this._open.apply(this, arguments);
		}
		
		XMLHttpRequest.prototype._send = XMLHttpRequest.prototype.send;
		XMLHttpRequest.prototype.send = function(data) {
			if(this.onsend != null) {
				this.onsend.apply(this, arguments);
			}
			
			this._send.apply(this, arguments);
		}
	}

	/** ie does not properly support prototype - wrap completely * */
	function hijackExplorer() {
		var _XMLHttpRequest = window.XMLHttpRequest;
		
		function alloc_XMLHttpRequest() {
			this.base = _XMLHttpRequest ? new _XMLHttpRequest : new window.ActiveXObject("Microsoft.XMLHTTP");
		}
		
		function init_XMLHttpRequest() {
			return new alloc_XMLHttpRequest;
		}
		
		init_XMLHttpRequest.prototype = alloc_XMLHttpRequest.prototype;
		
		/** constants * */
		init_XMLHttpRequest.UNSENT = 0;
		init_XMLHttpRequest.OPENED = 1;
		init_XMLHttpRequest.HEADERS_RECEIVED = 2;
		init_XMLHttpRequest.LOADING = 3;
		init_XMLHttpRequest.DONE = 4;
		
		/** properties * */
		init_XMLHttpRequest.prototype.status = 0;
		init_XMLHttpRequest.prototype.statusText = "";
		init_XMLHttpRequest.prototype.readyState = init_XMLHttpRequest.UNSENT;
		init_XMLHttpRequest.prototype.responseText = "";
		init_XMLHttpRequest.prototype.responseXML = null;
		init_XMLHttpRequest.prototype.onsend = null;
		
		init_XMLHttpRequest.url = null;
		init_XMLHttpRequest.onreadystatechange = null;

		/** methods * */
		init_XMLHttpRequest.prototype.open = function(method, url, async, user, pass) {
			var self = this;
			this.url = url;
			
			this.base.open(method, url, async, user, pass);
			
			this.base.onreadystatechange = function() {
				try { self.status = self.base.status; } catch (e) { }
				try { self.statusText = self.base.statusText; } catch (e) { }
				try { self.readyState = self.base.readyState; } catch (e) { }
				try { self.responseText = self.base.responseText; } catch(e) { }
				try { self.responseXML = self.base.responseXML; } catch(e) { }
				
				if(self.onreadystatechange != null) {
					self.onreadystatechange.apply(this, arguments);
				}
			}
		}
		
		init_XMLHttpRequest.prototype.send = function(data) {
			if(this.onsend != null) {
				this.onsend.apply(this, arguments);
			}
			
			this.base.send(data);
		}
		
		init_XMLHttpRequest.prototype.abort = function() {
			this.base.abort();
		}
		
		init_XMLHttpRequest.prototype.getAllResponseHeaders = function() {
			return this.base.getAllResponseHeaders();
		}
		
		init_XMLHttpRequest.prototype.getResponseHeader = function(name) {
			return this.base.getResponseHeader(name);
		}
		
		init_XMLHttpRequest.prototype.setRequestHeader = function(name, value) {
			return this.base.setRequestHeader(name, value);
		}
		
		/** hook * */
		window.XMLHttpRequest = init_XMLHttpRequest;
	}

	/** check if valid domain based on domainStrict * */
	function isValidDomain(current, target) {
		var result = false;
		
		/** check exact or subdomain match * */
		if(current === target) {
			result = true;
		} else /* if(%DOMAIN_STRICT% === false) */ {
			if(target.charAt(0) === '.') {
				result = current.endsWith(target);
			} else {
				result = current.endsWith('.' + target);
			}
		}
		
		return result;
	}

	/** determine if uri/url points to valid domain * */
	function isValidUrl(src) {
		var result = false;
		
		/** parse out domain to make sure it points to our own * */
		if(src.substring(0, 7) === "http://" || src.substring(0, 8) === "https://") {
			var token = "://";
			var index = src.indexOf(token);
			var part = src.substring(index + token.length);
			var domain = "";
			
			/** parse up to end, first slash, or anchor * */
			for(i=0; i<part.length; i++) {
				var character = part.charAt(i);
				
				if(character === '/' || character === ':' || character === '<%=context.getFormattedValue("#",null)%>') {
					break;
				} else {
					domain += character;
				}
			}
			
			result = isValidDomain(document.domain, domain);
			/** explicitly skip anchors * */
		} else if(src.charAt(0) === '<%=context.getFormattedValue("#",null)%>') {
			result = false;
			/** ensure it is a local resource without a protocol * */
		} else if(!src.startsWith("//") && (src.charAt(0) === '/' || src.indexOf(':') === -1)) {
			result = true;
		}
		
		return result;
	}

	/** parse uri from url * */
	function parseUri(url) {
		var uri = "";
		var token = "://";
		var index = url.indexOf(token);
		var part = "";
		
		/**
		 * ensure to skip protocol and prepend context path for non-qualified
		 * resources (ex: "protect.html" vs
		 * "/Owasp.CsrfGuard.Test/protect.html").
		 */
		if(index > 0) {
			part = url.substring(index + token.length);
/*		} else if(url.charAt(0) != '/') {
			part = "%CONTEXT_PATH%/" + url;*/
		} else {
			part = url;
		}
		
		/** parse up to end or query string * */
		var uriContext = (index === -1);
		
		for(var i=0; i<part.length; i++) {
			var character = part.charAt(i);
			
			if(character === '/') {
				uriContext = true;
			} else if(uriContext === true && (character === '?' || character === '<%=context.getFormattedValue("#",null)%>')) {
				uriContext = false;
				break;
			}
			
			if(uriContext === true) {
				uri += character;
			}
		}
		
		return uri;
	}

	/** inject tokens as hidden fields into forms * */
	function injectTokenForm(form, tokenName, tokenValue) {
		
		if (form.elements[tokenName])
		{
			console.log( "CSRFGuard: Skipping injection into form ", form, " (name: ",
					form.getAttribute("name"), ") because it already exists");
			return;			
		}
		var action = form.getAttribute("action");
		
		if(action != null && isValidUrl(action)) {
			var uri = parseUri(action);
			var hidden = document.createElement("input");
			
			hidden.setAttribute("type", "hidden");
			hidden.setAttribute("name", tokenName);
			hidden.setAttribute("value", tokenValue);
			//add handler for reset button in IE version 8 (reset also clears hidden input fields)
				if (navigator.appName === "Microsoft Internet Explorer") {
					//check IE version
					var ua = navigator.userAgent;
				    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
				    if (re.exec(ua) != null) {
				    	ver = parseFloat( RegExp.$1 );
				    }
				    //apply fix only for IE 8
				    if ( ver == 8.0 ) { 
						//added to restore value in case of reset button is triggered in  IE version 8					
						hidden.setAttribute("data-value", tokenValue);
						
						//add reset listener	
						if (typeof console != "undefined") {
							console.log("CSRFGuard: Added reset event handler to ", form);
						}	
						form.attachEvent('onreset', 	
								
							//get value from data-value and store it as value
							function() {
								// applying timeout, because onreset is fired before resetting is finished
								setTimeout(function () {
									hidden.setAttribute("value", hidden.getAttribute("data-value"));							
								}, 1);
							}
						);
				    }
				}
				
			
			form.insertBefore(hidden, form.firstChild);
			
			if (typeof console != "undefined") {
			console.log("CSRFGuard: Injected synchronizer token into form ", form, " (name: ",
					form.getAttribute("name"), ")");
			}
		}
	}

	/** Inject CSRF synchronizer tokens throughout scope or if no scope is given throughout
	 *  the document. **/
	function injectTokens(tokenName, tokenValue, scope) {		
		/** iterate over all elements and injection token * */
						
		var forms;	
		if (scope) {
			if (scope.tagName.toLowerCase() === 'form') {
				// scope is a form itself and since forms may not be nested, this is the only form
				forms = [scope];
			} else {
				forms = scope.getElementsByTagName('form');
			}
		} else {
			forms = document.getElementsByTagName('form');			
		}
				
		var len = forms.length;
		
		for(var i=0; i<len; i++) {								
			injectTokenForm(forms[i], tokenName, tokenValue);			
		}
	}

	/**
	 * Only inject the tokens if the JavaScript was referenced from HTML that
	 * was served by us. Otherwise, the code was referenced from malicious HTML
	 * which may be trying to steal tokens using JavaScript hijacking
	 * techniques.
	 */
	//if(isValidDomain(document.domain, "%DOMAIN_ORIGIN%")) {
		/** optionally include Ajax support * */
		if(navigator.appName === "Microsoft Internet Explorer") {
			hijackExplorer();
		} else {
			hijackStandard();
		}
		
		XMLHttpRequest.prototype.onsend = function(data) {
			if(isValidUrl(this.url)) {			
				this.setRequestHeader(TOKEN_NAME, SYNCHRONIZER_TOKEN_VALUE);
			}
		};
		
		/** update nodes in DOM after load **/
		var ready = (function() {
			var called = false;
			return function() {
				// ready() should only be called once
				if (called) return;
				called = true;
				
				if (typeof console != "undefined") {
					console.log("CSRFGuard: Injecting synchronizer tokens upon page load.");
				}
				
				injectTokens(TOKEN_NAME, SYNCHRONIZER_TOKEN_VALUE);
				
				if (typeof console != "undefined") {
					console.log("CSRFGuard: Finished injecting synchronizer tokens upon page load.");
				}
				
				if (typeof jQuery != 'undefined') {
					var proxied = jQuery.fn.html;
					jQuery.fn.html = function() {					
						if (arguments.length === 0) {
							// do not inject tokens if the function is used for getting the HTML content
							return proxied.apply(this, arguments);
						}
							
						var result = proxied.apply(this, arguments);
						
						this.each(function(index, value) {					
							injectTokens(TOKEN_NAME, SYNCHRONIZER_TOKEN_VALUE, value);
						});
						
						return result;										
					};
			    }
			};
		})();

		 
		// detach event listeners, run ready()
		var DOMContentLoaded = function() {
			if (document.addEventListener) {
				document.removeEventListener('DOMContentLoaded', DOMContentLoaded, false);
				ready();
			} else if (document.readyState === 'complete') {
				document.detachEvent('onreadystatechange', DOMContentLoaded);
				ready();
			}
		};
		// attach event listeners
		if (document.readyState === 'complete') {
			window.setTimeout(ready, 1);
		} else if (document.addEventListener) {
			document.addEventListener('DOMContentLoaded', DOMContentLoaded, false);
			window.addEventListener('load', ready, false);
		} else {
			document.attachEvent('onreadystatechange', DOMContentLoaded);
			window.attachEvent('onload', ready);
		}
	//}
		
	/**
	 * Submits a POST request based on the href-attribute of a link. The POST
	 * request includes the synchronizer token.
	 * This can be used to turn links (GET-requests) that cannot carry the
	 * synchronizer token to forms (POST-requests) with a valid synchronizer token.
	 */
	function triggerLinkAsPostRequestWithToken(tokenName, tokenValue, link) {
	    var form = document.createElement("form");
	    form.setAttribute("method", "post");
	    form.setAttribute("action", link.href);	    
	    injectTokenForm(form, tokenName, tokenValue);	    
	    document.body.appendChild(form);
	    form.submit();
	}
		
    // expose public functions
	return {
		'injectTokens': function(scope) {
			injectTokens(TOKEN_NAME, SYNCHRONIZER_TOKEN_VALUE, scope);
		},
		'triggerLinkAsPostRequestWithToken': function(link) {
			triggerLinkAsPostRequestWithToken(TOKEN_NAME, SYNCHRONIZER_TOKEN_VALUE, link);
		}
	};
}) ();
</script><% printFooter(out); %>