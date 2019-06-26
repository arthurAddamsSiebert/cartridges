<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/Modules", null, "5");} %><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","CatDisplayName"),
new TagParameter("Category",getObject("Category")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listView","true"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogCategoryPageletEntryPoints.Content.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogCategoryContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("CatDisplayName"))}, 8); %><!-- Working Area -->
<!-- Tabs --><%getPipelineDictionary().put("SelectedTab", "Content");%><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/CatalogTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "15");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryTabs", null, "17");} %><% } %><!-- EO tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ChannelCatalogCategoryPageletEntryPoints.Content.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogCategoryPageletEntryPoints.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogCategoryPageletEntryPoints.SharedFromAnother.title",null)),null)%>" border="0"/> 
<% {out.write(localizeISText("ChannelCatalogCategoryPageletEntryPoints.ThisCatalogIsSharedFrom",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogCategoryPageletEntryPoints.Pages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Category"),
new TagParameter("parametername0","CatalogCategoryID"),
new TagParameter("parametername1","CatalogID"),
new TagParameter("parametervalue2",getObject("ChannelID")),
new TagParameter("parametervalue1",getObject("Catalog:Id")),
new TagParameter("parametername2","ChannelID"),
new TagParameter("parametervalue0",getObject("Category:UUID")),
new TagParameter("ContextPipeline","ViewChannelCatalogCategoryContent-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","true"),
new TagParameter("ContextObject",getObject("Category"))}, 40); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogCategoryPageletEntryPoints.Includes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Category"),
new TagParameter("parametername0","CatalogCategoryID"),
new TagParameter("parametername1","CatalogID"),
new TagParameter("parametervalue2",getObject("ChannelID")),
new TagParameter("parametervalue1",getObject("Catalog:Id")),
new TagParameter("parametername2","ChannelID"),
new TagParameter("parametervalue0",getObject("Category:UUID")),
new TagParameter("ContextPipeline","ViewChannelCatalogCategoryContent-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","false"),
new TagParameter("ContextObject",getObject("Category"))}, 61); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "75");} %><% printFooter(out); %>