<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"previewsummary/Modules.isml", null, "2");} %><%@page import="com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute"%><%@page import="java.util.Vector"%><%
	Vector<PreviewConfigurationAttribute> groupSummaryParameters = (Vector<PreviewConfigurationAttribute>)getPipelineDictionary().get("groupSummaryParameters");
	
	if ((groupSummaryParameters != null) && (!groupSummaryParameters.isEmpty()))
	{
		boolean groupSummaryParametersDefault = true;
		
		for (PreviewConfigurationAttribute<?> groupSummaryParameter : groupSummaryParameters)
		{
		    if(groupSummaryParameter.isVisible() && !groupSummaryParameter.isDefault())
		    {
		        groupSummaryParametersDefault = false;
		    }
		}
		
		getPipelineDictionary().put("groupSummaryParametersDefault", groupSummaryParametersDefault);
	}
 %><div id="sfe-preview-summary-parameter-group-<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-list" class="sfe-preview-summary-parameter-group-simple<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("groupSummaryParametersDefault"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> sfe-preview-summary-parameter-group-nondefault<% } %>"><% while (loop("groupSummaryParameters","summaryParameter",null)) { %><div id="sfe-preview-summary-parameter-group-<% {String value = null;try{value=context.getFormattedValue(getObject("summaryParameter:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-list-item" class="sfe-preview-summary-parameter-group-list-item"><% processOpenTag(response, pageContext, "previewsummaryparameter", new TagParameter[] {
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("EnablePastDateCheck",getObject("EnablePastDateCheck")),
new TagParameter("previewContext",getObject("previewContext")),
new TagParameter("locale",getObject("Locale")),
new TagParameter("previewConfigurationAttribute",getObject("summaryParameter"))}, 28); %></div><% } %></div><% printFooter(out); %>