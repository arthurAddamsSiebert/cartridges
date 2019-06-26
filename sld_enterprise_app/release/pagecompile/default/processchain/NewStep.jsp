<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action707 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));String site707 = null;String serverGroup707 = null;String actionValue707 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null);if (site707 == null){  site707 = action707.getDomain();  if (site707 == null)  {      site707 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup707 == null){  serverGroup707 = action707.getServerGroup();  if (serverGroup707 == null)  {      serverGroup707 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewStepForm");out.print("\"");out.print(" id=\"");out.print("NewStepForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue707, site707, serverGroup707,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="editbox aldi" >
<tr>
<td class="editbox_title"><% {out.write(localizeISText("process.chain.steps.new","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table class="w100" cellspacing="4" cellpadding="0" border="0">
<tbody>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("process.chain.steps.type","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="steptype" class="inputfield_en">
<option value="addJob"><% {out.write(localizeISText("process.chain.steps.job","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="addPipeline"><% {out.write(localizeISText("process.chain.steps.pipeline","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select
</td>
<td class="w100">
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td class="button">
<input class="button" type="submit" value="Apply" name="type">
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td width="100%" align="right" colspan="3">
<table cellspacing="4" cellpadding="0" border="0">
<tbody>
<tr>
<td class="button">
<input type="submit" class="button" value="Cancel" name="cancelAction" />
</td>
</tr>
</tbody>
</table>
</td>
</tr> 
</tbody>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>