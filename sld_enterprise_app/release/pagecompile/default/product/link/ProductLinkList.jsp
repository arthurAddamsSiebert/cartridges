<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.catalog.capi.CatalogCategoryBO"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.xcs.capi.product.Product"%><%@page import="com.intershop.component.product.capi.ProductBO"%><%@page import="com.intershop.beehive.core.capi.paging.PageableIterator"%><%@page import="com.intershop.component.catalog.capi.link.LinkType"%><%@page import="com.intershop.component.catalog.capi.link.LinkTypeGroup"%><%@page import="com.intershop.component.catalog.capi.link.LinkBO"%><%@page import="com.intershop.component.catalog.internal.link.LinkTypeCodeDefinitionMapperEnum"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "12");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/LinkPageScript", null, "13");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ChannelID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ChannelID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentChannelPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentUserPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %><% } %><!-- Working Area -->
<!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1"," - Links"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("ChannelProducts",null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 25); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1"," - Links"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null)))),
new TagParameter("id","ProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 27); %><% } %><% {Object temp_obj = ("Links"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "33");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "35");} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" data-testing-id="bo-product-links">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RunningAuctionCounter")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Product:RunningAuctions"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:RunningAuctions")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:RunningAuctions")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("generalErrorLine.WarningThisProductIsCurrentlyPartOfAnAuction.error","",null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } else { %><b><% {out.write(localizeISText("generalErrorLine.WarningThisProductIsCurrentlyPartOfXAuctions.error","",null,getObject("Product:RunningAuctions"),null,null,null,null,null,null,null,null,null));} %> </b><br/><% } %><% {out.write(localizeISText("generalErrorLine.PleaseContactYourAuctionManagerBeforeEditing.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><!-- product locking information --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action70 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));String site70 = null;String serverGroup70 = null;String actionValue70 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null);if (site70 == null){  site70 = action70.getDomain();  if (site70 == null)  {      site70 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup70 == null){  serverGroup70 = action70.getServerGroup();  if (serverGroup70 == null)  {      serverGroup70 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));out.print("\"");out.print(" name=\"");out.print("setStatus");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue70, site70, serverGroup70,true)); %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductLockInformation_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "76");} %><% out.print("</form>"); %></td>
</tr><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "81");} %><% } %><!-- end product locking information --><% } %><!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "87");} %><!-- end product sharing information -->
<tr>
<td valign="top" class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.TheListBelowShowsAllLinkTypesAndTheirAssignedProdu.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title2 aldi"><% {out.write(localizeISText("sld_enterprise_app.LinkTypes.table_title2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProductLinks_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Start",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } %><% URLPipelineAction action71 = new URLPipelineAction(context.getFormattedValue(getObject("FormAction"),null));String site71 = null;String serverGroup71 = null;String actionValue71 = context.getFormattedValue(getObject("FormAction"),null);if (site71 == null){  site71 = action71.getDomain();  if (site71 == null)  {      site71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup71 == null){  serverGroup71 = action71.getServerGroup();  if (serverGroup71 == null)  {      serverGroup71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("FormAction"),null));out.print("\"");out.print(" class=\"");out.print(" w e s");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue71, site71, serverGroup71,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="6" /></td>
</tr>
<tr>
<td valign="top">
<table width="100%" name="product_links_select" id="product_links_select">
<tr>
<td class="table_detail3"><% {out.write(localizeISText("sld_enterprise_app.LinksFor0.table_detail3","",null,getObject("Product:DisplayName"),null,null,null,null,null,null,null,null,null));} %></td>
</tr><%
						PipelineDictionary dict = getPipelineDictionary();

						dict.put("ProductProductLinkTypeGroup", LinkTypeGroup.PRODUCT_PRODUCT);
						dict.put("ProductCategoryLinkTypeGroup", LinkTypeGroup.PRODUCT_CATEGORY);
						dict.put("ProductProductLinkTypeCodeDefinitionGroupName", LinkTypeCodeDefinitionMapperEnum.PRODUCT_PRODUCT.getTypeCodeGroupName());
						dict.put("ProductCategoryLinkTypeCodeDefinitionGroupName", LinkTypeCodeDefinitionMapperEnum.PRODUCT_CATEGORY.getTypeCodeGroupName());

						String selectedLinkType = dict.get("SelectedLinkType");
						String linkDirection = dict.get("LinkDirection");
						String selectedOutgoingLinkType;
						String selectedIncomingLinkType;

						if (selectedLinkType == null)
						{
							dict.put("itemIsVisible", true);
						}

						if (linkDirection != null && "Incoming".equals(linkDirection))
						{
							selectedOutgoingLinkType = null;
							selectedIncomingLinkType = selectedLinkType;
						}
						else
						{
							selectedOutgoingLinkType = selectedLinkType;
							selectedIncomingLinkType = null;
						}
					%><tr>
