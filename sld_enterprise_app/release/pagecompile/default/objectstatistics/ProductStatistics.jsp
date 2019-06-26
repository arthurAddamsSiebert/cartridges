<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); %><% {Object temp_obj = ("ViewProductList-ParametricSearch"); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Catalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.MasterCatalogs.text",null)))}, 20); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductOverview.text",null)))}, 21); %><!-- end page navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="table_title aldi"><% {out.write(localizeISText("ProductStatistics.ProductOverview.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Refresh"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-Start",null)))),null)%>'", 5000)
</script>
<tr>
<td colspan="5" class="table_title_description w e s" ><br/><% {out.write(localizeISText("ProductStatistics.Updating.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
</tr> 
<% } else { %><tr>
<td colspan="5" class="table_title_description w e s"><% {out.write(localizeISText("ProductStatistics.TheInformationOnThisPageWasLastUpdatedOn.table_title_description",null,null,context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td colspan="5" class="infobox w e s"><% URLPipelineAction action246 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-Start",null)))),null));String site246 = null;String serverGroup246 = null;String actionValue246 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-Start",null)))),null);if (site246 == null){  site246 = action246.getDomain();  if (site246 == null)  {      site246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup246 == null){  serverGroup246 = action246.getServerGroup();  if (serverGroup246 == null)  {      serverGroup246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue246, site246, serverGroup246,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductStatistics.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td>
<select name="LocaleId" class="dropdown inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td><img width="5" height="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductStatistics.SelectCurrency.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td>
<select name="SelectCurrencyMnemonic" class="dropdown inputfield_en" valign="middle"><% while (loop("Currencies",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td><img width="5" height="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductStatistics.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
</td>
</tr>
<tr> 
<td valign="top" width="45%" class="w">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfProducts"))}, 95); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_4",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfBundles.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundles"))}, 97); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_8",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfBundledProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundledProducts"))}, 99); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_16",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfVariationMasters.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationMasters"))}, 101); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_32",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfVariationProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationProducts"))}, 103); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_128",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfRetailSets"))}, 105); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_256",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.NumberOfPartOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfPartOfRetailSets"))}, 107); %></table>
</td>
<td width="2%">
</td>
<td width="1" class="overview_vertical_line">
<img width="1" height="100%" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/>
</td>
<td width="2%">
</td>
<td valign="top" class="e">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_PriceUndefined",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutListPrice.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"ProductsWithoutListPrice\",Currency:Mnemonic)"))}, 128); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("taxClass",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutTax.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsWithoutTax"))}, 131); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("shortDescription",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutShortDescription.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getLocalizedInteger(\"ProductsWithoutShortDescription\",Locale)"))}, 135); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("longDescription",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsWithoutLongDescription.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getLocalizedInteger(\"ProductsWithoutLongDescription\",Locale)"))}, 139); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsCurrentlyOnline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOnline"))}, 143); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsCurrentlyOffline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOffline"))}, 146); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Available",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsOutOfStock.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOutOfStock"))}, 149); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Categorized",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductStatistics.ProductsNotAssignedToCategory.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsNotAssignedToCategory"))}, 152); %></table>
</td>
<tr>
<td class="s" colspan="5"><img width="1" height="0" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
</tr> 
<% } %> 
<% } else { %> 
<tr>
<td colspan="5" class="table_title_description w e s"><% {out.write(localizeISText("ProductStatistics.InformationIsCreatedByAScheduledJobNotRunYet.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("Refresh")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% URLPipelineAction action247 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-StartUpdate",null)))),null));String site247 = null;String serverGroup247 = null;String actionValue247 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-StartUpdate",null)))),null);if (site247 == null){  site247 = action247.getDomain();  if (site247 == null)  {      site247 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup247 == null){  serverGroup247 = action247.getServerGroup();  if (serverGroup247 == null)  {      serverGroup247 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductStatistics-StartUpdate",null)))),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue247, site247, serverGroup247,true)); %><table width="100%" class="w e s" border="0" cellspacing="0" cellpadding="0" align= "right">
<tr>
<td>
<table border="0" cellspacing="5" cellpadding="0" align= "right" >
<tr>
<td class="button" >
<input type="hidden" name="GroupName" value="Product"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductStatistics.Update.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %> 
<% } %><% printFooter(out); %>