<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/link/LinkPageScript", null, "2");} %><% context.setCustomTagTemplateName("categorylinknavtable","category/link/CategoryLinkNavTableModule.isml",false,new String[]{"linktypes","categorygroup","productgroup","direction","linkboctnr"},null); %><% context.setCustomTagTemplateName("assignedproductandcategorylist","category/link/AssignedProductAndCategoryList.isml",false,new String[]{"linktypesall"},null); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkList.Links.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("Category:DisplayName"))}, 18); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentChannelPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentUserPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %><% } %><!-- Working Area -->
<!-- tabs --><% {Object temp_obj = ("Links"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/CatalogTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "32");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryTabs", null, "34");} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("CategoryLinkList.Links.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td valign="top" class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CatalogBO:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkList.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkList.SharedFromAnother.title",null)),null)%>" border="0"/> 
<% {out.write(localizeISText("CategoryLinkList.ThisCatalogIsSharedFrom",null,null,encodeString(context.getFormattedValue(getObject("CatalogBO:OriginalCatalogBO:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %><br><% } %><% {out.write(localizeISText("CategoryLinkList.TheListBelowShowsAllLinkTypesAndTheirAssignedProdu",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("CategoryLinkList.LinkTypes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s" >
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="6" /></td>
</tr>
<tr>
<td>
<table border="0" width="100%" name="category_links_select" id="category_outgoing_links_select">
<tr>
<td class="table_detail3"><% {out.write(localizeISText("CategoryLinkList.LinksFor.table_detail3",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinknavtable", new TagParameter[] {
new TagParameter("categorygroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\")")),
new TagParameter("linkboctnr",getObject("LinkBOCtnr")),
new TagParameter("linktypes",getObject("CategoryLinkTypes")),
new TagParameter("productgroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_PRODUCT\")")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"OUTGOING\")"))}, 71); %></td>
</tr>
</table>
</td>
<td>
<table width="100%" border="0" name="category_incoming_links_select" id="category_incoming_links_select">
<tr>
<td class="table_detail3"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinknavtable", new TagParameter[] {
new TagParameter("categorygroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\")")),
new TagParameter("linkboctnr",getObject("LinkBOCtnr")),
new TagParameter("linktypes",getObject("CategoryLinkTypes")),
new TagParameter("productgroup",getObject("LinkBOCtnr:LinkTypeGroup(\"PRODUCT_CATEGORY\")")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"INCOMING\")"))}, 91); %> 
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="6" /></td>
</tr>
</table><% processOpenTag(response, pageContext, "assignedproductandcategorylist", new TagParameter[] {
new TagParameter("linktypesall",getObject("CategoryLinkTypes"))}, 108); %> 
<script type="text/javascript">
$(document).ready(function() {
$('<tr class="nowrap"><td class="table_detail_actions"><a class="tableheader mass-action" data-action="select" href="<%=context.getFormattedValue("#",null)%>">show all</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="tableheader mass-action" data-action="deselect" href="<%=context.getFormattedValue("#",null)%>">hide all</a></td></tr>').insertAfter($('table<%=context.getFormattedValue("#",null)%>category_outgoing_links_select > tbody > tr:first-child'));
$('<tr class="nowrap"><td class="table_detail_actions"><a class="tableheader mass-action" data-action="select" href="<%=context.getFormattedValue("#",null)%>">show all</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="tableheader mass-action" data-action="deselect" href="<%=context.getFormattedValue("#",null)%>">hide all</a></td></tr>').insertAfter($('table<%=context.getFormattedValue("#",null)%>category_incoming_links_select > tbody > tr:first-child'));
$(document).delegate('.mass-action', 'click', function(ev) {
ev.preventDefault();
$(this).parents('table:eq(0)').find(':checkbox').prop('checked', $(this).data('action') == 'select' || false).trigger('change');
});
});
</script><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "123");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>