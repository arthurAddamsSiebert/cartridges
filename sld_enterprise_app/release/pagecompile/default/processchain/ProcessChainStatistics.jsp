<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs --><% {Object temp_obj = ("Statistics"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/ProcessChainTabs", null, "6");} %><!-- EO Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title w e s n" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("process.chain.statistics.tab","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("process.chain.statistics.table.description","",null,null,null,null,null,null,null,null,null,null,null));} %> <br/><br/><% {out.write(localizeISText("process.chain.statistics.actions.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="w e s">
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("process.chain.statistics.lastExecution","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("process.chain.statistics.runtimeExecution","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProcessChain:LastExecutionDuration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:LastExecutionDuration"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("process.chain.statistics.second","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("process.chain.statistics.status","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Status"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="label_text" nowrap="nowrap"><label class="label label_text"><% {out.write(localizeISText("process.chain.statistics.serverBinding","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Job:ServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% URLPipelineAction action696 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainStatistics-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessChainID",null),context.getFormattedValue(getObject("ProcessChain:ID"),null)))),null));String site696 = null;String serverGroup696 = null;String actionValue696 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainStatistics-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessChainID",null),context.getFormattedValue(getObject("ProcessChain:ID"),null)))),null);if (site696 == null){  site696 = action696.getDomain();  if (site696 == null)  {      site696 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup696 == null){  serverGroup696 = action696.getServerGroup();  if (serverGroup696 == null)  {      serverGroup696 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainStatistics-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessChainID",null),context.getFormattedValue(getObject("ProcessChain:ID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ProcessChainStatisticsForm");out.print("\"");out.print(" id=\"");out.print("ProcessChainStatisticsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue696, site696, serverGroup696,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="refresh" value="<% {out.write(localizeISText("process.chain.statistics.refresh","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left"><% URLPipelineAction action697 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));String site697 = null;String serverGroup697 = null;String actionValue697 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null);if (site697 == null){  site697 = action697.getDomain();  if (site697 == null)  {      site697 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup697 == null){  serverGroup697 = action697.getServerGroup();  if (serverGroup697 == null)  {      serverGroup697 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("BackForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue697, site697, serverGroup697,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td align="left" class="w100"><input type="submit" class="button" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("process.chain.params.backToList",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="back" /></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>