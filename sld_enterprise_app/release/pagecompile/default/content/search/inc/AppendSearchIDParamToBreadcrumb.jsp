<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.url.URLBuilder"%><%@page import="com.intershop.component.foundation.capi.application.ApplicationState"%><%@page import="com.intershop.component.foundation.capi.application.Breadcrumb"%><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("false",null).equals(context.getFormattedValue(getObject("AppendSearchIDParamToBreadcrumb"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><%
	PipelineDictionary pipelineDictionary = getPipelineDictionary();
	Breadcrumb lastBreadcrumb = (Breadcrumb)pipelineDictionary.get("ApplicationState:LastBreadcrumb");
	if (lastBreadcrumb != null)
	{
		String oldLink = lastBreadcrumb.getLink();
		if (!oldLink.contains("UniquePageletSearchID="))
		{  // parameter still missing in link, so append it
			URLBuilder urlBuilder = new URLBuilder().setUrl(lastBreadcrumb.getLink())
				.addParameter("UniquePageletSearchID", (String)pipelineDictionary.get("uniqueid"));
			Breadcrumb newBreadcrumb = new Breadcrumb(lastBreadcrumb.getID(), urlBuilder.toString(), lastBreadcrumb.getText());
			newBreadcrumb.setIsListView(lastBreadcrumb.isListView());
			newBreadcrumb.setIsWizard(lastBreadcrumb.isWizard());
			ApplicationState appState = (ApplicationState)pipelineDictionary.get("ApplicationState");
			appState.removeBreadcrumb(lastBreadcrumb);
			appState.addBreadcrumb(newBreadcrumb);
		}
	}
 %><% } %><% printFooter(out); %>