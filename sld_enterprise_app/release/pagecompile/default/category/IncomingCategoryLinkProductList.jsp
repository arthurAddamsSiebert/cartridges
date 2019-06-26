<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action262 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site262 = null;String serverGroup262 = null;String actionValue262 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site262 == null){  site262 = action262.getDomain();  if (site262 == null)  {      site262 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup262 == null){  serverGroup262 = action262.getServerGroup();  if (serverGroup262 == null)  {      serverGroup262 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("categoryProductIncomingLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue262, site262, serverGroup262,true)); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
		<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<% } %>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<input type="hidden" name="LinkDirection" value="Incoming" />

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>

		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmIncomingProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
					<!-- selected links -->
					<% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %>
						<input type="hidden" name="DeleteLinkRef" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryIncomingProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
							<% while (loop("CategoryIncomingProductLinksList","IncomingC2PLink",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("IncomingC2PLink:TypedProductCategoryAssignmentRef"),null),null).equals(context.getFormattedValue(getObject("Selected"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
									<% {Object temp_obj = ("true"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
								<% } %>
							<% } %>
						<% } %>
					<% } %>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShowDeleteLinkMessageBox")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowDeleteLinkMessageBox"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedProductLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
						<% } %>
						<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("ProductLinksMessage"))}, 41); %>
					<% } %>
				<% } else { %>
					<!-- delete confirmation if nothing is selected-->
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 45); %>
				<% } %>
			<% } %>

		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s" >
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryIncomingProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
			
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("CategoryIncomingProductLinksList","IncomingC2PLink",null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("IncomingC2PLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (context.getFormattedValue(getObject("IncomingC2PLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>
			<% } %>
			<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>

			<tr>
				<td class="table_header e center select_all" width="5%" nowrap="nowrap">
					<div id="CPAincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductIncomingLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CatProdLinkRef','CPAincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPBincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
										<% {out.write(localizeISText("IncomingCategoryLinkProductList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
					<div id="CPBincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductIncomingLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CatProdLinkRef','CPAincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPBincoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
										<% {out.write(localizeISText("IncomingCategoryLinkProductList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
				<td class="table_header e"><% {out.write(localizeISText("IncomingCategoryLinkProductList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e" width="40%"><% {out.write(localizeISText("IncomingCategoryLinkProductList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e right" width="5%" nowrap="nowrap"><% {out.write(localizeISText("IncomingCategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e" width="5%" nowrap="nowrap"><% {out.write(localizeISText("IncomingCategoryLinkProductList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header left" width="10%"><% {out.write(localizeISText("IncomingCategoryLinkProductList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>

			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>

			<% while (loop("CategoryIncomingProductLinksList","IncomingC2PLink",null)) { %>
				<% {Object temp_obj = (context.getFormattedValue(getObject("IncomingC2PLink:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} %>
				<tr>
					<td class="table_detail e n center">
						<input type="checkbox" name="CatProdLinkRef_<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",105);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
					</td>
					<td class="table_detail e n">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("IncomingC2PLink:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingC2PLink:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
					</td>
					<td class="table_detail e n" nowrap="nowrap">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("IncomingC2PLink:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingC2PLink:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
					</td>
					<td class="table_detail e n right" nowrap="nowrap">
						<% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("IncomingC2PLink:Product"))}, 114); %>&nbsp;
					</td>
					<td class="table_detail3 top e n" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkOriginType(IncomingC2PLink)"),null).equals(context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkSourceTypeLocal"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("IncomingCategoryLinkProductList.LocalLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkOriginType(IncomingC2PLink)"),null).equals(context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkSourceTypeShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("IncomingCategoryLinkProductList.SharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<input type="hidden" name="DontDeleteSharedProductLinkIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">		
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkOriginType(IncomingC2PLink)"),null).equals(context.getFormattedValue(getObject("CategoryIncomingProductLinkTypeSummary:LinkSourceTypeLocalAndShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("IncomingCategoryLinkProductList.LocalLinkSharedLink.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
						<% }}} %>
					</td>
					<td class="table_detail n left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncomingC2PLink:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("IncomingCategoryLinkProductList.Online.alt",null)),null)%>" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncomingC2PLink:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("IncomingCategoryLinkProductList.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
					</td>
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("IncomingCategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinksOfTheSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } else { %>
						<% {out.write(localizeISText("IncomingCategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("IncomingCategoryLinkProductList.ClickAssignToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		<% } %>
 		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>
				<td colspan="7" class="n" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryProductServiceTypes:get(LinkTypeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>
									<% while (loop("ServiceTypeCategories","ServiceType",null)) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceType:Name"),null).equals(context.getFormattedValue(getObject("CategoryProductServiceTypes:get(LinkTypeName)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>
											<input type="hidden" name="WFAdvancedSearch_TypeCode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceType:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
											<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",156);}else{getLoopStack().pop();break;} %>
										<% } %>
									<% } %>
								<% } %>
								<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="incomingLinkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("IncomingCategoryLinkProductList.Assign.button",null)),null)%>" class="button"/>
								<input type="hidden" name="HideClassificationCatalogs" value="HideClassificationCatalogs" />
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryIncomingProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmIncomingProductLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("IncomingCategoryLinkProductList.Unassign.button",null)),null)%>" class="button"/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			<% } %>
		</tr>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>