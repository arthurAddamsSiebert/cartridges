<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PricingPreferences\"):PriceDisplayPreferences")); getPipelineDictionary().put("PriceDisplayPreferences", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("UserBO:Extension(\"PricingPreferences\"):PriceDisplayPreferences")); getPipelineDictionary().put("PriceDisplayPreferences", temp_obj);} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "12");} %><% context.setCustomTagTemplateName("productcomparepaging","product/ProductComparePaging.isml",true,new String[]{"ProductBOs"},null); %><div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 22); %></div>
<div class="product-list">
<h1><% {out.write(localizeISText("product.compare.link","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><h2><% {out.write(localizeISText("product.compare.selected_product_count.message","",null,getObject("ProductBOs:ElementCount"),null,null,null,null,null,null,null,null,null));} %></h2><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productcomparepaging", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 36); %><div class="table-responsive table-compare">
<table class="table">
<tbody> 
<tr>
<th class="col-xs-6 col-sm-3">&nbsp;</th><% while (loop("ProductBOs","ProductBO",null)) { %><td class="col-xs-6 col-sm-3">
<div class="product-image">
<a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";out.write(value);} %>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","M")}, 48); %></a>
<a class="btn-tool" title="<% {out.write(localizeISText("product.compare.remove.link","",null,null,null,null,null,null,null,null,null,null,null));} %>" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Delete",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductCompareRefID",null),context.getFormattedValue(getObject("ProductBO:ProductRef"),null)))),null)%>">
<span class="glyphicon glyphicon-trash"></span>
</a>
</div>
<div>
<a class="product-title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</div>
<div class="product-number">
<label><% {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<span <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>itemprop="sku"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("ProductBO:Attribute(\"NeedsQuotation\")"))))).booleanValue() || !((Boolean) (getObject("ProductBO:Attribute(\"NeedsQuotation\")"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% URLPipelineAction action26 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));String site26 = null;String serverGroup26 = null;String actionValue26 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null);if (site26 == null){  site26 = action26.getDomain();  if (site26 == null)  {      site26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup26 == null){  serverGroup26 = action26.getServerGroup();  if (serverGroup26 == null)  {      serverGroup26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue26, site26, serverGroup26,true)); %><input type="hidden" name="SKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBOs:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% processOpenTag(response, pageContext, "addtocart", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 73); %><% out.print("</form>"); %><% } %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.compare.price.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 83); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayPreferences:AdditionalText")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PriceDisplayPreferences:AdditionalText"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:TaxClassID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductBO:TaxClassID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((!(context.getFormattedValue(getObject("ProductBO:TaxClassID"),null).equals(context.getFormattedValue("NoTax",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><span class="ish-note">
&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PriceDisplayPreferences:AdditionalText"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span><% } %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.compare.ratings.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td>
<div class="ish-productRating"><% processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("SimpleRatingView","true")}, 101); %></div>
</td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.productid.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("LookupHelper:get(ProductBO:ID):ProductIdentifierMap(ProductBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject:Domain):SellerID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.short_description.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("ProductBO:ShortDescription"))}, 121); %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.long_description.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("ProductBO:LongDescription"))}, 129); %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.manufacturer_name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LookupHelper:get(ProductBO:ID):ProductIdentifierMap:ManufacturerID:Owner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("LookupHelper:get(ProductBO:ID):ProductIdentifierMap:ManufacturerID:Owner"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %></tr>
<tr>
<th><% {out.write(localizeISText("product.manufacturer_sku.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("LookupHelper:get(ProductBO:ID):ProductIdentifierMap:ManufacturerID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr><% while (loop("CommonAttributeNames","common",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(common)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><tr>
<th><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:AttributeDescriptor(common):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(common)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel","")}, 160); %></td><% } %></tr><% } %><% } %><tr>
<th><% {out.write(localizeISText("product.specific_attributes.label","",null,null,null,null,null,null,null,null,null,null,null));} %></th><% while (loop("ProductBOs","ProductBO",null)) { %><td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><dl class="ish-productAttributes"><% while (loop("SpecificAttributeNames","specific",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:Attribute(specific)")))).booleanValue() && ((Boolean) getObject("ProductBO:isAttributeLocalized(specific)")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 179); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 181); %><% }} %><% } %><% } %></dl><% } %></td><% } %></tr>
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
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 205); %><% } else { %><p><% {out.write(localizeISText("product.compare.no_product_selected.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div><% printFooter(out); %>