<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>

<!-- Template: 31_Captcha_52 -->

<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.component.captcha.capi.CaptchaService"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>
<%@page import="com.intershop.component.service.capi.service.ServiceConfigurationBORepository"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>

<%
	//get pipeline dictionary
	PipelineDictionary dict = getPipelineDictionary();

	ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
   	ServiceConfigurationBORepository serviceConfigurationBORepository = applicationBO.getRepository("ServiceConfigurationBORepository");
	
	//find captcha service implementations for the current domain
	Iterator<CaptchaService> iter = serviceConfigurationBORepository.getServiceAdapters(CaptchaService.class).iterator();
	
	//check if service available
	if (iter.hasNext())
	{
		//add serviceEnabledFlag to pd, accessable in the template
		dict.put("CaptchaServiceEnabled", "true");	
	}
%>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CaptchaServiceEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "navigationoverviewitem", new TagParameter[] {
new TagParameter("displayname","03_Captcha_52.CAPTCHAs.link"),
new TagParameter("description","03_Captcha_52.EnableOrDisableCAPTCHAs.overview_title_description"),
new TagParameter("linkurl",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCaptchaPreferences_52-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))))}, 32); %>
<% } %>	
<!-- EO Template: 31_Capture_52 -->
<% } %><% printFooter(out); %>