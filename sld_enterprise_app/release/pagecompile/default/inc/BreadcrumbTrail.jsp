<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.ArrayList"%><%@page import="java.util.Iterator"%><%@page import="com.intershop.beehive.app.capi.AppContext"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.request.Session"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import="com.intershop.component.foundation.capi.application.Breadcrumb"%><%@page import="com.intershop.component.foundation.capi.application.ApplicationState"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension"%><%
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

	AppContext appContext = AppContextUtil.getCurrentAppContext();
	ApplicationBO applicationBO = appContext.getVariable(ApplicationBO.CURRENT);
	ApplicationBOApplicationSelectorExtension<?> ext = applicationBO.getExtension(ApplicationBOApplicationSelectorExtension.class);
	if (ext != null)
	{
		dict.put("applicationName", ext.getDisplayName());
		dict.put("applicationLevel", ext.getType());
	}
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("hide")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("hide"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" id="breadcrumb">
<tr>
<td class="breadcrumb"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ApplicationState:Breadcrumbs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("applicationName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("organization",null).equals(context.getFormattedValue(getObject("applicationLevel"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("applicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> &gt;&nbsp;
<% } else { %><a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Channel",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("applicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> &gt;&nbsp;
<% } %><% } %><% while (loop("ApplicationState:Breadcrumbs","Entry",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Link"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> &gt;&nbsp;
<% } else { %>
&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% } %></td>
</tr>
</table><% } %><% printFooter(out); %>