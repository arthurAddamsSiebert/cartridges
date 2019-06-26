<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import="com.intershop.beehive.core.capi.request.Request"%><%@page import="com.intershop.beehive.core.internal.domain.ApplicationPO"%><%@page import="com.intershop.component.service.capi.service.TrackingSFI"%><%@page import="com.intershop.component.service.internal.tracking.TrackingDataTreeContainer"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.component.service.capi.service.ServiceConfigurationBORepository"%><%@page import="java.util.Iterator"%><%@page import="java.util.Map"%><%
	PipelineDictionary dict = getPipelineDictionary();
	String templateID = (String)dict.get("template");
	TrackingDataTreeContainer tdtc = (TrackingDataTreeContainer)Request.getCurrent().getObject("TrackingDataContainer");
    ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
    ServiceConfigurationBORepository serviceConfigurationBORepository = applicationBO.getRepository("ServiceConfigurationBORepository");
                
	Iterator<TrackingSFI> trackingSFIs = serviceConfigurationBORepository.getServiceAdapters(TrackingSFI.class).iterator();
	
	while (trackingSFIs.hasNext()) 
	{
		final TrackingSFI trackingSFI = trackingSFIs.next();
		if (tdtc != null && trackingSFI.getTrackingEventHandlerId() != null)
		{
		    Object subContainer = tdtc.getSubContainer(trackingSFI.getTrackingEventHandlerId());
			if (subContainer != null)
			{
				dict.put("ServiceContainer", subContainer);
			} else {
				dict.remove("ServiceContainer");
			}
		}
		dict.put("TrackingSFI", trackingSFI);
		String template = trackingSFI.getTemplate(templateID);
		if (template != null) 
		{
			dict.put("TmpTemplate", template);
		} else 
		{
			dict.remove("TmpTemplate");
		}
		
		%><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TmpTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("TmpTemplate"),null), null, "49");} %><% } %><%         
	} //while
%><% printFooter(out); %>