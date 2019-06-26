<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "3");} %>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="breadcrumb">
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ServicesStatusOverview.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
			<% {out.write(localizeISText("ServicesStatusOverview.Services.link","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td class="table_title aldi"><% {out.write(localizeISText("ServicesStatusOverview.ServicesStatusOverview.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="table_title_description w e"><% {out.write(localizeISText("ServicesStatusOverview.ThisPageProvidesAnOverviewOfTheServicesT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>	
</table>

<% URLPipelineAction action23 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site23 = null;String serverGroup23 = null;String actionValue23 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site23 == null){  site23 = action23.getDomain();  if (site23 == null)  {      site23 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup23 == null){  serverGroup23 = action23.getServerGroup();  if (serverGroup23 == null)  {      serverGroup23 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("applyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue23, site23, serverGroup23,true)); %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("duration")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
	  <% {Object temp_obj = ("10m"); getPipelineDictionary().put("duration", temp_obj);} %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("TargetServerFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
	  <% {Object temp_obj = ("all"); getPipelineDictionary().put("TargetServerFilter", temp_obj);} %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("TargetSiteID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
	  <% {Object temp_obj = ("all"); getPipelineDictionary().put("TargetSiteID", temp_obj);} %>
	<% } %>
	
	<table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100">
		<tr>
			<td class="infobox_item" nowrap="nowrap" width="150"><% {out.write(localizeISText("ServicesStatusOverview.Server.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td align="left" width="300">
				<select name="TargetServerFilter" class="select inputfield_en" style="width:200px;">
					<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetServerFilter"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("ServicesStatusOverview.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
					<% while (loop("ServerRegistrations","ServerRegistration",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
							<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:ServerID"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:ServerID"),null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>selected="selected"<% } %>>
								<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Name"),null)),null)%>@<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Host"),null)),null)%>:<% {String value = null;try{value=context.getFormattedValue(getObject("ServerRegistration:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</option>
						<% } %>
					<% } %>
				</select>
			</td>
			<td class="infobox_item" width="150"><% {out.write(localizeISText("ServicesStatusOverview.Period.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td align="left" width="300">
			    <select name="duration" class="select inputfield_en" style="width: 200px;">
			     <option value="10m" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("10m",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last10min.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
	             <option value="30m" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("30m",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last30min.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
				 <option value="1h" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("1h",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last1h.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
	 			 <option value="2h" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("2h",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last2h.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
				 <option value="6h" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("6h",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last6h.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
				 <option value="12h" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("duration"),null).equals(context.getFormattedValue("12h",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Last12h.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>           
			   </select>
			</td>		
			<td></td>
		</tr>
		<tr>
			<td class="infobox_item" nowrap="nowrap" ><% {out.write(localizeISText("ServicesStatusOverview.Repository.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="TargetSiteID" class="select inputfield_en" style="width:200px;">
					<option value="all" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetSiteID"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("ServicesStatusOverview.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
					<% while (loop("Sites","Domain",null)) { %>				
						<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Domain:UUID"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Domain:UUID"),null).equals(context.getFormattedValue(getObject("TargetSiteID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>selected="selected"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Domain:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Domain:DisplayName"),null)),null)%><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Domain:UUID"),null).equals(context.getFormattedValue(getObject("TargetSiteID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							<% {Object temp_obj = (getObject("Domain:DomainName")); getPipelineDictionary().put("ListTitle", temp_obj);} %>
						<% } %>
					<% } %>
				</select>
			</td>
			<td class="infobox_item"><% {out.write(localizeISText("ServicesStatusOverview.Status.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="serviceStatus" class="select inputfield_en" style="width:200px;">
					<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serviceStatus"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("ServicesStatusOverview.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
					<option value="ok" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serviceStatus"),null).equals(context.getFormattedValue("ok",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Ok.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="errors" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serviceStatus"),null).equals(context.getFormattedValue("errors",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.WithErrors.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="exceptions" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serviceStatus"),null).equals(context.getFormattedValue("exceptions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.WithExceptions.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="notused" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serviceStatus"),null).equals(context.getFormattedValue("notused",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.NotUsed.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			</td>			
			<td></td>
		</tr>
		<tr>
			<td class="infobox_item" nowrap="nowrap" ><% {out.write(localizeISText("ServicesStatusOverview.Servicetype.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="SelectedServiceType" class="select inputfield_en" style="width:200px;">
					<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedServiceType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedServiceType"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("ServicesStatusOverview.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>

					<% while (loop("ServiceTypes","ServiceType",null)) { %>
						<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ServiceType"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceType"),null).equals(context.getFormattedValue(getObject("SelectedServiceType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>selected="selected"<% } %>>
							<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ServiceType"),null)),null)%>
						</option>
					<% } %>
				</select>
			</td>
			<td class="infobox_item" nowrap="nowrap" ><% {out.write(localizeISText("ServicesStatusOverview.ActivationStatus.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="ActivationStatus" class="select inputfield_en" style="width:200px;">
					<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActivationStatus"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("ServicesStatusOverview.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>

					<option value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActivationStatus"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Enabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActivationStatus"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ServicesStatusOverview.Disabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			</td>
			<td align="right">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td class="button">
							<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesStatusOverview.Apply.button",null)),null)%>" name="findOverview"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
		</tr>
	</table>
	
	<table border="0" cellspacing="0" cellpadding="4" width="100%">
		<tr>
			<td class="table_title aldi" colspan="7">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.write(localizeISText("ServicesStatusOverview.ServiceConfigurationOfSite.table_title","",null,context.getFormattedValue(getObject("ListTitle"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ServicesStatusOverview.ListOfAllServiceConfigurations.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
			</td>
		</tr>
	</table>	

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoServiceSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="w e" colspan="7">
				<table width="100%" cellspacing="0" cellpadding="4" border="0" class="error_box">
					<tr>
						<td class="error_icon e s">
							<img width="16" height="15" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif">
						</td>
						<td width="100%" class="error s">
							<% {out.write(localizeISText("ServicesStatusOverview.YouHaveNotSelectedAnyServiceConfigurations.error","",null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<% } %>

	<table border="0" cellspacing="0" cellpadding="4" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceConfigurations")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ServiceConfigurations:Size")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
			<tr>
				<td class="table_header w e s center" width="70">
					<div id="A">
						<table width="75" cellspacing="0" cellpadding="0" border="0" class="table_header center">
							<tbody><tr><td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('applyForm','SelectedObjectUUID','A','B');"><% {out.write(localizeISText("ServicesStatusOverview.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td></tr></tbody>
						</table>
					</div>
					<div style="display:none" id="B">
						<table width="75" cellspacing="0" cellpadding="0" border="0" class="table_header center"><tbody><tr>
							<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('applyForm','SelectedObjectUUID','A','B');"><% {out.write(localizeISText("ServicesStatusOverview.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td></tr></tbody>
						</table>
					</div>
				</td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.Configuration.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.Servicetype.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.ApplicationServer.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.Repository.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.Status.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ServicesStatusOverview.Activation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		

		<% while (loop("ServiceConfigurations","ServiceConfiguration",null)) { %>
			<tr>
				<td class="table_detail w e s center">
					<input type="checkbox" name="SelectedServiceUUID"  value="<%=context.getFormattedValue(getObject("ServiceConfiguration:UUID"),null)%>" />
				</td>
				<td class="table_detail e s">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServiceStatusMonitoring",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("configurationUUID",null),context.getFormattedValue(getObject("ServiceConfiguration:UUID"),null)))),null)%>" class="table_detail_link">
						<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</a>
				</td>
				<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ServiceType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceConfiguration:Servers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
						<% while (loop("ServiceConfiguration:Servers","server",null)) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("server:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br>
						<% } %>
					<% } else { %>
						&nbsp;
					<% } %>
				</td>
				<td class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfiguration:Domain:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Domain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><br>
				</td>
				<td class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceConfiguration:Servers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>
						 <% while (loop("ServiceConfiguration:Servers","server",null)) { %>
						 	<% processOpenTag(response, pageContext, "servicetrafficlight", new TagParameter[] {
new TagParameter("trafficlight",getObject("server:getDurationStatus(duration):Name"))}, 207); %><br>
						 <% } %>
					<% } else { %>
						<% processOpenTag(response, pageContext, "servicetrafficlight", new TagParameter[] {
new TagParameter("trafficLight","'GRAY'")}, 210); %>
					<% } %>
				</td>
				<td class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isHardOff"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("ServicesStatusOverview.Enabled.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:isHardOff"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("ServicesStatusOverview.Disabled.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>
				</td>
			</tr> 
		<% } %>
		</table>
		<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfigurations"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>
				<td align="right">
					<table cellspacing="4" cellpadding="0" border="0">
						<tr>
							<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesStatusOverview.Enable.button",null)),null)%>" name="enableServices"></td>
							<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesStatusOverview.Disable.button",null)),null)%>" name="disableServices"></td>
						</tr>
					</tbody></table>
				</td>
			<% } %>
		</tr>
		</table>
	<% } else { %>
		<tr>
			<td class="table_details s w e" colspan="7">
				<% {out.write(localizeISText("ServicesStatusOverview.NoServiceConfigurationsAvailable.table_details","",null,null,null,null,null,null,null,null,null,null,null));} %> 	
			</td>
		</tr>
		</table>
	<% } %>
<% out.print("</form>"); %>
<% printFooter(out); %>