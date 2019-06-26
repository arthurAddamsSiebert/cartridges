<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewClassificationCatalog-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AdoptClassificationCatalog.AdoptSharedCatalog.text",null)))}, 5); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("AdoptClassificationCatalog.AdoptASharedCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("create")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("AdoptClassificationCatalog.YouHaveNotSelectedAClassificationCatalog.message",null)))}, 14); %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("AdoptClassificationCatalog.TheFollowingClassificationCatalogsAreSharedBy.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- end errors-->
<!-- Main Content --><% URLPipelineAction action510 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewClassificationCatalog-Dispatch",null)))),null));String site510 = null;String serverGroup510 = null;String actionValue510 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewClassificationCatalog-Dispatch",null)))),null);if (site510 == null){  site510 = action510.getDomain();  if (site510 == null)  {      site510 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup510 == null){  serverGroup510 = action510.getServerGroup();  if (serverGroup510 == null)  {      serverGroup510 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewClassificationCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("createForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue510, site510, serverGroup510,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('createForm','CatalogUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AdoptClassificationCatalog.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('createForm','CatalogUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AdoptClassificationCatalog.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("AdoptClassificationCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("AdoptClassificationCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
</tr><% while (loop("ClassificationCatalogs","Catalog",null)) { %><tr>
<td class="table_detail w e s center" nowrap="nowrap">
<input type="checkbox" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedProxyCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% while (loop("SharedProxyCatalogs","Proxy",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Proxy:CatalogDomainID"),null).equals(context.getFormattedValue(getObject("Catalog:CatalogDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>disabled="disabled"<% } %><% } %><% } %>/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><tr>
<td align="right" colspan="3" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AdoptClassificationCatalog.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AdoptClassificationCatalog.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>