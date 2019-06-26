<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.ProductDetails.text",null)))}, 2); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:Name(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; 
<% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action647 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));String site647 = null;String serverGroup647 = null;String actionValue647 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null);if (site647 == null){  site647 = action647.getDomain();  if (site647 == null)  {      site647 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup647 == null){  serverGroup647 = action647.getServerGroup();  if (serverGroup647 == null)  {      serverGroup647 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue647, site647, serverGroup647,true)); %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.AreYouSureThatYouWantToDeleteThisProduct.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.OK.button",null)),null)%>" class="button"/>
</td>
<td>&nbsp;</td>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="cancelDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr><% } %></table><% URLPipelineAction action648 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-DeletedProductDetails",null)))),null));String site648 = null;String serverGroup648 = null;String actionValue648 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-DeletedProductDetails",null)))),null);if (site648 == null){  site648 = action648.getDomain();  if (site648 == null)  {      site648 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup648 == null){  serverGroup648 = action648.getServerGroup();  if (serverGroup648 == null)  {      serverGroup648 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-DeletedProductDetails",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue648, site648, serverGroup648,true)); %><input hidden="true" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input hidden="true" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input hidden="true" name="JumpTo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JumpTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="2">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select"><% while (loop("Locales","aLocale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("aLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("aLocale:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("aLocale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.Apply.button",null)),null)%>" class="button"/></td>
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
</table><% out.print("</form>"); %> 
<% URLPipelineAction action649 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));String site649 = null;String serverGroup649 = null;String actionValue649 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null);if (site649 == null){  site649 = action649.getDomain();  if (site649 == null)  {      site649 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup649 == null){  serverGroup649 = action649.getServerGroup();  if (serverGroup649 == null)  {      serverGroup649 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue649, site649, serverGroup649,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.StandardProductAttributes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.ProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.Supplier.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.SupplierProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.Manufacturer.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.ManufacturerProductID.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.PackingUnit.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.MinOrderQuantity.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:MinOrderQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.StepQuantity.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:StepQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="productdetail_item s e" width="50%"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.EANUCCCode.productdetail_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="productdetail_value s" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:EANCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("CustomAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% while (loop("CustomAttributes","CA",null)) { %><tr>
<td class="productdetail_item s e" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("CA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:&nbsp;</td>
<td class="productdetail_value s" width="50%"><% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("av",getObject("CA"))}, 132); %></td>
</tr><% } %><% } %><tr>
<td class="table_header s" colspan="2"><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.ListPrices.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr><% while (loop("Currencies","Currency",null)) { %><tr>
<td class="productdetail_item s e" width="50%"><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:&nbsp;</td>
<td class="productdetail_value s" width="50%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:ListPrice(Currency:Mnemonic):Amount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ListPrice(Currency:Mnemonic):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("ProductHistoryDeletedProductDetails.NA.productdetail_value",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><tr>
<td colspan="2">
<table class="s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="restore" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.Restore.button",null)),null)%>" class="button"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
</td>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeletedProductDetails.Delete.button",null)),null)%>" class="button"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "174");} %><% printFooter(out); %>