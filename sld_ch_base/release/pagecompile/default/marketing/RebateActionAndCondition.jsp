<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionActionAndCondition-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("nowizard","true"),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",localizeText(context.getFormattedValue("RebateActionAndCondition.ActionAndCondition.text",null)))}, 6); %><!-- Tabs --><% {Object temp_obj = ("InclusionExclusion"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionTabsInc", null, "9");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("RebateActionAndCondition.ActionAndCondition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("RebateActionAndCondition.JustTemporaryPageAtTheMoment.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action314 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionActionAndCondition-Dispatch",null)))),null));String site314 = null;String serverGroup314 = null;String actionValue314 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionActionAndCondition-Dispatch",null)))),null);if (site314 == null){  site314 = action314.getDomain();  if (site314 == null)  {      site314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup314 == null){  serverGroup314 = action314.getServerGroup();  if (serverGroup314 == null)  {      serverGroup314 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionActionAndCondition-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionAndConditionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue314, site314, serverGroup314,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="20" alt="" border="0"/></td>
</tr>
<tr>
<td width="100%" class="table_title2 aldi" colspan="4"><% {out.write(localizeISText("RebateActionAndCondition.DefineInclusionsExclusionsForACondition.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right" colspan="6">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="RebateConditionID" value="<%=context.getFormattedValue(getObject("RebateCondition:UUID"),null)%>"/>
<input class="button" type="submit" name="newConditionInEx" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RebateActionAndCondition.New.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="20" alt="" border="0"/></td>
</tr>
<tr>
<td width="100%" class="table_title2 aldi" colspan="4"><% {out.write(localizeISText("RebateActionAndCondition.DefineInclusionsExclusionsForAnAction.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right" colspan="6">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="RebateActionID" value="<%=context.getFormattedValue(getObject("RebateAction:UUID"),null)%>"/>
<input class="button" type="submit" name="newActionInEx" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RebateActionAndCondition.New.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% printFooter(out); %>