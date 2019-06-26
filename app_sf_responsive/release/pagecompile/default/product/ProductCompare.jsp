<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><% context.setCustomTagTemplateName("productcomparepaging","product/ProductComparePaging.isml",true,new String[]{"ProductBOs"},null); %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 14); %></div>
<div class="product-list">
<h1><% {out.write(localizeISText("product.compare.link","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><h2><% {out.write(localizeISText("product.compare.selected_product_count.message","",null,getObject("ProductBOs:ElementCount"),null,null,null,null,null,null,null,null,null));} %></h2><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productcomparepaging", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 28); %><div class="table-responsive table-compare">
<table class="table">
<tbody>
<tr>
<th class="col-xs-6 col-sm-3">&nbsp;</th><% while (loop("ProductBOs","ProductBO",null)) { %><td class="col-xs-6 col-sm-3">
<div class="product-image">
<a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";out.write(value);} %>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","M")}, 40); %></a>
<a class="btn-tool" title="<% {out.write(localizeISText("product.compare.remove.link","",null,null,null,null,null,null,null,null,null,null,null));} %>" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Delete",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductCompareRefID",null),context.getFormattedValue(getObject("ProductBO:ProductRef"),null)))),null)%>">
<span class="glyphicon glyphicon-trash"></span>
</a>
</div>
<div>
<a class="product-title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</div>
<div class="product-number">
<label><% {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<span <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>itemprop="sku"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div><% URLPipelineAction action52 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));String site52 = null;String serverGroup52 = null;String actionValue52 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null);if (site52 == null){  site52 = action52.getDomain();  if (site52 == null)  {      site52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup52 == null){  serverGroup52 = action52.getServerGroup();  if (serverGroup52 == null)  {      serverGroup52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue52, site52, serverGroup52,true)); %><input type="hidden" name="SKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBOs:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% processOpenTag(response, pageContext, "addtocart", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 64); %><% out.print("</form>"); %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.compare.price.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 73); %></td><% } %></tr>
<tr>
<th></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "productavailability", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 85); %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.compare.ratings.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td>
<div><% processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("SimpleRatingView","true")}, 94); %></div>
</td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.short_description.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("ProductBO:ShortDescription"))}, 107); %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.manufacturer_name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.manufacturer_sku.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr><% while (loop("CommonAttributeNames","common",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(common)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><tr>
<th><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:AttributeDescriptor(common):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(common)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel","")}, 134); %></td><% } %></tr><% } %><% } %><tr>
<th><% {out.write(localizeISText("product.specific_attributes.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><dl class="ish-productAttributes"><% while (loop("SpecificAttributeNames","specific",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:Attribute(specific)")))).booleanValue() && ((Boolean) getObject("ProductBO:isAttributeLocalized(specific)")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 153); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 155); %><% }} %><% } %><% } %></dl><% } %></td><% } %></tr>
</tbody>
</table>
</div>
<script>
var $table = $('.table');
var $fixedColumn = $table.clone().insertBefore($table).addClass('fixed-column');
$fixedColumn.find('th:not(:first-child),td:not(:first-child)').remove();
$fixedColumn.find('tr').each(function (i, elem) {
$(this).height($table.find('tr:eq(' + i + ')').height());
});
</script><% processOpenTag(response, pageContext, "productcomparepaging", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 179); %><% } else { %><p><% {out.write(localizeISText("product.compare.no_product_selected.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div><% printFooter(out); %>