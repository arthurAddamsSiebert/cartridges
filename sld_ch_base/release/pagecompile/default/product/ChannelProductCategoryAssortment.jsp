<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
$(document).ready(function() {
$(document).delegate('<%=context.getFormattedValue("#",null)%>AssortmentDiv_com_intershop_component_product_validation_internal_assortment_ProductCategoryAssignmentAssortmentDescriptor', 'onJSONReady', function(ev, data) {
$('<%=context.getFormattedValue("#",null)%>AssortmentDiv_com_intershop_component_product_validation_internal_assortment_ProductCategoryAssignmentAssortmentDescriptor').html(data);
});
});
</script><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "10");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "11");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Placeholder", null, "12");} %><table class="error_box" cellspacing="0" cellpadding="4" border="0">
<tr id="ProducCategorytValidationAssortmentForm_AssortmentProductCategories_ErrorContainer" class="ErrorContainer" style="display:none;">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("product.validation.assortment.page.assortmentProductCategoriesRequired","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tbody>
<tr>
<td align="left" nowrap="nowrap" class="label" width="130">
<label class="label" for=""><% {out.write(localizeISText("product.validation.assortment.page.productcategories","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<td>
</tr>
<tr>
<td width="100%" valign="top">
<table class="w e s n" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("treeid","tree"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode","multi"),
new TagParameter("categories",getObject("StandardCatalogCategories"))}, 33); %></td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% printFooter(out); %>