<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%setEncodingType("application/json"); %><% {Object temp_obj = (getObject("channel:Extension(\"PartnerChannel\")")); getPipelineDictionary().put("PartnerChannel", temp_obj);} %>
, "aAttr": {
"href": '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelMapChannel_32-Information",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("channel:ID"),null)))),null)%>',
"title": "<% {out.write(localizeISText("channel.type.32","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"class": "application-type-intershop_PartnerBackoffice",
"target": "_parent"
}
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PartnerChannel")))).booleanValue() && ((Boolean) (hasLoopElements("PartnerChannel:PartnerOrganizationBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
, "children": [
<% while (loop("PartnerChannel:PartnerOrganizationBOs","Partner",null)) { %>
{
"title": "<% {String value = null;try{value=context.getFormattedValue(getObject("Partner:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"open": false,
"liAttr": {
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("Partner:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
}
, "aAttr": {
"title": "<% {out.write(localizeISText("channel.type.org","",null,null,null,null,null,null,null,null,null,null,null));} %>",
"class": "application-type-intershop_EnterpriseBackoffice",
"target": "_parent"
}
<% {Object temp_obj = (getObject("Partner:Extension(\"OrganizationChannel\")")); getPipelineDictionary().put("PartnerOrgChannel", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PartnerOrgChannel:ChannelBORepository:ChannelBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
, "children": [
<% while (loop("PartnerOrgChannel:ChannelBORepository:ChannelBOs","SubChannel",null)) { %>
{
"title": "<% {String value = null;try{value=context.getFormattedValue(getObject("SubChannel:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
"open": true,
"liAttr": {
"id": "<% {String value = null;try{value=context.getFormattedValue(getObject("SubChannel:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SubChannel:Extension(\"SalesChannel\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "channelbrowsersaleschanneldata", new TagParameter[] {
new TagParameter("channel",getObject("SubChannel"))}, 36); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SubChannel:Extension(\"PartnerChannel\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "channelbrowserpartnerchanneldata", new TagParameter[] {
new TagParameter("channel",getObject("SubChannel"))}, 38); %> 
<% }} %>
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SubChannel") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>,<% } %><% } %>
]
<% } %> 
}
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Partner") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>,<% } %><% } %>
]
<% } %><% printFooter(out); %>