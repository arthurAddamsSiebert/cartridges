<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.user.capi.UserBO"%>
<%@page import="com.intershop.component.customer.capi.ApplicationBOCustomerExtension"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>
<%@page import="com.intershop.beehive.app.capi.AppContext"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	//take the ApplicationBO
	AppContext appContext = AppContextUtil.getCurrentAppContext();
	ApplicationBO applicationBO = appContext.getVariable(ApplicationBO.CURRENT);
	if (applicationBO == null)
	{
	    throw new IllegalStateException("ApplicationBO not available.");
	}

	//The extension that takes the current user/customer
	ApplicationBOCustomerExtension customerExt = applicationBO.getExtension(ApplicationBOCustomerExtension.EXTENSION_ID);
	
	UserBO currentUserBO = customerExt.getCurrentUserBO();
	
	getPipelineDictionary().put("currentuserbo", currentUserBO);
%><% printFooter(out); %>