<script type="text/javascript">
$(document).ready(function() {
$('<tr class="nowrap"><td class="table_detail_actions"><a class="tableheader mass-action" data-action="select" href="<%=context.getFormattedValue("#",null)%>"><% {out.write(localizeISText("sld_enterprise_app.ShowAll","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="tableheader mass-action" data-action="deselect" href="<%=context.getFormattedValue("#",null)%>"><% {out.write(localizeISText("sld_enterprise_app.HideAll","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td></tr>').insertAfter($('table<%=context.getFormattedValue("#",null)%>product_links_select > tbody > tr:first-child'));
$('<tr class="nowrap"><td class="table_detail_actions"><a class="tableheader mass-action" data-action="select" href="<%=context.getFormattedValue("#",null)%>"><% {out.write(localizeISText("sld_enterprise_app.ShowAll","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="tableheader mass-action" data-action="deselect" href="<%=context.getFormattedValue("#",null)%>"><% {out.write(localizeISText("sld_enterprise_app.HideAll","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td></tr>').insertAfter($('table<%=context.getFormattedValue("#",null)%>product_incoming_links_select > tbody > tr:first-child'));
$(document).delegate('.mass-action', 'click', function(ev) {
ev.preventDefault();
$(this).parents('table:eq(0)').find(':checkbox').prop('checked', $(this).data('action') == 'select' || false).trigger('change');
});
});
</script>
<td>
<table width="100%" cellpadding="0" cellspacing="0">
<tr><% while (loop("ProductLinkTypes","LinkType",null)) { %><% {Object temp_obj = (getObject("LinkType")); getPipelineDictionary().put("LinkType", temp_obj);} %><% {Object temp_obj = (getObject("LinkType:ID")); getPipelineDictionary().put("SummaryName", temp_obj);} %><%
											LinkType linkType = dict.get("LinkType");
											String linksPageableKeyName = linkType.getID() + "_OutgoingProductLinks";
											PageableIterator<LinkBO<ProductBO, ProductBO>> linksPageable = dict.get(linksPageableKeyName);
											if (linksPageable != null) {
												dict.put("OutgoingProductLinkCount", linksPageable.getElementCount());
											} else {
												dict.put("OutgoingProductLinkCount", 0);
											}
										%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %><%
												String categoryLinksPageableKeyName = linkType.getID() + "_OutgoingCategoryLinks";
												PageableIterator<LinkBO<ProductBO, CatalogCategoryBO>> categoryLinksPageable = dict.get(categoryLinksPageableKeyName);
												if (categoryLinksPageable != null) {
													dict.put("OutgoingCategoryLinkCount", categoryLinksPageable.getElementCount());
												} else {
													dict.put("OutgoingCategoryLinkCount", 0);
												}
											%><% } else { %><%
												dict.put("OutgoingCategoryLinkCount", 0);
											%><% } %><%
											String summaryName = dict.get("SummaryName");
											String isSelected = dict.get("select_" + summaryName);

											if (selectedLinkType == null)
											{
												// Setup for initial loading of the page - display only link type sections which have at least 1 link to show, skip the rest
												Integer productLinkCount = dict.get("OutgoingProductLinkCount");
												Integer categoryLinkCount = dict.get("OutgoingCategoryLinkCount");
												boolean checkBoxSelected = productLinkCount > 0 || categoryLinkCount > 0;
												dict.put("checkboxIsSelected", checkBoxSelected);
											}
											else
											{
												dict.put("checkboxIsSelected", ( selectedOutgoingLinkType != null && selectedOutgoingLinkType.equalsIgnoreCase(summaryName) )
																			|| ( isSelected != null && ( isSelected.equalsIgnoreCase("on") || isSelected.equalsIgnoreCase("select_" + summaryName) ) ) );
											}
										%><td class="input_checkbox">
