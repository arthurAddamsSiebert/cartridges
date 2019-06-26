<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%setEncodingType("application/json"); %><% context.setCustomTagTemplateName("channelbrowsersaleschanneldata","channel/inc/ChannelBrowserSalesChannelData.isml",true,new String[]{"channel"},null); %><% context.setCustomTagTemplateName("channelbrowserpartnerchanneldata","channel/inc/ChannelBrowserPartnerChannelData.isml",true,new String[]{"channel"},null); %><% {Object temp_obj = (getObject("params:Organization:Extension(\"OrganizationChannel\")")); getPipelineDictionary().put("OrganizationChannel", temp_obj);} %>
{
"title": "<% {String value = null;try{value=context.getFormattedValue(getObject("params:Organization:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"open": true,
"liAttr": {
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("params:Organization:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
},
"aAttr": {
"title": "<% {out.write(localizeISText("channel.type.org","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"class": "application-type-intershop_EnterpriseBackoffice",
"target": "_parent"
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrganizationChannel:ChannelBORepository:ChannelBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
,
"children": [
<% while (loop("OrganizationChannel:ChannelBORepository:ChannelBOs","Channel",null)) { %>
{
"title": "<% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"open": true,
"liAttr": {
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("Channel:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Channel:Extension(\"SalesChannel\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "channelbrowsersaleschanneldata", new TagParameter[] {
new TagParameter("channel",getObject("Channel"))}, 50); %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Channel:Extension(\"PartnerChannel\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "channelbrowserpartnerchanneldata", new TagParameter[] {
new TagParameter("channel",getObject("Channel"))}, 52); %> 
<% }} %>
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Channel") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>,<% } %><% } %>
]
<% } %>
}
<% printFooter(out); %>