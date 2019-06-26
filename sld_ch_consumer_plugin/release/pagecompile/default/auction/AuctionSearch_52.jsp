<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><input type="hidden" name="webform-id" value="WFAuctionSearch"/>
<input type="hidden" name="SearchType" value="simple"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.SimpleAuctionSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctions_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))).addURLParameter(context.getFormattedValue("jumpToList",null),context.getFormattedValue("jumpToList",null)).addURLParameter(context.getFormattedValue("ListType",null),context.getFormattedValue(getObject("ListType"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("AuctionSearch_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.Keyword.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" name="WFAuctionSearch_NameOrDesc" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuctionSearch_NameOrDesc"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ListType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ListType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DefaultButton" value="simpleSearch"/>
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StartDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartDateToError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error s" width="100%"><% {out.write(localizeISText("AuctionSearch_52.PleaseProvideAValidSearchMask.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDateFromError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionSearch_52.ProvideAValidStartDateFrom.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDateToError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionSearch_52.ProvideAValidStartDateTo.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
</table><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="15%"/>
<col width="35%"/>
</colgroup>
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("AuctionSearch_52.AdvancedAuctionSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="1">&#160;<input type="hidden" name="SearchType" value="parametric"/></td>
<td class="right" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctions_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("jumpToList",null),context.getFormattedValue("jumpToList",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)).addURLParameter(context.getFormattedValue("ListType",null),context.getFormattedValue(getObject("ListType"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("AuctionSearch_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("AuctionSearch_52.GeneralProductAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.ProductID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="SearchType" value="parametric"/>
<input type="hidden" name="SearchCategoryUUID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input type="hidden" name="ProductAttributeName_1" value="SKU"/>
<input type="hidden" name="ProductOperator_1" value="CONTAINS"/>
<input type="hidden" name="ProductLocation_1" value="CUSTOM_ATTRIBUTE"/>
<input type="hidden" name="ProductType_1" value="String"/>
<input type="hidden" name="ProductSubString_1" value="False"/>
<input type="hidden" name="ProductLogicalOperator_1" value="AND"/>
<input type="text" name="ProductAttributeValue_1" maxlength="350" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeValue_1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td> 
<td colspan="2">&#160;</td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.ProductName.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="ProductAttributeName_2" value="name"/>
<input type="hidden" name="ProductOperator_2" value="CONTAINS"/>
<input type="hidden" name="ProductLocation_2" value="CUSTOM_ATTRIBUTE"/>
<input type="hidden" name="ProductType_2" value="String"/>
<input type="hidden" name="ProductSubString_2" value="False"/>
<input type="hidden" name="ProductLogicalOperator_2" value="AND"/>
<input type="text" name="ProductAttributeValue_2" maxlength="350" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeValue_2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.ProductDescriptionKeywords.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="ProductAttributeName_3" value="shortDescription"/>
<input type="hidden" name="ProductOperator_3" value="CONTAINS"/>
<input type="hidden" name="ProductLocation_3" value="CUSTOM_ATTRIBUTE"/>
<input type="hidden" name="ProductType_3" value="String"/>
<input type="hidden" name="ProductSubString_3" value="False"/>
<input type="hidden" name="ProductLogicalOperator_3" value="AND"/>
<input type="text" name="ProductAttributeValue_3" maxlength="350" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeValue_3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td colspan="2">&#160;</td> 
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.AuctionName.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="AuctionAttributeName_1" value="displayName"/>
<input type="hidden" name="AuctionOperator_1" value="CONTAINS"/>
<input type="hidden" name="AuctionLocation_1" value="CUSTOM_ATTRIBUTE"/>
<input type="hidden" name="AuctionType_1" value="String"/>
<input type="hidden" name="AuctionSubString_1" value="False"/>
<input type="hidden" name="AuctionLogicalOperator_1" value="AND"/>
<input type="text" name="AuctionAttributeValue_1" maxlength="350" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AuctionAttributeValue_1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionSearch_52.AuctionDescriptionKeywords.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="AuctionAttributeName_2" value="shortDescription"/>
<input type="hidden" name="AuctionOperator_2" value="CONTAINS"/>
<input type="hidden" name="AuctionLocation_2" value="CUSTOM_ATTRIBUTE"/>
<input type="hidden" name="AuctionType_2" value="String"/>
<input type="hidden" name="AuctionSubString_2" value="False"/>
<input type="hidden" name="AuctionLogicalOperator_2" value="AND"/>
<input type="text" name="AuctionAttributeValue_2" maxlength="350" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AuctionAttributeValue_2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td colspan="2">&#160;</td> 
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("AuctionSearch_52.Timeframe.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item top" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.StartDate.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="3">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<input type="hidden" name="AuctionAttributeName_3" value="startTime"/>
<input type="hidden" name="AuctionOperator_3" value="GTE"/>
<input type="hidden" name="AuctionLocation_3" value="NATIVE_ATTRIBUTE"/>
<input type="hidden" name="AuctionType_3" value="Date"/>
<input type="hidden" name="AuctionSubString_3" value="False"/>
<input type="hidden" name="AuctionAttributeName_4" value="startTime"/>
<input type="hidden" name="AuctionOperator_4" value="LTE"/>
<input type="hidden" name="AuctionLocation_4" value="NATIVE_ATTRIBUTE"/>
<input type="hidden" name="AuctionType_4" value="Date"/>
<input type="hidden" name="AuctionSubString_4" value="False"/><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AuctionAttributeValue_3"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("AuctionSearch_52.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AuctionAttributeValue_3")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateFromError")))))}, 157); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AuctionAttributeValue_4"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("AuctionSearch_52.To.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AuctionAttributeValue_4")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 164); %></tr>
</table>
</td>
</tr>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr> 
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("AuctionSearch_52.DisplaySearchResults.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item"><% {out.write(localizeISText("AuctionSearch_52.SortedBy.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="sort_attribute_1" class="select" style="width:100%">
<option value="auctionName" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sort_attribute_1"),null).equals(context.getFormattedValue("auctionName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>Selected<% } %>><% {out.write(localizeISText("AuctionSearch_52.AuctionName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="startTime" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sort_attribute_1"),null).equals(context.getFormattedValue("startTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>Selected<% } %>><% {out.write(localizeISText("sld_ch_consumer_plugin.StartDate.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sort_direction_1"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><td><input type=radio name="sort_direction_1" value="ascending"/></td>
<td class="infobox_item"><% {out.write(localizeISText("sld_ch_consumer_plugin.Ascending.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="sort_direction_1" value="descending" checked="checked" /></td>
<td class="infobox_item"><% {out.write(localizeISText("sld_ch_consumer_plugin.Descending.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td><input type=radio name="sort_direction_1" value="ascending" checked="checked" /></td>
<td class="infobox_item"><% {out.write(localizeISText("sld_ch_consumer_plugin.Ascending.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="sort_direction_1" value="descending"/></td>
<td class="infobox_item"><% {out.write(localizeISText("sld_ch_consumer_plugin.Descending.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
</table>
</td>
</tr>
<tr>
<td id="button" nowrap="nowrap" class="button_box" colspan="4" align="right" width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ListType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ListType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DefaultButton" value="parametricSearch"/>
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% printFooter(out); %>