<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.preview.capi.context.PreviewContextBO"%>
<%@page import="com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute"%>
<%@page import="java.util.Vector"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	String templateToLoad = null;
	String group = (String)getPipelineDictionary().get("group");
	PreviewContextBO previewContext = (PreviewContextBO)getPipelineDictionary().get("previewContext");
	
	if ((previewContext != null) && (group != null) && !group.isEmpty())
	{
		templateToLoad = "previewsummary/" + group + ".isml";
		getPipelineDictionary().put("templateToLoad", templateToLoad);
		Vector<PreviewConfigurationAttribute> groupSummaryParameters = new Vector<PreviewConfigurationAttribute>();
		
		for (PreviewConfigurationAttribute<?> summaryParameter : previewContext.getPreviewConfigurationAttributes())
		{
			if (group.equals(summaryParameter.getGroup()))
			{
			    groupSummaryParameters.add(summaryParameter);
			}
		}
		
		getPipelineDictionary().put("groupSummaryParameters", groupSummaryParameters);
	}
 %><div class="sfe-preview-summary-parameter-group-<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("templateToLoad")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("templateToLoad"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("templateToLoad"),null), null, "31");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"previewsummary/SimplePreviewSummaryParameterGroup.isml", null, "33");} %><% } %></div><% printFooter(out); %>