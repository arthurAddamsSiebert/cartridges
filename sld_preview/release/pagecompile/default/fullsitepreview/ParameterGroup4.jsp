<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"fullsitepreview/Modules.isml", null, "2");} %><%@page import="com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute"%><%@page import="java.util.Vector"%><%
	String templateToLoad = null;
	Vector<PreviewConfigurationAttribute> groupParameters = (Vector<PreviewConfigurationAttribute>)getPipelineDictionary().get("groupParameters");
	
	if ((groupParameters != null) && (!groupParameters.isEmpty()))
	{
		boolean groupParametersDefault = true;
		
		for (PreviewConfigurationAttribute<?> groupSummaryParameter : groupParameters)
		{
		    if(groupSummaryParameter.isVisible() && !groupSummaryParameter.isDefault())
		    {
		        groupParametersDefault = false;
		    }
		}
		
		getPipelineDictionary().put("groupParametersDefault", groupParametersDefault);
	}
%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("groupParametersDefault"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> 
<tr>
<td class="label sfe-preview-summary-parameter-group-nondefault"><% {out.write(localizeISText("ParameterGroup4.CatalogSettings.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><% while (loop("groupParameters","previewAttribute",null)) { %><% processOpenTag(response, pageContext, "fullsitepreviewparameter", new TagParameter[] {
new TagParameter("previewAttribute",getObject("previewAttribute")),
new TagParameter("CurrentRequest",getObject("CurrentRequest"))}, 30); %><% } %></td>
</tr><% } %><% printFooter(out); %>