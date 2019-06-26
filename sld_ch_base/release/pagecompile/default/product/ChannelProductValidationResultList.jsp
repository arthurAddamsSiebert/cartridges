<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ValidationRuleConfigurationID",null),context.getFormattedValue(getObject("ValidationRuleConfigurationID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductValidationResultList.ProductValidationResult.text",null)))}, 3); %><!-- Main Content --><% URLPipelineAction action11 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Dispatch",null)))),null));String site11 = null;String serverGroup11 = null;String actionValue11 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Dispatch",null)))),null);if (site11 == null){  site11 = action11.getDomain();  if (site11 == null)  {      site11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup11 == null){  serverGroup11 = action11.getServerGroup();  if (serverGroup11 == null)  {      serverGroup11 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productValdationResultList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue11, site11, serverGroup11,true)); %><input type="hidden" name="ValidationRuleConfigurationID" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("ValidationRuleConfigurationID"),null),null)%>">
<input type="hidden" name="ValidationAssortmentID" value="<%=context.getFormattedValue(context.getFormattedValue(getObject("ValidationAssortmentID"),null),null)%>">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("validationresult.page.title","",null,context.getFormattedValue(getObject("ValidationRuleConfigurationBO:Name"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("validationresult.page.title.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ProductValidationResults") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("validationresult.page.no.records","",null,context.getFormattedValue(getObject("ValidationRuleConfigurationBO:Name"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationResults") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ProductValidationResultPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","CurrentChannel"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value7",getObject("ValidationAssortmentID")),
new TagParameter("value2",getObject("CurrentChannel")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","ValidationResultBORepository"),
new TagParameter("value4",getObject("ValidationRuleConfigurationID")),
new TagParameter("value3",getObject("ValidationResultBORepository")),
new TagParameter("key4","ValidationRuleConfigurationID"),
new TagParameter("key7","ValidationAssortmentID"),
new TagParameter("mapname","params")}, 27); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/ChannelProductValidationResultListColumns.isml"),
new TagParameter("configuration","productvalidationresultlist"),
new TagParameter("datatemplate","product/ChannelProductValidationResultListData.isml"),
new TagParameter("pageable",getObject("ProductValidationResults")),
new TagParameter("id","ProductValidationResultList"),
new TagParameter("pageablename","ProductValidationResults"),
new TagParameter("params",getObject("params"))}, 36); %></td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "49");} %><% printFooter(out); %>