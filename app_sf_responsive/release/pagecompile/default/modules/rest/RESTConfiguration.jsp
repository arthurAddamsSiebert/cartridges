<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "getcurrentdomain", new TagParameter[] {
new TagParameter("CurrentDomain","CurrentDomain")}, 4); %><% processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 5); %><% {try{executePipeline("ProcessRESTConfiguration-GetProperties",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentRequest",getObject("CurrentRequest")))).addParameter(new ParameterEntry("CurrentDomain",getObject("CurrentDomain")))))),"properties");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} %><% {try{executePipeline("ProcessRESTConfiguration-CreateToken",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentUser",getObject("CurrentUser"))))))),"token");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 11.",e);}} %><% out.print(context.prepareWAPlacement("JS_head")); %><script type="text/javascript">
if (typeof RESTConfiguration === 'undefined')
{
var RESTConfiguration = {}
RESTConfigurationClass = function() {
var http = location.protocol.concat("//").concat(window.location.hostname);
this.AuthenticationToken = null;
this.BusinessPartnerNo = null;
this.CustomerNo = null;
this.Login = null;
this.WebServerSecureURL = null;
this.WebServerURL = null;
this.URLMappingRESTWebadapter = null;
this.URLMappingPipelineWebadapter = null;
this.Domain = null;
this.ServerGroup = null;
this.URLIdentifier = null;
this.LocaleID = null;
this.CurrencyCode = null;
this.CustomerTypeID = null;
this.URLMappingStaticWebadapter = null;
};
RESTConfigurationClass.prototype = {
get: function(index) {
return this[index];
},
set: function(index, value) {
this[index] = value;
},
getCurrentHost: function() {
return window.location.origin;
},
getWebUrl: function() {
return this.getCurrentHost() + this.URLMappingPipelineWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.LocaleID + '/' + this.URLIdentifier + '/' + this.CurrencyCode + '/';
},
getRESTUrl: function() {
return this.getCurrentHost() + this.URLMappingRESTWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.URLIdentifier;
},
getBaseRESTUrl: function() {
return this.getCurrentHost() + this.URLMappingRESTWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/-/';
},
getStaticUrl: function() {
return this.URLMappingStaticWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.URLIdentifier + '/-/' + this.LocaleID + '/';
},
getRESTClientHost: function() {
return this.URLMappingRESTWebadapter + '/' + this.ServerGroup;
},
getRESTClientPrefix: function() {
return this.Domain + '/' + this.URLIdentifier;
},
getAuthenticationToken: function() {
return this.AuthenticationToken;
},
getCustomerUrlPart: function(accountAdmin) {
if (this.CustomerTypeID === 'PRIVATE' || accountAdmin === true) {
return 'customers/' + this.CustomerNo;
}else{
return 'customers/' + this.CustomerNo + '/users/' + this.Login;
}
},
getLocale: function(rewrite) {
if (typeof rewrite === 'undefined') {
return this.LocaleID;
}else{
return this.LocaleID.replace('_','-');
}
},
getLang: function() {
return this.LocaleID.split('_')[0];
},
getLocalizationsUrl: function(id) {
if (typeof id !== 'undefined' && typeof id === 'string') {
return this.getStaticUrl() + 'js/localizations/' + id + '-' + RESTConfiguration.LocaleID + '.json'
}
return this.getStaticUrl() + 'js/localizations/'
},
getLocalizationProperties: function(topic, locale) {
if (typeof locale === 'undefined') {
var locale = this.getLocale();
}
var promise = $.getJSON(this.getWebUrl() + 'ViewLocalization-Get?topic='+topic+'&locale='+locale).then(function(data) {
var localizationProperties = {};
localizationProperties[RESTConfiguration.getLocale()] = data;
return localizationProperties;
});
return promise;
}
};
};
RESTConfiguration = new RESTConfigurationClass();
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("token:Token"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
RESTConfiguration.set('AuthenticationToken', '<% {String value = null;try{value=context.getFormattedValue(getObject("token:Token:Token"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";out.write(value);} %>');
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUser:Profile:BusinessPartnerNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>
RESTConfiguration.set('BusinessPartnerNo', '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUser:Profile:Credentials:Login"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>
RESTConfiguration.set('Login', '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO:CustomerNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>
RESTConfiguration.set('CustomerNo', '<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:WebServerSecureURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
RESTConfiguration.set('WebServerSecureURL', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:WebServerSecureURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:WebServerURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
RESTConfiguration.set('WebServerURL', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:WebServerURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingRESTWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>
RESTConfiguration.set('URLMappingRESTWebadapter', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingRESTWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingPipelineWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
RESTConfiguration.set('URLMappingPipelineWebadapter', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingPipelineWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>
RESTConfiguration.set('Domain', '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDomain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:ServerGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
RESTConfiguration.set('ServerGroup', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:ServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
RESTConfiguration.set('URLIdentifier', '<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationBO:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentRequest"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>
RESTConfiguration.set('LocaleID', '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentRequest"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>
RESTConfiguration.set('CurrencyCode', '<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO:CustomerType:CustomerTypeID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>
RESTConfiguration.set('CustomerTypeID', '<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingStaticWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
RESTConfiguration.set('URLMappingStaticWebadapter', '<% {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingStaticWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";out.write(value);} %>')
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:AccountingJSMoneyFormats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
RESTConfiguration.set("MoneyFormat", {
<% while (loop("properties:AccountingJSMoneyFormats:EntrySet","Entry",null)) { %>
"<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";out.write(value);} %>": <% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>,<% } %><% } %>
});
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:ISMLDatePatterns"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %>
RESTConfiguration.set("DateFormat", {
<% while (loop("properties:ISMLDatePatterns:EntrySet","Entry",null)) { %>
"<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";out.write(value);} %>": "<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>,<% } %><% } %>
});
<% } %></script><% out.print("</waplacement>"); %><% printFooter(out); %>