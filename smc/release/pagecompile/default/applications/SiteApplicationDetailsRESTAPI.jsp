<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator -->
<div class="breadcrumb" style="margin: 0 0 7px 0">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.Applications.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.RESTAPI.link","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% {Object temp_obj = ("RESTAPI"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"applications/SiteApplicationDetailsTabs", null, "16");} %></td>
</tr>
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ResourceHierarchy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><br/>
<a href="<%=context.getFormattedValue(context.webRoot(),null)%>/swagger/is_index.html?app=<%=context.getFormattedValue(getObject("Application:Site:DomainName"),null)%>/<%=context.getFormattedValue(getObject("Application:UrlIdentifier"),null)%>" target="_blank">Show in SWAGGER UI...</a><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ResourceHierarchy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s table_header center" style="white-space:nowrap;"><% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.Path.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e s table_header center"><% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.Class.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail top w e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("ResourceHierarchy:PathName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail top e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("ResourceHierarchy:ImplementingClass:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% {Object temp_obj = (getObject("ResourceHierarchy:AllPaths:EntrySet")); getPipelineDictionary().put("PathMap", temp_obj);} %><% while (loop("PathMap","PathInfo",null)) { %><tr>
<td class="table_detail top w e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("PathInfo:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail top e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("PathInfo:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<% } %></table><% } else { %><div class="w e s">
<p style="padding: 3px 6px; margin: 0; font-family: Verdana,Geneva,Arial,Helvetica,sans-serif; font-size: 11px"><% {out.write(localizeISText("SiteApplicationDetailsRESTAPI.ThisApplicationHasNoRESTAPIAssigned","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div><% } %><% URLPipelineAction action101 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));String site101 = null;String serverGroup101 = null;String actionValue101 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null);if (site101 == null){  site101 = action101.getDomain();  if (site101 == null)  {      site101 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup101 == null){  serverGroup101 = action101.getServerGroup();  if (serverGroup101 == null)  {      serverGroup101 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewSiteApplications-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("Site:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue101, site101, serverGroup101,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("SiteApplicationDetailsRESTAPI.BackToSiteApplications.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><% printFooter(out); %>