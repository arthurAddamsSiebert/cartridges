<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-CatalogDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",getObject("Catalog:DisplayName"))}, 4); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<!-- Welcome Note -->
<td width="100%" valign="top">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n">&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top" class="e w" width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.CatalogName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="200" height="1" alt="" border="0"/></td>
<td width="100%" class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail s" nowrap="nowrap"><b><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCatalogDetails.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% URLPipelineAction action173 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-ListCatalogs",null)))),null));String site173 = null;String serverGroup173 = null;String actionValue173 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-ListCatalogs",null)))),null);if (site173 == null){  site173 = action173.getDomain();  if (site173 == null)  {      site173 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup173 == null){  serverGroup173 = action173.getServerGroup();  if (serverGroup173 == null)  {      serverGroup173 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-ListCatalogs",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue173, site173, serverGroup173,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterCategoryWizardCatalogDetails.Back.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>