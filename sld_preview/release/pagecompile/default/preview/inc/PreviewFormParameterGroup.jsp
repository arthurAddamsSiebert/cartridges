<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute"%>
<%@page import="com.intershop.beehive.core.capi.webform.FormParameter"%>
<%@page import="com.intershop.beehive.core.capi.webform.Form"%>
<%@page import="java.util.Vector"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	String templateToLoad = null;
	String group = (String)getPipelineDictionary().get("group");
	Form previewForm = (Form)getPipelineDictionary().get("webform");
	
	if ((previewForm != null) && (group != null) && !group.isEmpty())
	{
		templateToLoad = "preview/" + group + ".isml";
		getPipelineDictionary().put("templateToLoad", templateToLoad);
		Vector<FormParameter> groupParameters = new Vector<FormParameter>();
		Object attribute;
		
		for (FormParameter parameter : previewForm.getParameters())
		{
			attribute = parameter.getValue();
			
			if ((attribute instanceof PreviewConfigurationAttribute) && group.equals(((PreviewConfigurationAttribute)attribute).getGroup()))
			{
				groupParameters.add(parameter);
			}
		}
		
		getPipelineDictionary().put("groupParameters", groupParameters);
	}
 %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("templateToLoad")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("templateToLoad"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("templateToLoad"),null), null, "33");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/SimplePreviewFormParameterGroup.isml", null, "35");} %><% } %><% printFooter(out); %>