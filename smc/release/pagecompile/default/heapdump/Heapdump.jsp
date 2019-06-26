<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="aldi table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Threaddump-Dispatch",null)))),null)%>"><% {out.write(localizeISText("Heapdump.Threaddump.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("Heapdump.Heapdump.table_tabs_en_background","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Tabs -->
<!-- Title -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title"><% {out.write(localizeISText("Heapdump.DumpGenerationHeapdump.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Title -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Heapdump.SpecifyWhichInformationIsCollected.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ClusterInfoPropertyEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td> 
<td class="error top" width="100%"><% {out.write(localizeISText("Heapdump.PropertyChangesCouldNotBeDistributed.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Errors -->
<!-- Application server -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Heapdump.ApplicationServer.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Application server -->
<!-- ServerMenu --><% URLPipelineAction action17 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null));String site17 = null;String serverGroup17 = null;String actionValue17 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null);if (site17 == null){  site17 = action17.getDomain();  if (site17 == null)  {      site17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup17 == null){  serverGroup17 = action17.getServerGroup();  if (serverGroup17 == null)  {      serverGroup17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("HeapdumpServer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue17, site17, serverGroup17,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"heapdump/HeapdumpServer", null, "57");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="HeapdumpServerApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Heapdump.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO ServerMenu -->
<!-- confirm settings --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Create"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("NoServerSelected")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification w e s">
<tr> 
<td class="top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" border="0"/></td>
<td width="100%"><% {out.write(localizeISText("Heapdump.GeneratedHeapdumpForTheSelectedAppserver.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoServerSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% {out.write(localizeISText("Heapdump.NoHeapdumpIsGenerated.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("HeapdumpEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% {out.write(localizeISText("Heapdump.HeapdumpGenerationError.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %></td>
</tr>
</table><% } %><% } %><!-- EO confirm settings -->
<!-- Heapdump Info -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s" colspan="2"><% {out.write(localizeISText("Heapdump.HeapdumpInformation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Heapdump Info -->
<!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("Heapdump.UseTheCheckboxesToSelectTheIntendedTypes.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<!-- Properties Menu --><% URLPipelineAction action18 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null));String site18 = null;String serverGroup18 = null;String actionValue18 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null);if (site18 == null){  site18 = action18.getDomain();  if (site18 == null)  {      site18 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup18 == null){  serverGroup18 = action18.getServerGroup();  if (serverGroup18 == null)  {      serverGroup18 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Heapdump-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("Heapdump");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue18, site18, serverGroup18,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"heapdump/HeapdumpProperties", null, "121");} %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="HeapdumpPropertiesApply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Heapdump.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Heapdump.CreateHeapdump.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO Properties Menu --><% printFooter(out); %>