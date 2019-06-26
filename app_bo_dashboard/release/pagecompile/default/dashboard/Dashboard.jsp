<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DashboardID",null),context.getFormattedValue(getObject("DashboardBO:ID"),null))))),
new TagParameter("start","true"),
new TagParameter("id",getObject("DashboardBO:ID")),
new TagParameter("text",getObject("DashboardBO:DisplayName"))}, 2); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>dashboard/dashboard.bridge.js<% out.print("</waplacement>"); %><% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateDashboard");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %><input type="hidden" value="<%=context.getFormattedValue(getObject("DashboardBO:ID"),null)%>" name="DashboardID">
<div class="actions">
<div class="actions-group">
<input type="button" class="button js-dashboard-dialog-addwidget-open" name="addWidget" value="<% {out.write(localizeISText("dashboard.detail.button.addwidget","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-open <%=context.getFormattedValue("#",null)%>dashboard-dialog-addwidget"/>
<input type="button" class="button button_select" id="editDashboardAction" value="<% {out.write(localizeISText("dashboard.detail.button.edit","",null,null,null,null,null,null,null,null,null,null,null));} %>" /><% processOpenTag(response, pageContext, "popupmenu", new TagParameter[] {
new TagParameter("id","editDashboardAction"),
new TagParameter("itemstemplate","dashboard/DashboardEdit")}, 16); %></div>
</div>
<h1 class="headline headline-top"><% {String value = null;try{value=context.getFormattedValue(getObject("DashboardBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h1><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/gridster/jquery.gridster.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>dashboard/dashboard.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/gridster/jquery.gridster.js<% out.print("</waplacement>"); %><div class="gridster">
<div id="dashboard-empty" class="headline headline-top-description"><% {out.write(localizeISText("dashboard.detail.empty.message","",null,null,null,null,null,null,null,null,null,null,null));} %> <a href="<%=context.getFormattedValue("#",null)%>addwidget" class="js-dashboard-dialog-addwidget-open form_link" data-action="dialog-open <%=context.getFormattedValue("#",null)%>dashboard-dialog-addwidget"><% {out.write(localizeISText("dashboard.detail.empty.link.addwidgettype","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
<ul id="dashboard"></ul>
</div><% out.print("</form>"); %><script type="text/template" id="widget-tpl"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"dashboard/WidgetTemplate", null, "37");} %></script>
<div id="dashboard-dialog-rename" class="js-dialog" width="450" height="167" data-title="<% {out.write(localizeISText("dashboard.dialog.rename.title","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<iframe name="renameDashboardFrame" class="dialog-iframe js-dashboard-dialog-rename" src="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-EnterName",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DashboardID",null),context.getFormattedValue(getObject("DashboardBO:ID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-src="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-EnterName",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DashboardID",null),context.getFormattedValue(getObject("DashboardBO:ID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></iframe>
</div>
<div id="dashboard-dialog-deleteconfirmation" class="js-dialog" width="400" height="162" data-title="<% {out.write(localizeISText("dashboard.dialog.deleteconfirmation.title","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteDashboard");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); %><div class="dialog-content">
<input type="hidden" value="<%=context.getFormattedValue(getObject("DashboardBO:ID"),null)%>" name="DashboardID">
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="confirm_box aldi">
<tr>
<td class="error_icon"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td>&nbsp;</td>
<td class="confirm"><% {out.write(localizeISText("dashboard.dialog.deleteconfirmation.question","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</div>
<div class="dialog-buttons">
<input type="submit" class="button" name="delete" value="<% {out.write(localizeISText("dashboard.dialog.deleteconfirmation.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" /><input type="button" class="button js-dashboard-delete-cancel" name="cancel" value="<% {out.write(localizeISText("dashboard.dialog.deleteconfirmation.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-focus data-action="dialog-close"/>
</div><% out.print("</form>"); %></div>
<div id="widget-dialog-deleteconfirmation" class="js-dialog" width="400" height="162" data-title="<% {out.write(localizeISText("widget.dialog.deleteconfirmation.title","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteWidget");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); %><div class="dialog-content">
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="confirm_box aldi">
<tr>
<td class="error_icon"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td>&nbsp;</td>
<td class="confirm"><% {out.write(localizeISText("widget.dialog.deleteconfirmation.question","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</div>
<div class="dialog-buttons">
<input type="submit" class="button js-widget-delete-ok" name="deleteWidget" value="<% {out.write(localizeISText("widget.dialog.deleteconfirmation.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" /><input type="button" class="button js-widget-delete-cancel" name="cancel" value="<% {out.write(localizeISText("widget.dialog.deleteconfirmation.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-focus data-action="dialog-close"/>
</div><% out.print("</form>"); %></div>
<div id="dashboard-dialog-addwidget" class="js-dialog" width="635" height="550" data-title="<% {out.write(localizeISText("dashboard.dialog.addwidget.title","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>">
<iframe name="addWidgetFrame" class="dialog-iframe js-dashboard-dialog-addwidget" src="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-NewWidget",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></iframe>
</div>
<div id="widget-dialog-configuration" class="js-dialog" width="635" height="550" data-resizable="true" data-title="<% {out.write(localizeISText("widget.dialog.configuration.title","javascript",null,"{0}",null,null,null,null,null,null,null,null,null));} %>">
<iframe name="configureWidgetFrame" class="dialog-iframe" src="about:blank" data-src="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-ConfigureWidget",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></iframe>
</div><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>dashboard/dashboard.addwidget.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>dashboard/dashboard.init.js<% out.print("</waplacement>"); %><script type="text/javascript">
(function () {
// dashboard uses other styling
$('body').addClass('dashboard');
// initialize "add widget" dialog
initAddWidgetDialog();
// initialize dashboard
initDashboard({
token: $('input[name="SynchronizerToken"]:first').val(),
dashboardId: '<% {String value = null;try{value=context.getFormattedValue(getObject("DashboardBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
dashboardColumns: 4,
widgetMargin: 6,
widgetHeight: 60,
widgetY: 3
});
// load widgets of dashboard
var $document = $(document);
<% {Object temp_obj = (getObject("DashboardBO:WidgetBOs")); getPipelineDictionary().put("WidgetBOs", temp_obj);} %><% while (loop("WidgetBOs","WidgetBO",null)) { %><% {Object temp_obj = (getObject("WidgetBO:WidgetType")); getPipelineDictionary().put("WidgetType", temp_obj);} %>
$document.trigger('loadwidget.dashboard', [
{
id: '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
typeId: '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
<%@page import="com.intershop.component.dashboard.capi.WidgetBO" %><%@page import="com.intershop.sellside.enterprise.dashboard.internal.WidgetTypeUtil" %><%@page import="com.intershop.application.backoffice.dashboard.internal.WidgetBOUtil" %><%
					WidgetBO widgetBO = (WidgetBO)getObject("WidgetBO");
					
					// url is only needed for URIs that don't reference a pipeline
					String url = WidgetTypeUtil.getURL(widgetBO);
					if (null != url)
					{
						getPipelineDictionary().put("WidgetTypeURL", url);
						%>
url: '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetTypeURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
<%
					}
					
					// displayName of the widget
					getPipelineDictionary().put("WidgetDisplayName", WidgetBOUtil.getDisplayName(widgetBO));
					%>
title: '<% {String value = null;try{value=context.getFormattedValue(getObject("WidgetDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'
},
{
<% {Object temp_obj = (getObject("WidgetBO:Configuration(\"(Class)com.intershop.application.backoffice.dashboard.internal.Position\")")); getPipelineDictionary().put("WidgetPosition", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WidgetPosition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>
col: <% {String value = null;try{value=context.getFormattedValue(getObject("WidgetPosition:X"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>,
row: <% {String value = null;try{value=context.getFormattedValue(getObject("WidgetPosition:Y"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>,
<% } %><% {Object temp_obj = (getObject("WidgetBO:Configuration(\"(Class)com.intershop.application.backoffice.dashboard.internal.Size\")")); getPipelineDictionary().put("WidgetSize", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WidgetSize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
width: <% {String value = null;try{value=context.getFormattedValue(getObject("WidgetSize:Width"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>,
height: <% {String value = null;try{value=context.getFormattedValue(getObject("WidgetSize:Height"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %><% } %>
}
]);
<% } %>
})();
</script><% printFooter(out); %>