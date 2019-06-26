<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.request.Request"%><%@page import="com.intershop.beehive.core.capi.template.TemplateIdentifier"%><%@page import="com.intershop.beehive.core.capi.template.TemplateMgr"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%
	 boolean exists = false;
	 String id = (String)getObject("includename");
	 if (id!=null && id.trim().length() > 0)
	 {
	 	TemplateMgr tmgr = (TemplateMgr)NamingMgr.getInstance().lookupManager(TemplateMgr.REGISTRY_NAME);
	 	TemplateIdentifier tid = new TemplateIdentifier(id);
	 	exists = tmgr.validateTemplateIdentifier(tid);
	 }
	 getPipelineDictionary().put("IncludeIsSafe", exists);
	 if (!exists) Logger.error(this, "Safe template include failed for template '{}'", id);
%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncludeIsSafe"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("includename"),null), null, "18");} %><% } %><% printFooter(out); %>