<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Content.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 7); %><% {Object temp_obj = ("Content"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "10");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("sld_enterprise_app.Content.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %> 
<!-- product locking information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "20");} %><!-- end product locking information --><% } %><!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "24");} %><!-- end product sharing information --> 
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "31");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Pages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Product"),
new TagParameter("parametername0","ProductID"),
new TagParameter("parametervalue0",getObject("Product:UUID")),
new TagParameter("ContextPipeline","ViewProductContent-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","true"),
new TagParameter("ContextObject",getObject("Product")),
new TagParameter("Disabled",(((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )}, 39); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Includes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "viewcontextassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","Product"),
new TagParameter("parametername0","ProductID"),
new TagParameter("parametervalue0",getObject("Product:UUID")),
new TagParameter("ContextPipeline","ViewProductContent-ListPageletEntryPoints"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Page","false"),
new TagParameter("ContextObject",getObject("Product")),
new TagParameter("Disabled",(((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )}, 58); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductContent-ListPageletEntryPoints"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 71); %><% printFooter(out); %>