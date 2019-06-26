<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<div class="breadcrumb" style="margin: 0 0 7px 0">
	<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("SiteApplicationDetailsGeneral.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SiteApplicationDetailsGeneral.Applications.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("SiteApplicationDetailsGeneral.General.link","",null,null,null,null,null,null,null,null,null,null,null));} %>
</div>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			<% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"applications/SiteApplicationDetailsTabs", null, "11");} %>
		</td>
	</tr>
	<tr>
		<td width="100%" class="table_title w e s">
			<% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
		</td>
	</tr>
</table>

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
	<tr>
		<td class="fielditem2" style="white-space:nowrap; width: 148px"><% {out.write(localizeISText("SiteApplicationDetailsGeneral.ApplicationType.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsGeneral.ApplicationName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsGeneral.URLIdentifier.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SiteApplicationDetailsGeneral.Description.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
	<tr>
		<td class="table_detail">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Application:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
				<p>
					<% {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisIsTheDefaultApplication",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</p>
			<% } %>
			
			<p>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Application:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisApplicationIsCurrentlyEnabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% {out.write(localizeISText("SiteApplicationDetailsGeneral.ThisApplicationIsCurrentlyDisabled",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
				<% } %>
			</p>
		</td>
	</tr>
</table>

<% URLPipelineAction action103 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));String site103 = null;String serverGroup103 = null;String actionValue103 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null);if (site103 == null){  site103 = action103.getDomain();  if (site103 == null)  {      site103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup103 == null){  serverGroup103 = action103.getServerGroup();  if (serverGroup103 == null)  {      serverGroup103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue103, site103, serverGroup103,true)); %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td width="100%" class="backbar_left">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="button"><input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("SiteApplicationDetailsGeneral.BackToSiteApplications.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>		
<% out.print("</form>"); %><% printFooter(out); %>