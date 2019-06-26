<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><table>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName",context.getFormattedValue("ConfigurationParameter_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null) + context.getFormattedValue("_Date",null)),
new TagParameter("Readonly",(((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("DateString",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Date:FormattedValue")),
new TagParameter("DateObject",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value")),
new TagParameter("Invalid",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):isInvalid"))}, 7); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName",context.getFormattedValue("ConfigurationParameter_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null) + context.getFormattedValue("_Time",null)),
new TagParameter("Readonly",(((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("TimeString",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Time:FormattedValue")),
new TagParameter("DateObject",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value")),
new TagParameter("Invalid",getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):isInvalid"))}, 13); %></tr>
</table><% printFooter(out); %>