<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- search mask -->
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e n">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeConsumerSearchMask_52.SearchPanel.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">&nbsp; <%-- switch to advanced search --%></td>
</tr>
<tr>
<td colspan="4"><% URLPipelineAction action150 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null));String site150 = null;String serverGroup150 = null;String actionValue150 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null);if (site150 == null){  site150 = action150.getDomain();  if (site150 == null)  {      site150 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup150 == null){  serverGroup150 = action150.getServerGroup();  if (serverGroup150 == null)  {      serverGroup150 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionCodeConsumerSearchForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue150, site150, serverGroup150,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="Code" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCode:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table>
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="15%"/>
<!-- to prevent to wide infobox in Firefox <col width="35%"/>-->
</colgroup>
<tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeConsumerSearchMask_52.OrderNumber.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="DefaultButton" value="findSimple"/>
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeConsumerSearchForm:SearchTerm:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeConsumerSearchForm:SearchTerm:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeConsumerSearchMask_52.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr> 
</table><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO search mask --><% printFooter(out); %>