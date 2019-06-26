<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SavedConfiguration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><script type="text/javascript"><%@page import="com.intershop.component.dashboard.capi.WidgetBO" %><%@page import="com.intershop.sellside.enterprise.dashboard.internal.WidgetTypeUtil" %><%@page import="com.intershop.application.backoffice.dashboard.internal.WidgetBOUtil" %><%
		WidgetBO widgetBO = (WidgetBO)getObject("WidgetBO");
		
		// displayName of the widget
		getPipelineDictionary().put("WidgetDisplayName", WidgetBOUtil.getDisplayName(widgetBO));
		
		// url of the widget
		String url = WidgetTypeUtil.getURL(widgetBO);
		if (null != url)
		{
			getPipelineDictionary().put("WidgetTypeURL", url);
			%>
window.$parentDocument.trigger('refreshwidget.dashboard', ['<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>', '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>', '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetTypeURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>']);
<%
		}
		else
		{
			%>
window.$parentDocument.trigger('refreshwidget.dashboard', ['<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>', '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>']);
<%
		}
		%>
$dialog.dialog('close');
</script><% } else { %><% URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateWidgetConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); %><input type="hidden" name="DashboardID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DashboardID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" name="WidgetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<div class="dialog-content"><% processOpenTag(response, pageContext, "propertyeditor", new TagParameter[] {
new TagParameter("owner",getObject("WidgetBO")),
new TagParameter("stylesheet","propertygroups_bo.css"),
new TagParameter("hidetitle","true"),
new TagParameter("validationresult",getObject("ValidatedPropertyGroupConfiguration:get(DisplayNamePropertyGroup)")),
new TagParameter("propertydescriptor",getObject("DisplayNamePropertyGroup"))}, 37); %><% while (loop("WidgetBO:WidgetType:ConfigurationParameters","propertyGroup",null)) { %><% processOpenTag(response, pageContext, "propertyeditor", new TagParameter[] {
new TagParameter("owner",getObject("WidgetBO")),
new TagParameter("stylesheet","propertygroups_bo.css"),
new TagParameter("hidetitle","false"),
new TagParameter("validationresult",getObject("ValidatedPropertyGroupConfiguration:get(propertyGroup)")),
new TagParameter("propertydescriptor",getObject("propertyGroup"))}, 45); %><% } %></div>
<div class="dialog-buttons">
<input type="submit" class="button" name="ok" value="<% {out.write(localizeISText("widget.dialog.configuration.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
<input type="button" class="button" name="cancel" value="<% {out.write(localizeISText("widget.dialog.configuration.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-close" />
</div><% out.print("</form>"); %><% } %><% printFooter(out); %>