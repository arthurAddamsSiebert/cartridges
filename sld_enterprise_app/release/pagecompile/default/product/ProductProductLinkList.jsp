<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td class="table_title2 aldi"><% {out.write(localizeISText("sld_enterprise_app.ProductLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>

	<tr>
		<td valign="top" class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("sld_enterprise_app.ClickNewToCreateANewProductLinkUseTheCheckboxesAnd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else { %>
				<% {out.write(localizeISText("sld_enterprise_app.ToSortProductLinksSelectThemAndPressTheSortButton.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
</table>

<% URLPipelineAction action76 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null));String site76 = null;String serverGroup76 = null;String actionValue76 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null);if (site76 == null){  site76 = action76.getDomain();  if (site76 == null)  {      site76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup76 == null){  serverGroup76 = action76.getServerGroup();  if (serverGroup76 == null)  {      serverGroup76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productProductLinksForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue76, site76, serverGroup76,true)); %>

	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
	
		 
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","nse")}, 39); %>
			<% } %>
	
			<!-- delete confirmation if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","mde")}, 44); %>
			<% } %>
	
			<!-- delete confirmation for product-links -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
				<tr>
					<td>
							<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
								<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product"),
new TagParameter("cancelbtnname","cancelDeleteProductLinks"),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mdc"),
new TagParameter("class","w100")}, 52); %>
							</table>
					</td>
				</tr>
			<% } %>
	
		</table>
	<% } %>

	<!-- filter product link types -->
	<% processOpenTag(response, pageContext, "filterlinklist", new TagParameter[] {
new TagParameter("selectedLinkType",getObject("SelectedLinkTypePP")),
new TagParameter("selectedLinkTypeFieldName","SelectedLinkTypePP"),
new TagParameter("typeCodeGroup",getObject("ProductTypeCodeGroup")),
new TagParameter("linkTypes",getObject("ProductTypeCodesToShow"))}, 66); %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(localizeText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("SelectedLinkTypePP"),null) + context.getFormattedValue(".advancedDescription",null),null)))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td valign="top" class="table_title_description w e s">
					<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("SelectedLinkTypePP"),null) + context.getFormattedValue(".advancedDescription",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>

			
			<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinks","ProductLink",null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>
			<% } %>

			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
					<td class="table_header e s center select_all" nowrap="nowrap">
						<div id="PPA">
							<table border="0" cellspacing="0" cellpadding="0" class="w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('productProductLinksForm','SelectedObjectUUID','PPA','PPB');" class="tableheader">
											<% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
						<div id="PPB" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('productProductLinksForm','SelectedObjectUUID','PPA','PPB');" class="tableheader">
											<% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				<% } %>
				<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e s left" width="10%"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
						<td class="table_header e s left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<% } else { %>
						<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
					<% } %>
				<% } %>
			</tr>


			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinks","ProductLink",null)) { %>

				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
					<!-- group for typecode -->
					<tr>
						<td class="table_sub_header s e w" colspan="5">
							<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>								
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
							<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<table border="0" cellpadding="0" cellspacing="0" align="center">
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
											<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up_disabled.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } else { %>
											<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } %>	
									</tr>
									<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></td></tr>
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>
											<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down_disabled.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } else { %>
											<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } %>	
									</tr>
								</table>
							</td>
							<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
						<% } %>
					</tr>
					<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>

				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>
						<td class="table_detail3 top e s center">
							<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(ProductLink:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
	
						</td>
					<% } %>
					<td class="table_detail3 top e s" width="100%">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductLink:TargetID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
							<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</a>
					</td>
					<td class="table_detail3 top e s" nowrap="nowrap">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductLink:TargetID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
							<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</a>
					</td>
					<td class="table_detail3 top e s right" nowrap="nowrap">
						<% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("ProductLink:TargetProduct"))}, 194); %>&nbsp;
					</td>
					<td class="table_detail3 top e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLink:TargetProduct:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="Online" title="Online" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLink:TargetProduct:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="In Stock" title="In Stock" border="0"/><% } %>&nbsp;
					</td>

				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail w e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
						This product does not contain any product links of the selected type.<br/>
					<% } else { %>
						This product does not contain any product links.<br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %>
						Click &quot;New&quot; to create a new product link.
					<% } %>
				</td>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="7" class="w e s" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="submit" name="newProductLink" value="  New  " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmProductLinksDelete" value=" Delete " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>