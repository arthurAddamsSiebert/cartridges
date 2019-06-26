<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td class="table_title2 aldi"><% {out.write(localizeISText("CategoryProductLinkList.ProductLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
	<tr>
		<td valign="top" class="table_title_description w e s">
			<% {out.write(localizeISText("CategoryProductLinkList.ClickNewToCreateANewProductLinkUseTheCheckboxesAnd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
		</td>
	</tr>
	<% } %>
</table>

<% URLPipelineAction action296 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site296 = null;String serverGroup296 = null;String actionValue296 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site296 == null){  site296 = action296.getDomain();  if (site296 == null)  {      site296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup296 == null){  serverGroup296 = action296.getServerGroup();  if (serverGroup296 == null)  {      serverGroup296 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("categoryProductLinksForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue296, site296, serverGroup296,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">

		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
				<!-- selected links -->
				<% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %>
					<input type="hidden" name="DeleteLinkRef" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% } %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("CategoryProductLinkList.AreYouSureYouWantToDeleteTheseLinks.message",null)))}, 32); %>
			<% } else { %>
				<!-- delete confirmation if nothing is selected-->
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mde")}, 35); %>
			<% } %>
		<% } %>
		
		<!-- move links if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ProductLink.subject",null))),
new TagParameter("type","nse")}, 41); %>
		<% } %>

	</table>

	<!-- filter product link types -->
	<% processOpenTag(response, pageContext, "filterlinklist", new TagParameter[] {
new TagParameter("selectedLinkType",getObject("SelectedLinkTypeCP")),
new TagParameter("selectedLinkTypeFieldName","SelectedLinkTypeCP"),
new TagParameter("typeCodeGroup",getObject("ProductTypeCodeGroup")),
new TagParameter("linkTypes",getObject("ProductTypeCodesToShow"))}, 47); %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" >
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>

			
			<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinks","ProductLink",null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>
			<% } %>

			<tr>
				<td class="table_header w e s center select_all" nowrap="nowrap">
					<div id="CPA">
						<table border="0" cellspacing="0" cellpadding="0" class="w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductLinksForm','CatProdLinkRef','CPA','CPB');" class="tableheader">
										<% {out.write(localizeISText("CategoryProductLinkList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
					<div id="CPB" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="w100">
							<tr>
								<td nowrap="nowrap">
									<a href="javascript:selectAll('categoryProductLinksForm','CatProdLinkRef','CPA','CPB');" class="tableheader">
										<% {out.write(localizeISText("CategoryProductLinkList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
				<td class="table_header e s"><% {out.write(localizeISText("CategoryProductLinkList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("CategoryProductLinkList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("CategoryProductLinkList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e s left" width="10%"><% {out.write(localizeISText("CategoryProductLinkList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
					<td class="table_header e s left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryProductLinkList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
				<% } %>

			</tr>

			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinks","pl",null)) { %>
				<% {Object temp_obj = (context.getFormattedValue(getObject("pl:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} %>

				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("pl:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
					<!-- group for typecode -->
					<tr>
						<td class="table_sub_header w e s" colspan="5">
							<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("pl:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>								
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
							<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
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
							<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
						<% } %>
					</tr>
					<% {Object temp_obj = (context.getFormattedValue(getObject("pl:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>

				<tr>
					<td class="table_detail w e s center">
						<input type="checkbox" name="CatProdLinkRef_<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedCatProdLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% while (loop("SelectedCatProdLinkRefs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",137);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
					</td>
					<td class="table_detail e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue(getObject("SelectedLinkTypeCP"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } else { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue("0",null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } %>&nbsp;
					</td>
					<td class="table_detail e s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue(getObject("SelectedLinkTypeCP"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } else { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("pl:Product:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCP",null),context.getFormattedValue("0",null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } %>&nbsp;
					</td>
					<td class="table_detail e s right" nowrap="nowrap">
						<% {String value = null;try{value=context.getFormattedValue(getObject("pl:Product:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
					<td class="table_detail e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.Online.alt",null)),null)%>" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("pl:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
					</td>
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail w e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("CategoryProductLinkList.ThisCategoryDoesNotContainAnyProductLinksOfTheSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } else { %>
						<% {out.write(localizeISText("CategoryProductLinkList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>				
					<% {out.write(localizeISText("CategoryProductLinkList.ClickNewToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		<% } %>
		<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
			<td colspan="7" class="w e s" align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="submit" name="newProductLink" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.New.button",null)),null)%>" class="button"/>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>
							<td class="button">
								<input type="submit" name="confirmProductLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryProductLinkList.Delete.button",null)),null)%>" class="button"/>
							</td>
						<% } %>
					</tr>
				</table>				
			</td>
			<% } %>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>