<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.SharingDetails.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("id","ProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 4); %><% {Object temp_obj = ("Sharing"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "7");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><!-- product locking information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "20");} %><!-- end product locking information --><% } %><!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "24");} %><!-- end product sharing information -->
<tr>
<td valign="top" class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.TheListShowsAllChannelsSharingThisProductAndRelate.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action106 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-ProductDetails",null)))),null));String site106 = null;String serverGroup106 = null;String actionValue106 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-ProductDetails",null)))),null);if (site106 == null){  site106 = action106.getDomain();  if (site106 == null)  {      site106 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup106 == null){  serverGroup106 = action106.getServerGroup();  if (serverGroup106 == null)  {      serverGroup106 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-ProductDetails",null)))),null));out.print("\"");out.print(" name=\"");out.print("formProductShippingCharge");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue106, site106, serverGroup106,true)); %><input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="SelectedCurrency_Code"><% {out.write(localizeISText("sld_enterprise_app.SelectCurrency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency_Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedCurrency_Code")); getPipelineDictionary().put("ThisCurrencyCode", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentSession:CurrencyCode")); getPipelineDictionary().put("ThisCurrencyCode", temp_obj);} %><% } %><select name="SelectedCurrency_Code" id="SelectedCurrency_Code" class="select inputfield_en"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ThisCurrencyCode"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>selected="selected"<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="searchByCurrency" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("sld_enterprise_app.Channel.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.BasePrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WorkingCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>)</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.PriceInChannel.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WorkingCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>)</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.DetailedShippingChargesSurcharges.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SharedProducts","shared",null)) { %><% {try{executePipeline("ProcessProductShippingCharge-GetAllShippingCharges",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductID",getObject("shared:UUID")))).addParameter(new ParameterEntry("ProductDomain",getObject("shared:Domain"))).addParameter(new ParameterEntry("Domain",getObject("shared:Domain:Site"))).addParameter(new ParameterEntry("ShippingCharge_Currency",getObject("ThisCurrencyCode")))))),"ShippingMethodDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 78.",e);}} %><% while (loop("ShippingMethodDic:ProductShippingCharges",null,"elmtCount")) { %><% {Object temp_obj = (getObject("elmtCount")); getPipelineDictionary().put("ShippingChargesElmtSize", temp_obj);} %><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {try{executePipeline("ViewProduct-GetRepositoryDisplayName",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("RepositoryDomain",getObject("shared:Domain"))))))),"ChannelName");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 84.",e);}} %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelName:RepositoryDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSharingHelper:get(shared:Domain):InboundProductSet")))).booleanValue() && !((Boolean) (getObject("ProductSharingHelper:get(shared:Domain):InboundProductSet:isInProducts(shared)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s right" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency_Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("SelectedCurrency_Code")),
new TagParameter("Product",getObject("Product"))}, 96); %><% } else { %><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:CurrencyCode")),
new TagParameter("Product",getObject("Product"))}, 98); %><% } %> 
</td>
<td class="table_detail e s right" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency_Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("SelectedCurrency_Code")),
new TagParameter("Product",getObject("shared"))}, 103); %><% } else { %><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:CurrencyCode")),
new TagParameter("Product",getObject("shared"))}, 105); %><% } %> 
</td>
<td class="table_detail e s right" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ShippingMethodDic:ProductShippingCharges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.None.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ShippingChargesElmtSize")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% while (loop("ShippingMethodDic:ProductShippingCharges","productShippingCharges",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("productShippingCharges:Type"),null).equals(context.getFormattedValue("override",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.OverrideShippingCharges.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Surcharge.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% } else { %> 
<% {out.write(localizeISText("sld_enterprise_app.DetailedOverrideShippingChargesSurcharge.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingMethodDic:ProductShippingCharges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><tr>
<td>&nbsp;</td>
<td colspan="4" class="w e s">
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("ShippingMethodDic:ProductShippingCharges","ShippingCharge",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><tr>
<td class="table_header e" nowrap="nowrap" width="8%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("counter"),null).equals(context.getFormattedValue(new Double(1),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ShippingMethod.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } %></td>
<td class="table_detail2 e" width="22%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingCharge:ShippingMethod"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.All.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingCharge:ShippingMethod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_header e" nowrap="nowrap" width="6%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("counter"),null).equals(context.getFormattedValue(new Double(1),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Region.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } %></td>
<td class="table_detail2 e" width="14%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingCharge:Region"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.All.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingCharge:Region"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_header e" nowrap="nowrap" width="4%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("counter"),null).equals(context.getFormattedValue(new Double(1),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } %></td>
<td class="table_detail2 e" width="19%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingCharge:Type"),null).equals(context.getFormattedValue("override",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.OverrideShippingCharges.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Surcharge.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
<td class="table_header e" nowrap="nowrap" width="8%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("counter"),null).equals(context.getFormattedValue(new Double(1),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;(<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCurrency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WorkingCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>):<% } %></td>
<td class="table_detail2 right" width="19%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingCharge:Price"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><% {try{executePipeline("ProcessProductShippingCharge-CheckPrice",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("LocalizedString",context.getFormattedValue("",null) + context.getFormattedValue(getObject("ShippingCharge:Price"),null)))).addParameter(new ParameterEntry("CurrencyMnemonic",getObject("ThisCurrencyCode")))))),"CheckPriceDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 156.",e);}} %><% {String value = null;try{value=context.getFormattedValue(getObject("CheckPriceDic:MoneyValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %> 
</td>
</tr><% } %></table>
</td>
</tr><% } %> 
<% } %><% } else { %><tr>
<td colspan="6" class="table_detail w e s"><% {out.write(localizeISText("sld_enterprise_app.TheProductIsNotSharedToOtherChannels.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductSharing-ProductDetails"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 180); %><!-- EO Working Area --><% printFooter(out); %>