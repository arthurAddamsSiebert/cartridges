<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.sellside.pmc.capi.rendering.pipeline.ApplicationBOPageletPipelineExecutor"%>
<%@page import="com.intershop.beehive.app.capi.AppContext"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
	ApplicationBOPageletPipelineExecutor ext = applicationBO.getExtension(ApplicationBOPageletPipelineExecutor.class);
	if (ext != null)
	{
	    getPipelineDictionary().put("PageletPipelineExecutor", ext);
	}
%><% printFooter(out); %>