<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Overview-Start",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Logging.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SMCLogging2Status.LoggingStatus.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("SMCLogging2Status-Display",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null)).addURLParameter(context.getFormattedValue("TargetParameterName1",null),context.getFormattedValue("CurrentPageSize",null)).addURLParameter(context.getFormattedValue("TargetParameterValue1",null),context.getFormattedValue(getObject("Messages:PageSize"),null)).addURLParameter(context.getFormattedValue("TargetParameterName2",null),context.getFormattedValue("ThresholdLevelFilter",null)).addURLParameter(context.getFormattedValue("TargetParameterValue2",null),context.getFormattedValue(getObject("ThresholdLevelFilter"),null))),null), null, null, "16");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% {Object temp_obj = ("Status"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SMCLogging2Tabs", null, "28");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s " nowrap="nowrap"><% {out.write(localizeISText("smc.Status.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.LastError.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastErrorTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastErrorTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastErrorTime"),"z",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.LastWarning.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastWarnTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastWarnTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:LastWarnTime"),"z",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.TotalErrors.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:TotalErrorCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.TotalWarnings.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:TotalWarnCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.TotalInfos.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:TotalInfoCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.MaxNoOfStoredMessages.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" ><% {String value = null;try{value=context.getFormattedValue(getObject("LogSystemStatus:StatusMessageCapacity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="100%" class="table_title w e s " nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.StatusMessages.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCLogging2Status.ThisListShowsAllStatusMessagesOfTheLoggingSystem.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
<tr>
<td><% URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchParameters");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td colspan="3" class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.Filter.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap" align="right"><% {out.write(localizeISText("SMCLogging2Status.Levels.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item" nowrap="nowrap">
<select name="ThresholdLevelFilter" class="inputfield_en select">
<option value="ERROR" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ThresholdLevelFilter"),null).equals(context.getFormattedValue("ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Errors.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="WARN" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ThresholdLevelFilter"),null).equals(context.getFormattedValue("WARN",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SMCLogging2Status.ErrorsAndWarnings.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INFO" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ThresholdLevelFilter"),null).equals(context.getFormattedValue("INFO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SMCLogging2Status.All.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td width="100%" align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CurrentPageSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Messages:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="search" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Messages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.Time.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2Status.Level.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("SMCLogging2Status.Message.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("Messages","msg",null)) { %><tr>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("msg:TimeStamp"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("msg:TimeStamp"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("msg:TimeStamp"),"z",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("msg:Level"),null).equals(context.getFormattedValue("ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.Error.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("msg:Level"),null).equals(context.getFormattedValue("WARN",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.Warn.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("msg:Level"),null).equals(context.getFormattedValue("INFO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.Info.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("msg:Level"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }}} %></td>
<td class="table_detail s top" width="90%"><% {String value = null;try{value=context.getFormattedValue(getObject("msg:Origin"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("msg:MessageText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value,"nl2br,html");out.write(value);} %></td>
</tr><% } %></table><% URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Status-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("Pagingbar");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); %><table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="hidden" name="ThresholdLevelFilter" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ThresholdLevelFilter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrentPageSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Messages:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Messages"),
new TagParameter("variablepagesize","true")}, 138); %></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("SMCLogging2Status.NoMessagesFound.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% URLPipelineAction action8 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Overview-Start",null)))),null));String site8 = null;String serverGroup8 = null;String actionValue8 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Overview-Start",null)))),null);if (site8 == null){  site8 = action8.getDomain();  if (site8 == null)  {      site8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup8 == null){  serverGroup8 = action8.getServerGroup();  if (serverGroup8 == null)  {      serverGroup8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Overview-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("BackToList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue8, site8, serverGroup8,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>