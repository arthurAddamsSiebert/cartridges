<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import = "com.intershop.component.foundation.capi.application.Breadcrumb"%><%@page import = "com.intershop.component.foundation.capi.application.ApplicationState"%><%@page import = "com.intershop.beehive.core.capi.request.Session"%><%
	PipelineDictionary dict = getPipelineDictionary();

	String link = (String)dict.get("link");
	String text = (String)dict.get("text");
	if (dict.get("text1")!=null)
	{
	    text = text + (String)dict.get("text1");
	}
	String id = (String)dict.get("id");
	String start = (String)dict.get("start");
	String wizard = (String)dict.get("wizard");
	String removewizard = (String)dict.get("removewizard");
	String listview = (String)dict.get("listview");

	Breadcrumb breadcrumb = new Breadcrumb(id,link,text);

	if ("true".equals(wizard))
	{
		breadcrumb.setIsWizard(true);
	}
	if ("true".equals(listview))
	{
		breadcrumb.setIsListView(true);
	}

	ApplicationState appState = (ApplicationState)dict.get("ApplicationState");
	if (appState==null)
	{
		Session s=(Session)dict.get("CurrentSession");
		appState = (ApplicationState)s.getObject("ApplicationState");

		if (appState==null)
		{
			appState = new ApplicationState();
            s.putObject("ApplicationState", appState);
		}
		dict.put("ApplicationState",appState);
	}

	if ("true".equals(removewizard))
	{
		Breadcrumb firstWizardPage = appState.getFirstWizardPage();

		if(firstWizardPage != null)
		{
			appState.removeBreadcrumb(firstWizardPage);
		}
	}

	if ("true".equals(start))
	{
		appState.addStartBreadcrumb(breadcrumb);
	}
	else
	{
		String removeid = (String)dict.get("removeid");
		if (removeid != null)
		{
			appState.removeBreadcrumb(new Breadcrumb(removeid, null, null));
		}
		appState.addBreadcrumb(breadcrumb);
	}
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("hide")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("hide"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb"><% while (loop("ApplicationState:Breadcrumbs","Entry",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Link"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> &gt;&nbsp;<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div><% } %><% printFooter(out); %>