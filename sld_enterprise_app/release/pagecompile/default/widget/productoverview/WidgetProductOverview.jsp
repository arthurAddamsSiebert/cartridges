<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="content">
<table width="100%" cellspacing="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="table_title_description"><% {out.write(localizeISText("widgettype.productoverview.performedIn",null,null,encodeString(context.getFormattedValue(getObject("ApplicationBOApplicationSelectorExtension:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline","target"},null); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("ViewProductList_",null) + context.getFormattedValue(getObject("CurrentChannelRepository:TypeCode"),null) + context.getFormattedValue("-ParametricSearch",null)); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewProductList-ParametricSearch"); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><% } %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Refresh"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductOverviewWidget-Start",null)))),null)%>'", 5000)
</script>
<tr>
<td colspan="5" class="table_title_description w e s" ><br/><% {out.write(localizeISText("ProductStatistics.Updating.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr> 
<% } else { %><tr>
<td colspan="5" class="infobox w e s"><% URLPipelineAction action674 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductOverviewWidget-Start",null)))),null));String site674 = null;String serverGroup674 = null;String actionValue674 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductOverviewWidget-Start",null)))),null);if (site674 == null){  site674 = action674.getDomain();  if (site674 == null)  {      site674 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup674 == null){  serverGroup674 = action674.getServerGroup();  if (serverGroup674 == null)  {      serverGroup674 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductOverviewWidget-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue674, site674, serverGroup674,true)); %><input type="hidden" name="apply" value="apply"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelRepository")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> 
<td class="table_detail" width="60%">
<select name="LocaleId" id="LocaleId" class="select inputfield_en" style="width:100%" onchange="this.form.submit()"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelRepository")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><td class="table_detail" width="35%"><% } else { %><td class="table_detail"><% } %><select name="SelectCurrencyMnemonic" id="SelectCurrencyMnemonic" class="select inputfield_en" style="width:100%" valign="middle" onchange="this.form.submit()"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
</table><% out.print("</form>"); %> 
</td>
</tr>
<tr> 
<td>
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfProducts")),
new TagParameter("target","_parent")}, 75); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_4",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfBundles.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundles")),
new TagParameter("target","_parent")}, 77); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_8",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfBundledProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundledProducts")),
new TagParameter("target","_parent")}, 79); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_16",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfVariationMasters.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationMasters")),
new TagParameter("target","_parent")}, 81); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_32",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfVariationProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationProducts")),
new TagParameter("target","_parent")}, 83); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_128",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfRetailSets")),
new TagParameter("target","_parent")}, 85); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_256",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfPartOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfPartOfRetailSets")),
new TagParameter("target","_parent")}, 87); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_PriceUndefined",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutListPrice.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"ProductsWithoutListPrice\",Currency:Mnemonic)")),
new TagParameter("target","_parent")}, 90); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("taxClass",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutTax.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsWithoutTax")),
new TagParameter("target","_parent")}, 93); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationBOApplicationSelectorExtension:ChannelID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("shortDescription",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutShortDescription.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getLocalizedInteger(\"ProductsWithoutShortDescription\",Locale)")),
new TagParameter("target","_parent")}, 98); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("longDescription",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutLongDescription.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getLocalizedInteger(\"ProductsWithoutLongDescription\",Locale)")),
new TagParameter("target","_parent")}, 102); %><% } %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsCurrentlyOnline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOnline")),
new TagParameter("target","_parent")}, 107); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsCurrentlyOffline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOffline")),
new TagParameter("target","_parent")}, 110); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Available",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsOutOfStock.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOutOfStock")),
new TagParameter("target","_parent")}, 113); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Categorized",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsNotAssignedToCategory.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsNotAssignedToCategory")),
new TagParameter("target","_parent")}, 116); %></table>
</td>
</tr><% } %> 
<% } else { %><tr>
<td colspan="5" align="left" class="table_detail"><% {out.write(localizeISText("widgettype.productoverview.job_not_run_yet.description",null,null,encodeString(context.getFormattedValue(getObject("ApplicationBOApplicationSelectorExtension:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
</table>
</div><% printFooter(out); %>