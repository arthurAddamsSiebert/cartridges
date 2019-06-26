<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); %>
	
<% {Object temp_obj = (context.getFormattedValue("ViewProductList_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-ParametricSearch",null)); getPipelineDictionary().put("SearchPipeline", temp_obj);} %>

	<tr>
		<td colspan="5" class="table_title_description w e s"><% {out.write(localizeISText("ChannelProductStatisticsStatsInc.TheInformationOnThisPageWasLastUpdatedOn.table_title_description",null,null,context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_SHORT)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),new Integer(DATE_TIME)),null),null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td colspan="5" class="infobox w e s">

			
			<% URLPipelineAction action36 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Start",null)))),null));String site36 = null;String serverGroup36 = null;String actionValue36 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Start",null)))),null);if (site36 == null){  site36 = action36.getDomain();  if (site36 == null)  {      site36 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup36 == null){  serverGroup36 = action36.getServerGroup();  if (serverGroup36 == null)  {      serverGroup36 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue36, site36, serverGroup36,true)); %>
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale">
					<tr>
						<td class="infobox_item" nowrap="nowrap">
							<% {out.write(localizeISText("ChannelProductStatisticsStatsInc.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
						</td>
						<td>
							<select name="LocaleId" class="dropdown inputfield_en">
								<% while (loop("Locales","Locales",null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
								<% } %>
							</select>
						</td>
						<td><img width="5" height="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
						<td class="infobox_item" nowrap="nowrap">
							<% {out.write(localizeISText("ChannelProductStatisticsStatsInc.SelectCurrency.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
						</td>
						<td>
							<select name="SelectCurrencyMnemonic" class="dropdown inputfield_en" valign="middle">
								<% while (loop("Currencies",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Currency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } %>
							</select>
						</td>
						<td><img width="5" height="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
						<td width="100%">
							<table border="0" cellspacing="2" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.Apply.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% out.print("</form>"); %>	
		</td>
	</tr>
	<tr>	
		<td valign="top" width="45%" class="w">
			<table border="0" cellspacing="5" cellpadding="0" width="100%">
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfProducts"))}, 60); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_4",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfBundles.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundles"))}, 62); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_8",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfBundledProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfBundledProducts"))}, 64); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_16",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfVariationMasters.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationMasters"))}, 66); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_32",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfVariationProducts.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfVariationProducts"))}, 68); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_128",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfRetailSets"))}, 70); %>
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_TypeCode",null),context.getFormattedValue("typecode_256",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.NumberOfPartOfRetailSets.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfPartOfRetailSets"))}, 72); %>
			</table>
		</td>
			
		<td width="2%">
		</td>
		<td width="1" class="overview_vertical_line">
			<img width="1" height="100%" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/>
		</td>
		<td width="2%">
		</td>
				
		<td valign="top" class="e">
			<table border="0" cellspacing="5" cellpadding="0" width="100%">
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_PriceUndefined",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsWithoutListPrice.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:getInteger(\"ProductsWithoutListPrice\",Currency:Mnemonic)"))}, 87); %>
							
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeName0",null),context.getFormattedValue("taxClass",null))).addURLParameter(context.getFormattedValue("WFAdvancedSearch_NativeAttributeValue0",null),context.getFormattedValue("<<none>>",null)).addURLParameter(context.getFormattedValue("WFAdvancedSearch_Locale",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsWithoutTax.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsWithoutTax"))}, 90); %>

				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsCurrentlyOnline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOnline"))}, 94); %>
							
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Online",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsCurrentlyOffline.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOffline"))}, 97); %>
							
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Available",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsOutOfStock.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsOutOfStock"))}, 100); %>
							
				<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("WFAdvancedSearch_Categorized",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelProductStatisticsStatsInc.ProductsNotAssignedToCategory.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:ProductsNotAssignedToCategory"))}, 103); %>
			</table>
		</td>
	</tr>
	<tr>
		<td class="s" colspan="5"><img width="1" height="0" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
	</tr><% printFooter(out); %>