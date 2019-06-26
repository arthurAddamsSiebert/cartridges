<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %>
<!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="breadcrumb">
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("MaintenanceSiteStatus.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServicesStatusOverview",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("MaintenanceSiteStatus.Services.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
			<% {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceDisplayName", null, "12");} %> <% {out.write(localizeISText("MaintenanceSiteStatus.ServiceStatusMaintenance.link","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>	
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<!-- EO Page Navigator -->

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">
	<tr>
		<td>
			<% {Object temp_obj = ("Maintenance"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceMonitoringTabs", null, "23");} %>
		</td>
	</tr>
</table>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td class="table_title">
		    <% {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} %>
		    <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"services/ServiceDisplayName", null, "32");} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e">
			<% {out.write(localizeISText("MaintenanceSiteStatus.HereYouCanEnableDisableTheService.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% URLPipelineAction action24 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site24 = null;String serverGroup24 = null;String actionValue24 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site24 == null){  site24 = action24.getDomain();  if (site24 == null)  {      site24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup24 == null){  serverGroup24 = action24.getServerGroup();  if (serverGroup24 == null)  {      serverGroup24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("maintenanceSiteFilter");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue24, site24, serverGroup24,false)); %>
<input type="hidden" name="ServiceID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Period" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Period"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

<table border="0" cellpadding="5" cellspacing="0" class="infobox aldi w100">
	<tr>
		<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("MaintenanceSiteStatus.Server.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="infobox_item" nowrap="nowrap">
			<select	name="TargetServerFilter" class="select">
				<option value="all"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("all",null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
						selected="selected"
					<% } %>
				>
					(<% {out.write(localizeISText("MaintenanceSiteStatus.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)&nbsp;
				</option>
				<% while (loop("ServerRegistrations","Server",null)) { %>
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Server:ServerID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Server:ServerID"),null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
							selected="selected"
						<% } %>
					>
						<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Server:DisplayName"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("Server:Host"),null) + context.getFormattedValue(":",null) + context.getFormattedValue(context.getFormattedValue(getObject("Server:Port"),"#"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</option>
				<% } %>
			</select>
		</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("MaintenanceSiteStatus.Status.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="infobox_item" nowrap="nowrap">
			<select	name="ServiceStatusFilter" class="select">
				<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceStatusFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>selected="selected"<% } %>>
					(<% {out.write(localizeISText("MaintenanceSiteStatus.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)&nbsp;
				</option>
				<option value="enabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>selected="selected"<% } %>>
					<% {out.write(localizeISText("MaintenanceSiteStatus.Enabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
				</option>
				<option value="disabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>selected="selected"<% } %>>
					<% {out.write(localizeISText("MaintenanceSiteStatus.Disabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
				</option>
				<option value="withErrors" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withErrors",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>selected="selected"<% } %>>
					<% {out.write(localizeISText("MaintenanceSiteStatus.WithErrors.option","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
				</option>
				<option value="withExceptions" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withExceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>selected="selected"<% } %>>
					<% {out.write(localizeISText("MaintenanceSiteStatus.WithException.option","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
				</option>
			</select>
		</td>
		<td align="right">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="button">
						<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Apply.button",null)),null)%>" name="findMonitoring"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<% out.print("</form>"); %>

<% URLPipelineAction action25 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site25 = null;String serverGroup25 = null;String actionValue25 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site25 == null){  site25 = action25.getDomain();  if (site25 == null)  {      site25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup25 == null){  serverGroup25 = action25.getServerGroup();  if (serverGroup25 == null)  {      serverGroup25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("serviceSiteList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue25, site25, serverGroup25,false)); %>
<input type="hidden" name="ServiceID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetServerFilter" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetServerFilter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ServiceStatusFilter" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceStatusFilter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Period" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Period"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>


<table cellpadding="0" cellspacing="0" border="0" class="w100">
	<tr>
		<td class="table_header w e s center" nowrap="nowrap" width="70" valign="middle">
			<div id="A">
				<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
					<tr>
						<td nowrap="nowrap">
							<a href="javascript:selectAll('serviceSiteList','SelectedDomainUUID','A','B');" class="tableheader"><% {out.write(localizeISText("MaintenanceSiteStatus.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
						</td>
					</tr>
				</table>
			</div>
			<div id="B" style="display:none">
				<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
					<tr>
						<td nowrap="nowrap">
						<a href="javascript:selectAll('serviceSiteList','SelectedDomainUUID','A','B');" class="tableheader"><% {out.write(localizeISText("MaintenanceSiteStatus.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
						</td>
					</tr>
				</table>
			</div>
		</td>
		<th class="table_header e s"><% {out.write(localizeISText("MaintenanceSiteStatus.Site.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header e s"><% {out.write(localizeISText("MaintenanceSiteStatus.StatusLast10min.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header e s"><% {out.write(localizeISText("MaintenanceSiteStatus.TestStatus.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
	</tr>
	
	<% while (loop("MaintenanceSiteStatusPageable","SiteStatistic",null)) { %>
	<% {Object temp_obj = (getObject("SiteStatistic:RequestStatistic:get10MinStatistic")); getPipelineDictionary().put("Statistic", temp_obj);} %>
	<% {Object temp_obj = (getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)")); getPipelineDictionary().put("TestResult", temp_obj);} %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceStatusFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("SiteStatistic:Enabled"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) getObject("SiteStatistic:Enabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withErrors",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Statistic:Timeouts")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceStatusFilter"),null).equals(context.getFormattedValue("withExceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Statistic:Failures")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
		<tr>
			<td class="w e s center">
				<input type="checkbox" name="SelectedDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SiteStatistic:Domain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(SiteStatistic:Domain:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>
					checked="checked"
					<% } %>
				/>
				&nbsp;
			</td>
			<td class="table_detail e s">
				<a	class="table_detail_link"
					href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServiceStatusMonitoring",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerFilter",null),context.getFormattedValue(getObject("TargetServerFilter"),null))).addURLParameter(context.getFormattedValue("TargetSiteID",null),context.getFormattedValue(getObject("SiteStatistic:Domain:UUID"),null)).addURLParameter(context.getFormattedValue("ServiceID",null),context.getFormattedValue(getObject("ServiceID"),null)).addURLParameter(context.getFormattedValue("Period",null),context.getFormattedValue(getObject("Period"),null))),null)%>">
					<% {String value = null;try{value=context.getFormattedValue(getObject("SiteStatistic:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</a>
				&nbsp;
			</td>
			<td class="table_detail e s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Statistic:Success")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Statistic:LongCallsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>
					<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.OK.title",null)),null)%>"/>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Statistic:Timeouts")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>
					<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/errors_ico.png" title="<% {String value = null;try{value=context.getFormattedValue(getObject("Statistic:Timeouts"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Timeouts.title",null)),null)%>"/>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Statistic:Failures")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>
					<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/warnings_ico.png" title="<% {String value = null;try{value=context.getFormattedValue(getObject("Statistic:Failures"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Exceptions.title",null)),null)%>"/>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SiteStatistic:Enabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>
					?
				<% } %>
				&nbsp;
			</td>
			<td class="table_detail e s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaintenanceServiceResults:PingResult(SiteStatistic:Domain:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
					<img title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.PingResult.title",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png"/>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("MaintenanceServiceResults:PingResult(SiteStatistic:Domain:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
					<img title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.PingResult.title",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/errors_ico.png"/>
				<% }} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
					<img title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.TestResult.title",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png"/>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("MaintenanceServiceResults:TestResult(SiteStatistic:Domain:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %>
					<img title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.TestResult.title",null)),null)%>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/errors_ico.png"/>
				<% }} %>
				&nbsp;
			</td>
		</tr>
	<% } %>
	<% } %>
	<tr>
		<td colspan="3" class="w s">&nbsp;</td>
		<td class="e s" align="right">
			<table cellpadding="0" cellspacing="4" border="0">
				<tr>
					<td class="button">
						<input name="enableServices" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Enable.button",null)),null)%>" type="submit" class="button">
					</td>
					<td class="button">
						<input name="disableServices" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Disable.button",null)),null)%>" type="submit" class="button">
					</td>
					<td class="button">	
						<input name="pingServices" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Ping.button",null)),null)%>" type="submit" class="button">
					</td>
					<td class="button">	
						<input name="testServices" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.Test.button",null)),null)%>" type="submit" class="button">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("MaintenanceSiteStatusPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td>
				<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
				<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","MaintenanceSiteStatusPageable"),
new TagParameter("variablepagesize","false")}, 224); %>
			</td>
		</tr>
	</table>
<% } %>
<% out.print("</form>"); %>


<% URLPipelineAction action26 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site26 = null;String serverGroup26 = null;String actionValue26 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site26 == null){  site26 = action26.getDomain();  if (site26 == null)  {      site26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup26 == null){  serverGroup26 = action26.getServerGroup();  if (serverGroup26 == null)  {      serverGroup26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("sevicesStatusOverviewBack");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue26, site26, serverGroup26,true)); %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td width="100%" class="backbar_left">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="button"><input type="submit" name="backToStatusOverview" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("MaintenanceSiteStatus.BackToStatusOverview.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>