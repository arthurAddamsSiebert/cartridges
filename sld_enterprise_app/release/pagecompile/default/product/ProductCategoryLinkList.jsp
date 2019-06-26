<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td class="table_title2 w e s"><% {out.write(localizeISText("sld_enterprise_app.CategoryLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td valign="top" class="table_title_description w e s">
			<% {out.write(localizeISText("sld_enterprise_app.ThisListShowsAllStaticLinksFromThisProductToAnyNum.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
				<br/>
				<% {out.write(localizeISText("sld_enterprise_app.ClickNewToCreateANewCategoryLinkUseTheCheckboxesAn.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
</table>

<% URLPipelineAction action57 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null));String site57 = null;String serverGroup57 = null;String actionValue57 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null);if (site57 == null){  site57 = action57.getDomain();  if (site57 == null)  {      site57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup57 == null){  serverGroup57 = action57.getServerGroup();  if (serverGroup57 == null)  {      serverGroup57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productCategoryLinksForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue57, site57, serverGroup57,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="VarSortAttribute" value="position" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedProdCatLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<!-- selected links -->
				<% while (loop("SelectedProdCatLinkRefs","Selected",null)) { %>
					<input type="hidden" name="DeleteLinkRef" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% } %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","Conditions"),
new TagParameter("okbtnname","deleteCategoryLinks"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("sld_enterprise_app.AreYouSureYouWantToDeleteTheseLinks.message",null)))}, 35); %>
			<% } else { %>
				<!-- delete confirmation if nothing is selected-->
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","mde")}, 38); %>
			<% } %>
		<% } %>
		
		<!-- move links if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","nse")}, 44); %>
		<% } %>
	<% } %>
	
</table>

<!-- filter link list -->
<% processOpenTag(response, pageContext, "filterlinklist", new TagParameter[] {
new TagParameter("selectedLinkType",getObject("SelectedLinkTypePC")),
new TagParameter("selectedLinkTypeFieldName","SelectedLinkTypePC"),
new TagParameter("typeCodeGroup",getObject("CategoryTypeCodeGroup")),
new TagParameter("linkTypes",getObject("CategoryTypeCodesToShow"))}, 51); %>

<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
<% } %>

	
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
							<td class="table_header e s" nowrap="nowrap" width="80">
								<div id="PCA">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
											<a href="javascript:selectAll('productCategoryLinksForm','ProdCatLinkRef','PCA','PCB');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="PCB" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
											<a href="javascript:selectAll('productCategoryLinksForm','ProdCatLinkRef','PCA','PCB');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header e s" width="50%"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
							<td class="table_header e s" width="5%"><% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<% } %>
					</tr>

					
					<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
					<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% while (loop("CategoryLinks","CategoryLink",null)) { %>
						<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
							<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
						<% } %>
					<% } %>

					<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% while (loop("CategoryLinks","CategoryLink",null)) { %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} %>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
							<!-- group for typecode -->
							<tr>
								<td class="table_sub_header s e w" colspan="4">
								<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("CategoryTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("CategoryLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
								</td>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
									<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
										<table border="0" cellpadding="0" cellspacing="0" align="center">
											<tr>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
													<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up_disabled.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
												<% } else { %>
													<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
												<% } %>
											</tr>
											<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></td></tr>
											<tr>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
													<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down_disabled.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
												<% } else { %>
													<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
												<% } %>
											</tr>
										</table>
									</td>
									<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
								<% } %>
							</tr>
							<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
						<% } %>

						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
								<td class="table_detail top e s center">
									<input type="checkbox" name="ProdCatLinkRef_<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedProdCatLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><% while (loop("SelectedProdCatLinkRefs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",151);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
								</td>
							<% } %>
							<td class="table_detail3 top bold e s" nowrap="nowrap">
								<% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("DetailLink",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DetailCategoryUUID",null),context.getFormattedValue(getObject("CategoryLink:CatalogCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypePC",null),context.getFormattedValue(getObject("SelectedLinkTypePC"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("Category",getObject("CategoryLink:CatalogCategory"))}, 155); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="Online" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="Implicit Product Binding" border="0"/><% } %></td>
							<td class="table_detail3 top bold e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="Online" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="Implicit Product Binding" border="0"/><% } %></td>
							<td class="table_detail top e s">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else { %>
									&nbsp;
								<% } %>
							</td>
						</tr>
					<% } %>
				</table>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
					
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="submit" name="newCategoryLink" value="  New  " class="button"  <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
										</td>
										<td class="button">
											<input type="submit" name="confirmCategoryLinksDelete" value=" Delete " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
					
				<% } %>
			<% } else { %>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="table_detail w e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
								This product does not contain any category links of the selected type.<br/>
							<% } else { %>
								This product does not contain any category links.<br/>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>
								Click &quot;New&quot; to create a new category link.
							<% } %>
						</td>
					</tr>
				</table>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>
					<table width="100%" cellspacing="0" cellpadding="0" border="0">
						<tr>
							<td align="right" class="w e s">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="submit" name="newCategoryLink" value="  New  " class="button"  <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			<% } %>
		</td>
	</tr>
<% out.print("</form>"); %>
</table>

<% printFooter(out); %>