<input class="product_check" type="checkbox" 
name="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("checkboxIsSelected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text group-of-types" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductProductLinkTypeCodeDefinitionGroupName"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("SummaryName"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductProductLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><td class="label_checkbox_text">
<label class="label label_checkbox_text label_light last-in-type" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"><% } else { %><td class="label_checkbox_text" colspan="2">
<label class="label label_checkbox_text label_light" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OutgoingProductLinkCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><strong><% {String value = null;try{value=context.getFormattedValue(getObject("OutgoingProductLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</strong><% } else { %>
0
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OutgoingProductLinkCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %><td class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OutgoingCategoryLinkCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",250,e);}if (_boolean_result) { %><strong><% {String value = null;try{value=context.getFormattedValue(getObject("OutgoingCategoryLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {252}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</strong><% } else { %>
0
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("OutgoingCategoryLinkCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("LinkType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",265,e);}if (_boolean_result) { %><td width="100%">&nbsp;</td>
</tr><tr><% } %><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
<td valign="top">
<table width="100%" name="product_incoming_links_select" id="product_incoming_links_select">
<tr>
<td class="table_detail3"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0">
<tr><% while (loop("ProductLinkTypes","LinkType",null)) { %><% {Object temp_obj = (getObject("LinkType")); getPipelineDictionary().put("LinkType", temp_obj);} %><% {Object temp_obj = (getObject("LinkType:ID")); getPipelineDictionary().put("IncomingSummaryName", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExcludedIncomingLinkTypeCodes:Contains(IncomingSummaryName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %><td class="input_checkbox" colspan="4">&nbsp;</td><% } else { %><%
												LinkType linkType = dict.get("LinkType");
												String incomingLinksPageableKeyName = linkType.getID() + "_IncomingProductLinks";
												PageableIterator<LinkBO<ProductBO, ProductBO>> incomingLinksPageable = dict.get(incomingLinksPageableKeyName);
												if (incomingLinksPageable != null) {
													dict.put("IncomingProductLinkCount", incomingLinksPageable.getElementCount());
												} else {
													dict.put("IncomingProductLinkCount", 0);
												}
											%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",304,e);}if (_boolean_result) { %><%
													String incomingCategoryLinksPageableKeyName = linkType.getID() + "_IncomingCategoryLinks";
													PageableIterator<LinkBO<CatalogCategoryBO, ProductBO>> incomingCategoryLinksPageable = dict.get(incomingCategoryLinksPageableKeyName);
													if (incomingCategoryLinksPageable != null) {
														dict.put("IncomingCategoryLinkCount", incomingCategoryLinksPageable.getElementCount());
													} else {
														dict.put("IncomingCategoryLinkCount", 0);
													}
												%><% } else { %><%
													dict.put("IncomingCategoryLinkCount", 0);
												%><% } %><%
												String incomingSummaryName = dict.get("IncomingSummaryName");
												String isIncomingSelected = dict.get("select_" + incomingSummaryName + "_incoming_product_links");

												if (selectedLinkType == null)
												{
													// Setup for initial loading of the page - display only link type sections which have at least 1 link to show, skip the rest
													Integer productLinkCount = dict.get("IncomingProductLinkCount");
													Integer categoryLinkCount = dict.get("IncomingCategoryLinkCount");
													boolean checkBoxSelected = productLinkCount > 0 || categoryLinkCount > 0;
													dict.put("checkboxIsSelected", checkBoxSelected);
												}
												else
												{
													dict.put( "checkboxIsSelected", ( selectedIncomingLinkType != null && selectedIncomingLinkType.equalsIgnoreCase(incomingSummaryName) )
																				|| ( isIncomingSelected != null && ( isIncomingSelected.equalsIgnoreCase("on") || isIncomingSelected.equalsIgnoreCase("select_" + incomingSummaryName + "_incoming_product_links") ) ) );
												}
											%><td class="input_checkbox">
<input class="product_check" type="checkbox" 
name="select_<% {String value = null;try{value=context.getFormattedValue(getObject("IncomingSummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {340}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links" 
id="select_<% {String value = null;try{value=context.getFormattedValue(getObject("IncomingSummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {341}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("checkboxIsSelected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",342,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text group-of-types" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("IncomingSummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {348}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links"><% {out.write(localizeISText("sld_enterprise_app.IsOf.label",null,null,localizeText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductProductLinkTypeCodeDefinitionGroupName"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("IncomingSummaryName"),null) + context.getFormattedValue(".displayName",null),null)),null,null,null,null,null,null,null,null,null));} %></label>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductProductLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",352,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",353,e);}if (_boolean_result) { %><td class="label_checkbox_text">
<label class="label label_checkbox_text label_light last-in-type" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("IncomingSummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {355}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links"><% } else { %><td class="label_checkbox_text" colspan="2">
<label class="label label_checkbox_text label_light" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("IncomingSummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {358}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingProductLinkCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",360,e);}if (_boolean_result) { %><strong><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingProductLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {362}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</strong><% } else { %>
0
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingProductLinkCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",367,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",375,e);}if (_boolean_result) { %><td class="label_checkbox_text"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ProductIncomingLinkTypeSummary:ProductLinkAllowed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",376,e);}if (_boolean_result) { %> colspan="2"<% } %>>
<label class="label label_checkbox_text label_light" for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("SummaryName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {377}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingCategoryLinkCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",378,e);}if (_boolean_result) { %><strong><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingCategoryLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {380}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</strong><% } else { %>
0
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingCategoryLinkCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",385,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></label>
</td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("LinkType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",394,e);}if (_boolean_result) { %><td width="100%">&nbsp;</td>
</tr><tr><% } %><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="6" /></td>
</tr>
</table><% out.print("</form>"); %><% while (loop("ProductLinkTypes","LinkType",null)) { %><% {Object temp_obj = (getObject("LinkType")); getPipelineDictionary().put("LinkType", temp_obj);} %><% {Object temp_obj = (getObject("LinkType:ID")); getPipelineDictionary().put("LinkTypeName", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("select_",null) + context.getFormattedValue(getObject("LinkTypeName"),null)); getPipelineDictionary().put("ProductLinkTable_ID", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductProductLinkTypeCodeDefinitionGroupName"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("LinkTypeName"),null) + context.getFormattedValue(".displayName",null)); getPipelineDictionary().put("ProductLinkTable_Name", temp_obj);} %><% {Object temp_obj = (getObject("LinkTypeName")); getPipelineDictionary().put("ProductLinkTable_TypeCode", temp_obj);} %><% {Object temp_obj = (getObject("LinkTypeName")); getPipelineDictionary().put("summaryName", temp_obj);} %><%
			LinkType linkType = dict.get("LinkType");
			String linksPageableKeyName = linkType.getID() + "_OutgoingProductLinks";
			PageableIterator<LinkBO<ProductBO, ProductBO>> linksPageable = dict.get(linksPageableKeyName);
			dict.put("LinksPageableName", linksPageableKeyName);
			if (linksPageable != null) {
				dict.put("ProductLinksList", linksPageable);
			}

			String incomingLinksPageableKeyName = linkType.getID() + "_IncomingProductLinks";
			PageableIterator<LinkBO<ProductBO, ProductBO>> incomingLinksPageable = dict.get(incomingLinksPageableKeyName);
			dict.put("IncomingLinksPageableName", incomingLinksPageableKeyName);
			if (incomingLinksPageable != null) {
				dict.put("IncomingProductLinksList", incomingLinksPageable);
			}
		%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(ProductCategoryLinkTypeGroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",437,e);}if (_boolean_result) { %><%
				String categoryLinksPageableKeyName = linkType.getID() + "_OutgoingCategoryLinks";
				PageableIterator<LinkBO<ProductBO, CatalogCategoryBO>> categoryLinksPageable = dict.get(categoryLinksPageableKeyName);
				dict.put("CategoryLinksPageableName", categoryLinksPageableKeyName);
				if (categoryLinksPageable != null) {
					dict.put("CategoryLinksList", categoryLinksPageable);
				}

				String incomingCategoryLinksPageableKeyName = linkType.getID() + "_IncomingCategoryLinks";
				PageableIterator<LinkBO<CatalogCategoryBO, ProductBO>> incomingCategoryLinksPageable = dict.get(incomingCategoryLinksPageableKeyName);
				dict.put("IncomingCategoryLinksPageableName", incomingCategoryLinksPageableKeyName);
				if (incomingCategoryLinksPageable != null) {
					dict.put("IncomingCategoryLinksList", incomingCategoryLinksPageable);
				}
			%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/ProductLinkProductCategoryLinkTable", null, "453");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/ProductLinkProductLinkTable", null, "455");} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",459,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductLinks-Start"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 460); %><% } else { %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductLinks-Start"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 462); %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>