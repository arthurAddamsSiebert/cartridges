<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action31 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null));String site31 = null;String serverGroup31 = null;String actionValue31 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null);if (site31 == null){  site31 = action31.getDomain();  if (site31 == null)  {      site31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup31 == null){  serverGroup31 = action31.getServerGroup();  if (serverGroup31 == null)  {      serverGroup31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("categoryCategoryLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue31, site31, serverGroup31,true)); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
		<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% } %>
	<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="VarSortAttribute" value="position" />
	<input type="hidden" name="HideClassificationCatalogs" value="true"/>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
	

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedProdCatLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
				<!-- selected links -->
				<% while (loop("SelectedProdCatLinkRefs","Selected",null)) { %>
					<input type="hidden" name="DeleteLinkRef" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Selected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedCategoryLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
				<% } else { %>
					<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
				<% } %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","Conditions"),
new TagParameter("okbtnname","deleteCategoryLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage"))}, 30); %>
			<% } else { %>
				<!-- delete confirmation if nothing is selected-->
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","mdea")}, 33); %>
			<% } %>
		<% } %>

		<!-- move links if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","nse")}, 39); %>
		<% } %>
	</table>
<% } %>

<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
<% } %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
							<td class="table_header e s center select_all" width="5%" nowrap="nowrap">
								<div id="CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
									<table border="0" cellspacing="0" cellpadding="0" class="center w100" >
										<tr>
											<td nowrap="nowrap">
											<a href="javascript:selectAll('categoryCategoryLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','ProdCatLinkRef','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="center w100">
										<tr>
											<td nowrap="nowrap">
											<a href="javascript:selectAll('categoryCategoryLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','ProdCatLinkRef','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>
						<% } %>
						<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header e s" width="15%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header e s" width="30%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>

						
						<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
						<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
						<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
						<% while (loop("CategoryLinksList","CategoryLink",null)) { %>
							<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
								<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
							<% } %>
						<% } %>
						<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
							<td class="table_header e s" width="10%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<% } else { %>
							<td class="table_header e s" width="15%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<% } %>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
							<td class="table_header e s" width="5%"><% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<% } else { %>
							<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
						<% } %>
					</tr>

					<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% while (loop("CategoryLinksList","CategoryLink","cnt")) { %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypedProductCategoryAssignmentRef"),null)); getPipelineDictionary().put("actRef", temp_obj);} %>
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
								<td class="table_detail top e s center">
									<input type="checkbox" name="ProdCatLinkRef_<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedProdCatLinkRefs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% while (loop("SelectedProdCatLinkRefs","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("actRef"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",114);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/>
								</td>
							<% } %>
							<td class="table_detail3 top bold e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
										<% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("DetailLink",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DetailCategoryUUID",null),context.getFormattedValue(getObject("CategoryLink:CatalogCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypePC",null),context.getFormattedValue(getObject("SelectedLinkTypePC"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("Category",getObject("CategoryLink:CatalogCategory"))}, 120); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
									<% } else { %>
										<% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("DetailLink",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DetailCategoryUUID",null),context.getFormattedValue(getObject("CategoryLink:CatalogCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypePC",null),context.getFormattedValue(getObject("SelectedLinkTypePC"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("Category",getObject("CategoryLink:CatalogCategory"))}, 123); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
									<% } %>
								<% } else { %>
									<% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("Category",getObject("CategoryLink:CatalogCategory"))}, 127); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
								<% } %>
							<td class="table_detail3 top bold e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:CatalogCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:CatalogCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
							<td class="table_detail top e s">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:CatalogCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else { %>
									&nbsp;
								<% } %>
							</td>
							<td class="table_detail3 top e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(CategoryLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeLocal"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("sld_enterprise_app.LocalLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(CategoryLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("sld_enterprise_app.SharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<input type="hidden" name="DontDeleteSharedCategoryLinkIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("actRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(CategoryLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeLocalAndShared"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("sld_enterprise_app.LocalLinkSharedLink.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}} %>
							</td>

							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
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
								
								<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
							<% } %>
						</tr>
					<% } %>
				</table>
			<% } else { %>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="table_detail w e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
								This product does not contain any category links of the selected type.<br/>
							<% } else { %>
								This product does not contain any category links.<br/>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
								Click &quot;Assign&quot; to create a new category link.
							<% } %>
						</td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
				
				<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
					<tr>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
										<input type="submit" name="linkTypeSelected" value="  Assign  " class="button"  <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
									</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>
									<td class="button">
										<input type="submit" name="confirmCategoryLinksDelete" value=" Unassign " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
									</td>
									<% } %>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
			<% } %>	
		</td>
	</tr>
</table>
<% out.print("</form>"); %><% printFooter(out); %>