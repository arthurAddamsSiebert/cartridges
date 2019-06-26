<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Tabs --><% {Object temp_obj = ("Source"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/ProcessChainTabs", null, "6");} %><!-- EO Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title w e s n" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("process.chain.source.tab","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("process.chain.source.table.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="w e s">
<tr>
<td class="table_detail">
<textarea name="ProcessChainName" class="inputfield_en" rows="10" cols="200" readonly><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Source"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left"><% URLPipelineAction action703 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));String site703 = null;String serverGroup703 = null;String actionValue703 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null);if (site703 == null){  site703 = action703.getDomain();  if (site703 == null)  {      site703 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup703 == null){  serverGroup703 = action703.getServerGroup();  if (serverGroup703 == null)  {      serverGroup703 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("BackForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue703, site703, serverGroup703,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td align="left" class="w100"><input type="submit" class="button" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("process.chain.params.backToList",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="back" /></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>