<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="java.util.Arrays"%>
<%@page import="com.intershop.beehive.core.capi.request.Request"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%>
<%@page import="com.intershop.component.product.validation.capi.config.ValidationRuleConfigurationBO"%>
<%@page import="com.intershop.beehive.core.capi.request.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleMgr"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("application/json"); %><%
	Collection<String> uuids = new ArrayList<String>();
	Session currentSession = (Session) getPipelineDictionary().get("CurrentSession");
	ValidationRuleConfigurationBO validationRuleConfigurationBO = (ValidationRuleConfigurationBO) getPipelineDictionary().get("ValidationRuleConfigurationBO");
%>
{
"AssignedToAllImages" : [
"<% {String value = null;try{value=context.getFormattedValue(getObject("ValidationRuleConfigurationBO:Configuration:String(\"AssignedToAllImages\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
],
"AssignedToOneImage" : [
"<% {String value = null;try{value=context.getFormattedValue(getObject("ValidationRuleConfigurationBO:Configuration:String(\"AssignedToOneImage\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
]
}<% printFooter(out); %>