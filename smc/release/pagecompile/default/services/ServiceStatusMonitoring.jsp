<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/Modules", null, "2");} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("TargetServerFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	 <% {Object temp_obj = (getObject("TargetServerID")); getPipelineDictionary().put("TargetServerFilter", temp_obj);} %>
<% } %>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="breadcrumb">
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ServiceStatusMonitoring.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-ServicesStatusOverview",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ServiceStatusMonitoring.Services.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
		    <% {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} %>
		   <% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
		</td>
	</tr>
	<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td class="table_title aldi">
		    <% {Object temp_obj = (getObject("ServiceStatus:ServiceInformation")); getPipelineDictionary().put("Service", temp_obj);} %>
		    <% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e"><% {out.write(localizeISText("ServiceStatusMonitoring.ThisPageProvidesInformationAboutServiceOperations.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="infobox table_header e w n s"><% {out.write(localizeISText("ServiceStatusMonitoring.StatusOverview.infobox","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>        
	</tr>	
	<tr>
		<td>
			<table border="0" cellspacing="0" cellpadding="4" class="infobox w100">
				<tr>
					<td class="table_header w e s"><% {out.write(localizeISText("ServiceStatusMonitoring.ApplicationServer.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
<!-- Overview content -->         
				<tr>
					<td class="table_detail w e s">
						  
						<% while (loop("ServerRegistrations","ServerRegistration",null)) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("ServerRegistration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br>
							<% } %>
						<% } %> 
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr height="20px">
	</tr>	
</table>
<% URLPipelineAction action27 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site27 = null;String serverGroup27 = null;String actionValue27 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site27 == null){  site27 = action27.getDomain();  if (site27 == null)  {      site27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup27 == null){  serverGroup27 = action27.getServerGroup();  if (serverGroup27 == null)  {      serverGroup27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("applyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue27, site27, serverGroup27,true)); %>
	<input type="hidden" name="configurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100">
		<tr>
				<td class="infobox table_header s" colspan="3"><% {out.write(localizeISText("ServiceStatusMonitoring.StatusDetails.infobox","",null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>  
			</tr>
		<tr>
			<td class="infobox_description" nowrap="nowrap" ><% {out.write(localizeISText("ServiceStatusMonitoring.Server.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="TargetServerFilter" class="select inputfield_en" style="width:200px;">
					<% while (loop("ServerRegistrations","ServerRegistration",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:Type"),null).equals(context.getFormattedValue("AppServer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>:<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ServerRegistration:ServerID"),null)),null)%>:
							<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ServerRegistration:ServerID"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerRegistration:ServerID"),null).equals(context.getFormattedValue(getObject("TargetServerFilter"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>selected="selected"<% } %>>
								<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Name"),null)),null)%>@<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerRegistration:Host"),null)),null)%>:<% {String value = null;try{value=context.getFormattedValue(getObject("ServerRegistration:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							</option>
						<% } %>
					<% } %>
				</select>
			</td>
			<td align="right">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td class="button">
							<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceStatusMonitoring.Apply.button",null)),null)%>" name="findMonitoring"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>		    
	</table>	
<% out.print("</form>"); %>
<!-- Content   -->
<% {Object temp_obj = (""); getPipelineDictionary().put("currentInterfaceID", temp_obj);} %>
<table border="0" cellspacing="0" cellpadding="4" width="100%">
<tr>
      <TD class="table_header w e s" ROWSPAN="2"><% {out.write(localizeISText("ServiceStatusMonitoring.Interface.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></TD>
      <td class="table_header e s" ROWSPAN="2"><% {out.write(localizeISText("ServiceStatusMonitoring.Operation.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
      <TD class="table_header e s" ><% {out.write(localizeISText("ServiceStatusMonitoring.LastRequest.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></TD>
      <td class="table_header e s" colspan="7" align="center"><% {out.write(localizeISText("ServiceStatusMonitoring.Last.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
 	  <TD class="table_header e s">
 	  <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "117");} %>
 	  </TD> 
      
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.1Min.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "120");} %></TD> 
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.10Min.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "121");} %></TD> 
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.30Min.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "122");} %></TD>
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.1h.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "123");} %></TD> 
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.2h.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "124");} %></TD>
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.6h.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "125");} %></TD>
      <TD class="table_header e s"><div class="floatleft"><% {out.write(localizeISText("ServiceStatusMonitoring.12h.floatleft","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/StatisticIcons.isml", null, "126");} %></TD>
</tr>

<% while (loop("ServiceConfiguration:Interfaces","Interface",null)) { %>
  <TR>
      <TD ROWSPAN="<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("Interface:NumberOfOperations")).doubleValue() +((Number) new Double(1)).doubleValue())),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail w e s">
      		<% {String value = null;try{value=context.getFormattedValue(getObject("Interface:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</TD>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Interface:Operations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
	</tr>
	  <% while (loop("Interface:Operations","Operation",null)) { %>
		 	 <tr>
		      <TD class="table_detail e s" title="<% {String value = null;try{value=context.getFormattedValue(getObject("Operation:Signature"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Operation:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</TD> 
			  <td class="table_detail e s">
			   	<% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:LastRequest"))}, 140); %>
			   </td>
			   <td class="table_detail e s">
			    <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get1MinStatistic"))}, 143); %> 
			   </td>
			   <td class="table_detail e s">
			    <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get10MinStatistic"))}, 146); %> 
			   </td>
			    <TD class="table_detail e s">
			    <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get30MinStatistic"))}, 149); %>
			  </TD>
			  <TD class="table_detail e s">
			     <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get1HourStatistic"))}, 152); %>
			  </TD>
			  <TD class="table_detail e s">
			     <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get2HourStatistic"))}, 155); %>
			  </TD>
			  <TD class="table_detail e s">
			    <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get6HourStatistic"))}, 158); %>
			  </TD> 
			  <TD class="table_detail e s">
			     <% processOpenTag(response, pageContext, "statisticbar", new TagParameter[] {
new TagParameter("shownumbers","true"),
new TagParameter("statistics",getObject("Operation:Statistics:get12HourStatistic"))}, 161); %>
			  </TD>
			  </tr>
		<% } %> 
	<% } else { %>
	     	 <TD class="table_detail e s" colspan="9">&nbsp;</TD>
		  </tr>
	<% } %>
	
<% } %>

</table>
<% URLPipelineAction action28 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));String site28 = null;String serverGroup28 = null;String actionValue28 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null);if (site28 == null){  site28 = action28.getDomain();  if (site28 == null)  {      site28 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup28 == null){  serverGroup28 = action28.getServerGroup();  if (serverGroup28 == null)  {      serverGroup28 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManagedServiceInfo-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("sevicesStatusOverviewBack");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue28, site28, serverGroup28,true)); %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td width="100%" class="backbar_left">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="button"><input type="submit" name="backToStatusOverview" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("ServiceStatusMonitoring.BackToStatusOverview.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>

<% printFooter(out); %>