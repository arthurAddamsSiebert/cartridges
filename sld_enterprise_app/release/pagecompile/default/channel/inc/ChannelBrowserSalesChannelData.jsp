<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%setEncodingType("application/json"); %>
, "aAttr": {
"href": '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelMapChannel_52-Information",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("channel:ID"),null)))),null)%>',
"title": "<% {out.write(localizeISText("channel.type.52","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"class": "application-type-intershop_B2CBackoffice",
"target": "_parent"
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("channel:Applications") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
, "children": [
<% while (loop("channel:Applications","Application",null)) { %>
{
"title": "<% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"open": true,
"liAttr": {
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("Application:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
}
, "aAttr": {
"href": '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelMapApplication-Information",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("channel:ID"),null))).addURLParameter(context.getFormattedValue("ApplicationID",null),context.getFormattedValue(getObject("Application:ID"),null))),null)%>',
"title": "<% {out.write(localizeISText("channel.type.app","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"class": 'application-type-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Application:ApplicationType:ID"),null),(String)("\\."),(String)("_")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
"target": "_parent"
}
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Application") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>,<% } %><% } %>
]
<% } %><% printFooter(out); %>