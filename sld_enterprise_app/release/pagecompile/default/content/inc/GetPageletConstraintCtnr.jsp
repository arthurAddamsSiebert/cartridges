<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.pmc.capi.pagelet.PlaceholderDefinition"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.PageletEntryPoint"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "4");} %><% processOpenTag(response, pageContext, "pageletconstraints", new TagParameter[] {
new TagParameter("PageletConstraints","PageletConstraints")}, 5); %><% 
	Object contextObject = getObject("ContextObject");
		 
	if (contextObject instanceof PageletEntryPoint)
	{
%><% {Object temp_obj = (getObject("PageletConstraints:PageletConstraintCtnrByPageletEntryPoint(ContentRepository:RepositoryDomain,ContextObject,PageletModelRepository)")); getPipelineDictionary().put("PageletConstraintCtnr", temp_obj);} %><% 
	}
	else if (contextObject instanceof PlaceholderDefinition)
	{
%><% {Object temp_obj = (getObject("PageletConstraints:PageletConstrainCtnrByPlaceholderDefinition(ContentRepository:RepositoryDomain,ContextObject,PageletModelRepository)")); getPipelineDictionary().put("PageletConstraintCtnr", temp_obj);} %><% 	    
	}
%><% printFooter(out); %>