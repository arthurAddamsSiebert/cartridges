<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-BrowseCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelBrowseCatalog.Step1SelectCategories.text",null)))}, 7); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelBrowseCatalog.URLExportSelectCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Handling -->
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelBrowseCatalog.YouHaveNotSelectedACategory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling --> 
<tr>
<td class="w e s table_title_description"><% {out.write(localizeISText("ChannelBrowseCatalog.Step1Of2NextStepConfigureExport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action53 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null));String site53 = null;String serverGroup53 = null;String actionValue53 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null);if (site53 == null){  site53 = action53.getDomain();  if (site53 == null)  {      site53 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup53 == null){  serverGroup53 = action53.getServerGroup();  if (serverGroup53 == null)  {      serverGroup53 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CategoryTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue53, site53, serverGroup53,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("handlerpipeline","ViewChannelURLExport"),
new TagParameter("selectiontype","multiple"),
new TagParameter("enabledetailslink","false"),
new TagParameter("checkedcategoryuuidmap",getObject("CheckedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("DisabledCategoryUUIDMap"))}, 52); %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelBrowseCatalog.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="CatalogUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="selectConfigurationCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelBrowseCatalog.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelBrowseCatalog.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>