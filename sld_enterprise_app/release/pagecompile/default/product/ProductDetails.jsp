<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ProductDetails.text",null)))}, 5); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="table_title_description w e s" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Product:LongDescription(Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:LongDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";out.write(value);} %><% } else { %>&nbsp;<% } %></td>
</tr>
<tr>
<td colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("TargetProductDetailsPipeline")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {Object temp_obj = ("ViewProductDetails-Start"); getPipelineDictionary().put("TargetProductDetailsPipeline", temp_obj);} %><% } %><% URLPipelineAction action59 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetProductDetailsPipeline"),null)))),null));String site59 = null;String serverGroup59 = null;String actionValue59 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetProductDetailsPipeline"),null)))),null);if (site59 == null){  site59 = action59.getDomain();  if (site59 == null)  {      site59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup59 == null){  serverGroup59 = action59.getServerGroup();  if (serverGroup59 == null)  {      serverGroup59 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("TargetProductDetailsPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue59, site59, serverGroup59,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_light label_select" for="LocaleID"><% {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleID" id="LocaleID" class="select inputfield_en"><% while (loop("Locales","aLocale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("aLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("aLocale:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("aLocale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JumpTo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JumpTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr>
<td class="table_header w s nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductImage.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w e s" width="100%"><% {out.write(localizeISText("sld_enterprise_app.StandardProductAttributes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="productdetail_image w s"><% {Object temp_obj = (getObject("ProductImageBO:EffectiveUrl")); getPipelineDictionary().put("ProductImageEffectiveUrl", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductImageEffectiveUrl")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductImageEffectiveUrl"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(getObject("ProductImageEffectiveUrl"),null)%>" border="0" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ProductImage.alt",null)),null)%>"/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/no_image_available.gif" border="0" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.NotAvailable.alt",null)),null)%>"/><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e zebra_table">
<tr>
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr class="odd">
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.Supplier.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.SupplierProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr class="odd">
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.Manufacturer.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.ManufacturerProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr class="odd">
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.PackingUnit.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.MinOrderQuantity.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:MinOrderQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr class="odd">
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.StepQuantity.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:StepQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.EANUCCCode.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:EANCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr class="odd">
<td class="fielditem s e nowrap"><% {out.write(localizeISText("sld_enterprise_app.TaxClass.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("TaxClassesMap:get(Product:TaxClassID):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% {Object temp_obj = ("even"); getPipelineDictionary().put("trClass", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% while (loop("CustomAttributes","CA",null)) { %><tr class="<% {String value = null;try{value=context.getFormattedValue(getObject("trClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<td class="fielditem s e nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:&nbsp;</td>
<td class="table_detail s"><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("av",getObject("CA"))}, 114); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("trClass"),null).equals(context.getFormattedValue("odd",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% {Object temp_obj = ("even"); getPipelineDictionary().put("trClass", temp_obj);} %><% } else { %><% {Object temp_obj = ("odd"); getPipelineDictionary().put("trClass", temp_obj);} %><% } %></tr><% } %><% } %><tr>
<td class="table_detail s" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="table_header s" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.ListPrices.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr><% while (loop("Currencies","Currency",null)) { %><tr>
<td class="fielditem s e nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:&nbsp;</td>
<td class="table_detail s"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("Currency:Mnemonic")),
new TagParameter("Product",getObject("Product"))}, 128); %>&nbsp;
</td>
</tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:Domain:DomainID"),null).equals(context.getFormattedValue(getObject("CurrentRepositoryDomain:DomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("ViewProduct_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Edit",null)); getPipelineDictionary().put("EditProductPipeline", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewProduct-Edit"); getPipelineDictionary().put("EditProductPipeline", temp_obj);} %><% } %><tr>
<td colspan="2" class="w e s" align="right"><% URLPipelineAction action60 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("EditProductPipeline"),null)))),null));String site60 = null;String serverGroup60 = null;String actionValue60 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("EditProductPipeline"),null)))),null);if (site60 == null){  site60 = action60.getDomain();  if (site60 == null)  {      site60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup60 == null){  serverGroup60 = action60.getServerGroup();  if (serverGroup60 == null)  {      serverGroup60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("EditProductPipeline"),null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue60, site60, serverGroup60,true)); %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Edit.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.View.button",null)),null)%>" class="button"/><% } %></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } %><tr>
<td colspan="2">
<!-- Additional content section --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Additionals") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><% {out.write(localizeISText("sld_enterprise_app.ProductAttachments.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" width="0%">&nbsp;</td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Additionals","ac",null)) { %><tr>
<td class="table_detail w e s center" valign="top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ac:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link2" target="_blank"><% } else { %><% processOpenTag(response, pageContext, "contentdescriptorfile", new TagParameter[] {
new TagParameter("file","File"),
new TagParameter("contentdescriptor","ac:Value")}, 187); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("File:DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null)).addURLParameter(context.getFormattedValue("UnitName",null),context.getFormattedValue(getObject("File:UnitDomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link2" target="_blank"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:Value"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("pdf",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:Value"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/Pdficon.gif" border="0" height="20" width="20" alt=""/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:Value"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("doc",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:Value"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/Wordicon.gif" border="0" height="20" width="20" alt=""/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:Value"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("xls",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:Value"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/Excelicon.gif" border="0" height="20" width="20" alt=""/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)((new Double( ((Number) (new Double(context.getFormattedValue(getObject("ac:Value"),null).length()))).doubleValue() -((Number) new Double(3)).doubleValue())))).intValue()),null) + context.getFormattedValue("zip",null),null).toLowerCase()),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("ac:Value"),null).toLowerCase()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/Zipicon.gif" border="0" height="20" width="20" alt=""/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="1" height="20" width="20" alt=""/><% }}}} %></a>&nbsp;
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(pad(context.getFormattedValue(getObject("ac:Value"),null),((Number)(new Double(4))).intValue()),null).toLowerCase()),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ac:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link2" target="_blank"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("File:DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null)).addURLParameter(context.getFormattedValue("UnitName",null),context.getFormattedValue(getObject("File:UnitDomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link2" target="_blank"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("ac:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ac:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><br/><% {String value = null;try{value=context.getFormattedValue(getObject("ac:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";out.write(value);} %><% } else { %><br/><% {out.write(localizeISText("sld_enterprise_app.NoContentDescriptionAvailable.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("ac:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table><% } %><!-- Additional content section --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Product:BundledProductAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><%	Product product = (Product)getObject("Product");
								if ((product.getTypeCode() & 128) == 128) {
									%><% {out.write(localizeISText("sld_enterprise_app.PartsOfRetailSet.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><%
								} else {
									%><% {out.write(localizeISText("sld_enterprise_app.BundledProducts.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><%
								}
							%></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Product:BundledProductAssignments","BPAlinks",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("BPAlinks:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("BPAlinks:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {256}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("BPAlinks:Product:ListPrice(CurrentSession:CurrencyCode):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RetailSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",265,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><% {out.write(localizeISText("sld_enterprise_app.RetailSets.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("RetailSets","PBlinks",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {285}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:ListPrice(CurrentSession:CurrencyCode):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {287}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBundles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><% {out.write(localizeISText("sld_enterprise_app.ProductBundles.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductBundles","PBlinks",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {315}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {316}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PBlinks:ListPrice(CurrentSession:CurrencyCode):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {317}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Product:ProductVariations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",325,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><% {out.write(localizeISText("sld_enterprise_app.VariationProducts.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Product:ProductVariations","pv",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pv:MasteredProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {345}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pv:MasteredProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {346}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pv:MasteredProduct:ListPrice(CurrentSession:CurrencyCode):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {347}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:ProductMaster:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",355,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e s">
<tr>
<td width="100%" class="table_title2"><% {out.write(localizeISText("sld_enterprise_app.VariationMaster.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ProductMaster:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {373}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td width="25%" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ProductMaster:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {374}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (hasLoopElements("ProductLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:OutgoingProductLinksCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasLoopElements("CategoryLinks") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("CategoryLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (((((Boolean) (hasLoopElements("ProductIncomingLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:IncomingProductLinksCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasLoopElements("IncomingCategoryLinks") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",382,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="5" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_title2 s"><% {out.write(localizeISText("sld_enterprise_app.Links.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_enterprise_app.ThisSectionShowsAllProductsAndCategoriesToWhichThi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ProductLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:OutgoingProductLinksCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",401,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4" class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.ThisProductLinksToTheFollowingProducts.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary","ProductLinkCount")) { %><% {Object temp_obj = (getObject("ProductLinkTypeSummary:ProductLinks")); getPipelineDictionary().put("ProductLinksList", temp_obj);} %><% while (loop("ProductLinksList","ProductLink",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {420}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {423}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("ProductLink:TargetProduct"))}, 426); %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",439,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4" class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.ThisProductLinksToTheFollowingCategories.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% while (loop("CategoryLinks","CategoryLink",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" width="25%"><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("Category",getObject("CategoryLink:CatalogCategory"))}, 455); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",455,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",455,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
</td>
<td class="table_detail e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {458}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",458,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",458,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
</td>
<td class="table_detail e s" width="25%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",461,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {462}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" width="25%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.TypedProductCategoryAssignment.",null) + context.getFormattedValue(getObject("CategoryLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",473,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4" class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.ThisCategoryLinksToTheFollowingProducts.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% while (loop("CategoryLinkTypeSummaryIter","CategorytLinkTypeSummary","CategoryLinkCount")) { %><% {Object temp_obj = (getObject("CategoryLinkTypeSummary:ProductLinks")); getPipelineDictionary().put("CategoryProductLinksList", temp_obj);} %><% while (loop("CategoryProductLinksList","ProductLink",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {492}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {495}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("ProductLink:TargetProduct"))}, 498); %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ProductIncomingLinkTypeSummaryIter") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:IncomingProductLinksCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",511,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4" class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.TheFollowingProductsLinkToThisProduct.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% while (loop("ProductIncomingLinkTypeSummaryIter","ProductIncomingLinkTypeSummary","ProductIncomingLinkCount")) { %><% {Object temp_obj = (getObject("ProductIncomingLinkTypeSummary:ProductLinks")); getPipelineDictionary().put("ProductIncomingLinksList", temp_obj);} %><% while (loop("ProductIncomingLinksList","IncomingProductLink",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingProductLink:Source:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {530}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingProductLink:Source:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {533}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("IncomingProductLink:Source"))}, 536); %>&nbsp;
</td>
<td class="table_detail e s" width="25%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("IncomingProductLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncomingCategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",549,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4" class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.TheFollowingCategoriesLinkToThisProduct.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" width="25%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header4",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% while (loop("IncomingCategoryLinks","IncomingCategoryLink",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="table_detail w e s" width="25%"><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("Category",getObject("IncomingCategoryLink:CatalogCategory"))}, 565); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncomingCategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",565,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingCategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",565,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
</td>
<td class="table_detail e s" width="25%"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingCategoryLink:CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {568}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncomingCategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",568,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingCategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",568,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
</td>
<td class="table_detail e s" width="25%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("IncomingCategoryLink:CatalogCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",571,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingCategoryLink:CatalogCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {572}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" width="25%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.TypedProductCategoryAssignment.",null) + context.getFormattedValue(getObject("IncomingCategoryLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %> 
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<!-- sorted (HP) attributes section --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomAttributeNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",591,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="aldi">
<tr>
<td class="table_title2 s"><% {out.write(localizeISText("sld_enterprise_app.AdditionalProductInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2">
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% while (loop("CustomAttributeNames","CA",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CA"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",608,e);}if (_boolean_result) { %><tr>
<td class="fielditem w s e" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CA"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {610}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:&nbsp;</td>
<td class="table_detail s e" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomAttributeValues:get(CA)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {611}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr><% } %><!-- sorted (HP) attributes section -->
<tr>
<td>
<div> 
<% URLPipelineAction action61 = new URLPipelineAction(context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null));String site61 = null;String serverGroup61 = null;String actionValue61 = context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null);if (site61 == null){  site61 = action61.getDomain();  if (site61 == null)  {      site61 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup61 == null){  serverGroup61 = action61.getServerGroup();  if (serverGroup61 == null)  {      serverGroup61 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("ApplicationState:LastListView:Link"),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue61, site61, serverGroup61,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "626");} %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Back.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div>
</td>
</tr>
</table>
<!-- EO Working Area --><% printFooter(out); %>