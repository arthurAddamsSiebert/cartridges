<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.beehive.core.capi.webform.Form"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessWarrantyPrices-PrepareScaledPriceConfig",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductID",getObject("Product:UUID")))).addParameter(new ParameterEntry("ProductDomainID",getObject("Product:DomainID")))))),"warrantyPricesResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% {Object temp_obj = (getObject("warrantyPricesResultDict:ScaledPriceForm")); getPipelineDictionary().put("ScaledPriceForm", temp_obj);} %><% {Object temp_obj = (getObject("warrantyPricesResultDict:ScaledPriceMoreThanForm")); getPipelineDictionary().put("ScaledPriceMoreThanForm", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AddScaledPriceForm")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("warrantyPricesResultDict:AddScaledPriceForm")); getPipelineDictionary().put("AddScaledPriceForm", temp_obj);} %><% } %><% {Object temp_obj = (getObject("warrantyPricesResultDict:BaseProductWarrantyBO")); getPipelineDictionary().put("BaseProductWarrantyBO", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue(getObject("DispatchPipeline"),null) + context.getFormattedValue("-DispatchScaledPrice",null)); getPipelineDictionary().put("DispatchPipeline", temp_obj);} %><% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("bo-product-classification-warranty-scaled-price-config");out.print("\"");out.print(" name=\"");out.print("ScaledPriceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %><input type="hidden" name="" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyBO:PriceProviderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductDomainID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e">
<tr><td width="100%" class="infobox_title"><% {out.write(localizeISText("WarrantyScaledPricesConfig.ScaledPrice.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e ">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("WarrantyScaledPricesConfig.Currency.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td> 
<% {out.write("<");out.write("SELECT class=\"dropdown inputfield_en\" NAME=\""+context.getFormattedValue(getObject("AddScaledPriceForm:Threshold:ThresholdCurrency:QualifiedName"),null)+"\">");String value, description;while (loop("Currencies",null)){out.write("<");out.write("OPTION ");_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) {out.write("SELECTED ");}out.print("VALUE =\"");value = context.getFormattedValue(getObject("Currencies:Mnemonic"),null);description = context.getFormattedValue(getObject("Currencies:CurrencyName"),null);value = encodeString(value);description = encodeString(description);out.write(value + "\">");out.write(description + "</OPTION>");}out.write("</SELECT>");} %></td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("WarrantyScaledPricesConfig.ProductSalePriceUpTo.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddScaledPriceForm:Threshold:ThresholdValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value=""
maxlength="30" size="30" 
class="inputfield_en"
/>
</td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("WarrantyScaledPricesConfig.WarrantyPrice.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddScaledPriceForm:Price:PriceValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value=""
maxlength="30" size="30" 
class="inputfield_en"
/>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("WarrantyScaledPricesConfig.Add.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n e w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ScaledPriceForm:Instances") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="left e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ScaledPriceForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("WarrantyScaledPricesConfig.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ScaledPriceForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("WarrantyScaledPricesConfig.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s"><% {out.write(localizeISText("WarrantyScaledPricesConfig.Currency.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s"><% {out.write(localizeISText("WarrantyScaledPricesConfig.ProductSalePriceUpTo.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="table_header s"><% {out.write(localizeISText("WarrantyScaledPricesConfig.WarrantyPrice.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("LastThreshold", temp_obj);} %><% while (loop("ScaledPriceForm:Instances","SubForm",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("SubForm:Threshold:Value:Value")).doubleValue() ==((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LastCurrencyCode")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("LastCurrencyCode"),null).equals(context.getFormattedValue(getObject("SubForm:Price:Value:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"warranty/inc/MoreThanScaledPriceConfig", null, "108");} %><tr><td colspan="4" class="table_header s">&nbsp;</td></tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubForm:Price:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SubForm:Price:PriceCurrency:Value")); getPipelineDictionary().put("LastCurrencyCode", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("SubForm:Price:Value:CurrencyMnemonic")); getPipelineDictionary().put("LastCurrencyCode", temp_obj);} %><% } %><% {Object temp_obj = (getObject("SubForm:Threshold:Value")); getPipelineDictionary().put("LastThreshold", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% {try{executePipeline("ProcessWarrantyPrices-IsDerivedProductWarrantyScaledPrice",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Product",getObject("Product")))).addParameter(new ParameterEntry("WarrantyBO",getObject("WarrantyBO"))).addParameter(new ParameterEntry("BaseProductWarrantyBO",getObject("BaseProductWarrantyBO"))).addParameter(new ParameterEntry("CurrencyCode",getObject("LastCurrencyCode"))).addParameter(new ParameterEntry("ThresholdValue",getObject("SubForm:Threshold:Value"))).addParameter(new ParameterEntry("PriceValue",getObject("SubForm:Price:Value")))))),"WarrantyScaledPriceResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 121.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WarrantyScaledPriceResult:IsDerivedProductWarrantyScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("BaseProductScaledPrice", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("BaseProductScaledPrice", temp_obj);} %><% } %><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><td class="table_bg e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(SubForm:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %> checked="checked"<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BaseProductScaledPrice")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BaseProductScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %> disabled="disabled"<% } %>
/>
</td><% } %><td class="table_detail2 e s"> 
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:ThresholdCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:PriceCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {String value = null;try{value=context.getFormattedValue(getObject("LastCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail2 e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:ThresholdValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
maxlength="30" size="30" 
class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BaseProductScaledPrice")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BaseProductScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %> readonly="readonly" <% } %>
/><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><%
								Form form = (Form) getObject("SubForm");
								PipelineDictionary dict = getPipelineDictionary();
								Object oldThreshold = getObject("Old_" + form.getParameter("Threshold").getField("ThresholdValue").getQualifiedName());
								dict.put("OldThreshold", oldThreshold);
							%><input type="hidden" name="Old_<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:ThresholdValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SubForm:Submitted")).booleanValue() && ((Boolean) getObject("SubForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("OldThreshold"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Threshold:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% } %>
/>
</td>
<td class="table_detail2 s">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:PriceValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
maxlength="30" size="30" 
class="inputfield_en"/><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><%
											Object oldPrice = getObject("Old_" + form.getParameter("Price").getField("PriceValue").getQualifiedName());
											dict.put("OldPrice", oldPrice);
										%><input type="hidden" name="Old_<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:PriceValue:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SubForm:Submitted")).booleanValue() && ((Boolean) getObject("SubForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("OldPrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubForm:Price:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% } %>
/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><td>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BaseProductScaledPrice")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BaseProductScaledPrice"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("WarrantyScaledPricesConfig.SharedPrice","",null,null,null,null,null,null,null,null,null,null,null));} %>)
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WarrantyScaledPriceResult:BaseProductPriceValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("WarrantyScaledPricesConfig.ChannelPriceSharedPrice","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyScaledPriceResult:BaseProductPriceValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %>
(<% {out.write(localizeISText("WarrantyScaledPricesConfig.ChannelPrice","",null,null,null,null,null,null,null,null,null,null,null));} %>)
<% }} %> 
</td><% } %></tr>
</table>
</td>
</tr> 
<% } %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"warranty/inc/MoreThanScaledPriceConfig", null, "220");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %><tr>
<td width="100%" colspan="4" class="s">
<table border="0" cellspacing="4" cellpadding="0" align="right">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("WarrantyScaledPricesConfig.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("WarrantyScaledPricesConfig.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("WarrantyScaledPricesConfig.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td colspan="4" class="table_detail s"><% {out.write(localizeISText("WarrantyScaledPricesConfig.ThereAreCurrentlyNoPricesToShowHere.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% printFooter(out); %>