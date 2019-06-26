<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "additionalparametervaluecontext", new TagParameter[] {
new TagParameter("ValueContext","ValueContext"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ConfigurationParameterDefinition",getObject("ConfigurationParameterDefinition"))}, 4); %><table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail" width="680" style="min-width: 680px;">
<textarea name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
rows="10" cols="50" class="sfe-html-editor" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
<span class="sfe-removed"><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentMasterRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("Configuration",getObject("ValueContext:ValueOf(ConfigurationParameterDefinition:ParameterValueBindingsAsMap:Configuration)")),
new TagParameter("ProductLinkPipeline","ViewProduct-ExecutePreview"),
new TagParameter("Enabled",(((context.getFormattedValue(getObject("IsPageletEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("Name",context.getFormattedValue("ConfigurationParameter_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null))}, 14); %></span>
</td>
<td>&nbsp;</td>
</tr>
</table><% printFooter(out); %>