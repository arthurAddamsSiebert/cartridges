<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action289 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site289 = null;String serverGroup289 = null;String actionValue289 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site289 == null){  site289 = action289.getDomain();  if (site289 == null)  {      site289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup289 == null){  serverGroup289 = action289.getServerGroup();  if (serverGroup289 == null)  {      serverGroup289 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("categoryProductLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue289, site289, serverGroup289,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>

		<table border="0" cellpadding="0" cellspacing="0" width="100%">
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
					<!-- selected links -->
					<% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %>
						<input type="hidden" name="DeleteLinkRef" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
							<% while (loop("ProductLinksList","ProductLink",null)) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("ProductLink:TypedProductCategoryAssignmentRef"),null),null).equals(context.getFormattedValue(getObject("Selected"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
									<% {Object temp_obj = ("true"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
								<% } %>
							<% } %>
						<% } %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ShowDeleteLinkMessageBox")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowDeleteLinkMessageBox"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedProductLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
						<% } %>
						<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("ProductLinksMessage"))}, 37); %>
					<% } %>
				<% } else { %>
					<!-- delete confirmation if nothing is selected-->
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 41); %>
				<% } %>
			<% } %>
			
			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ProductLink.subject",null))),
new TagParameter("type","nse")}, 47); %>
			<% } %>
	
		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s" >
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>

			
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinksList","ProductLink",null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>
			<% } %>
			<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (((((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowMoveButtons", temp_obj);} %>
			
			<tr>
				<td class="table_header e center select_all" width="5%" nowrap="nowrap">
					<div id="CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CatProdLinkRef','CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
										<% {out.write(localizeISText("CategoryLinkProductList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
					<div id="CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CatProdLinkRef','CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
										<% {out.write(localizeISText("CategoryLinkProductList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
				<td class="table_header e"><% {out.write(localizeISText("CategoryLinkProductList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e" width="40%"><% {out.write(localizeISText("CategoryLinkProductList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e right" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowMoveButtons"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
					<td class="table_header e left" width="5%"><% {out.write(localizeISText("CategoryLinkProductList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_header e left" width="10%"><% {out.write(localizeISText("CategoryLinkProductList.Status.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>

			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinksList","pl",null)) { %>
				<% {Object temp_obj = (context.getFormattedValue(getObject("pl:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} %>
				<tr>
					<td class="table_detail e n center">
						<input type="checkbox" name="CatProdLinkRef_<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",112);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
					</td>
					<td class="table_detail e n">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
					</td>
					<td class="table_detail e n" nowrap="nowrap">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
					</td>
					<td class="table_detail e n right" nowrap="nowrap">
						<% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("pl:Product"))}, 121); %>&nbsp;
					</td>
					<td class="table_detail3 top e n" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeLocal"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("CategoryLinkProductList.LocalLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("CategoryLinkProductList.SharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkOriginType(pl)"),null).equals(context.getFormattedValue(getObject("CategoryLinkTypeSummary:LinkSourceTypeLocalAndShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("CategoryLinkProductList.LocalLinkSharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
						<% }}} %>
					</td>
					<td class="table_detail e n left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Online.alt",null)),null)%>" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
					</td>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("pl:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowMoveButtons"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
								<td align="center" class="table_detail top n sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
									<input type="hidden" name="VarSortAttribute" value="position" />
									<table border="0" cellpadding="0" cellspacing="0" align="center">
										<tr>
											<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/></td>
										</tr>
										<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></td></tr>
										<tr>
											<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif"  alt=""/></td>
										</tr>
									</table>
								</td>
							<% } %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("pl:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% } %>
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("CategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinksOfTheSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } else { %>
						<% {out.write(localizeISText("CategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>				
					<% {out.write(localizeISText("CategoryLinkProductList.ClickAssignToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		<% } %>
		<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
				<td colspan="7" class="n" align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CategoryProductServiceTypes:get(LinkTypeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>
								<% while (loop("ServiceTypeCategories","ServiceType",null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceType:Name"),null).equals(context.getFormattedValue(getObject("CategoryProductServiceTypes:get(LinkTypeName)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>
										<input type="hidden" name="WFAdvancedSearch_TypeCode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceType:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
										<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",180);}else{getLoopStack().pop();break;} %>
									<% } %>
								<% } %>
							<% } %>
							<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<input type="submit" name="linkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Assign.button",null)),null)%>" class="button"/>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %>
							<td class="button">
								<input type="submit" name="confirmProductLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Unassign.button",null)),null)%>" class="button"/>
							</td>
						<% } %>
					</tr>
				</table>				
			</td>
			<% } %>
		</tr>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>