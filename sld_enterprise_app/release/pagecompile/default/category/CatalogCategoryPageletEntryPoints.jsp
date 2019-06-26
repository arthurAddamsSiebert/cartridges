<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","CatDisplayName"),
new TagParameter("Category",getObject("Category")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listView","true"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryPageletEntryPoints.Content.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("CatDisplayName"))}, 6); %><!-- tabs --><% {Object temp_obj = ("Content"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryTabs", null, "10");} %><!-- EO tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("CatalogCategoryPageletEntryPoints.Content.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryPageletEntryPoints.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategoryPageletEntryPoints.SharedFromAnother.title",null)),null)%>" border="0"/> 
<% {out.write(localizeISText("CatalogCategoryPageletEntryPoints.ThisCatalogIsSharedFrom0",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("CatalogCategoryPageletEntryPoints.Pages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Category"),
new TagParameter("parametername0","CatalogCategoryID"),
new TagParameter("parametername1","CatalogUUID"),
new TagParameter("parametervalue1",getObject("Catalog:UUID")),
new TagParameter("parametervalue0",getObject("Category:UUID")),
new TagParameter("ContextPipeline","ViewCategory-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","true"),
new TagParameter("ContextObject",getObject("Category"))}, 33); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("CatalogCategoryPageletEntryPoints.Includes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Category"),
new TagParameter("parametername0","CatalogCategoryID"),
new TagParameter("parametername1","CatalogUUID"),
new TagParameter("parametervalue1",getObject("Catalog:UUID")),
new TagParameter("parametervalue0",getObject("Category:UUID")),
new TagParameter("ContextPipeline","ViewCategory-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","false"),
new TagParameter("ContextObject",getObject("Category"))}, 53); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "65");} %><% printFooter(out); %>