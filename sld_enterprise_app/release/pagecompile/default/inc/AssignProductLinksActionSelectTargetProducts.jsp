<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Page Navigator -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","SelectLinkType"),
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("selectAction",null),context.getFormattedValue("<< Previous",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("TargetProducts:ID"),null)).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("AssignProductLinks",null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)).addURLParameter(context.getFormattedValue("SelectedProductLinkType",null),context.getFormattedValue(getObject("SelectedProductLinkType"),null)).addURLParameter(context.getFormattedValue("LinkTarget",null),context.getFormattedValue(getObject("LinkTarget"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Step2AssignProductCategoryLinksSelectLinkType.text",null))),
new TagParameter("id","SelectLinkType")}, 4); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-DispatchFromTargetProductsWizardPage",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("AssignProductLinks",null))).addURLParameter(context.getFormattedValue("LinkTarget",null),context.getFormattedValue(getObject("LinkTarget"),null)).addURLParameter(context.getFormattedValue("CategoryLinkType",null),context.getFormattedValue(getObject("CategoryLinkType"),null)).addURLParameter(context.getFormattedValue("ProductLinkType",null),context.getFormattedValue(getObject("ProductLinkType"),null)).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("TargetProducts:ID"),null)).addURLParameter(context.getFormattedValue("IsIncomingLink",null),context.getFormattedValue(getObject("IsIncomingLink"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetProducts.Step3AssignProductCategoryLinks.text",null)))}, 15); %>
<!-- EO Page Navigator -->
<% {Object temp_obj = (localizeText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null))); getPipelineDictionary().put("LinkTypeDisplayName", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("simple"); getPipelineDictionary().put("SearchType", temp_obj);} %>
<% } %>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tbody>
		<tr>
			<td class="table_title aldi">
				<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Step3AssignProductCategoryLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<!-- Check search mask -->
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSearchMessages.isml", null, "40");} %>
				</table>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoTargetProductSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s e w">
						<tr>
							<td class="error_icon e">
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
							</td>
							<td class="error" width="100%">
								<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.YouHaveNotSelectedAnyTargetProducts.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<tr>
			<td class="table_title_description e w">
				<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Step3Of3UseTheCheckboxes.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("LinkTypeDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %>  <br/>
			</td>
		</tr>
	</tbody>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("TargetProducts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("InitialProductList")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("InitialProductList"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
<% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("parametervalue6",getObject("LinkTarget")),
new TagParameter("parametervalue5",getObject("SelectedProductLinkType")),
new TagParameter("parametervalue4",getObject("IsSearchFired")),
new TagParameter("parametervalue3",getObject("IsIncomingLink")),
new TagParameter("parametername1","ProductLinkType"),
new TagParameter("parametervalue2",getObject("SearchType")),
new TagParameter("parametervalue1",getObject("ProductLinkType")),
new TagParameter("parametername2","SearchType"),
new TagParameter("parametername3","IsIncomingLink"),
new TagParameter("pipeline",context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-TargetProductsSearch",null)),
new TagParameter("parametername4","IsSearchFired"),
new TagParameter("parametername5","SelectedProductLinkType"),
new TagParameter("parametername6","LinkTarget")}, 68); %>
<% } %>
<% URLPipelineAction action200 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-DispatchFromTargetProductsWizardPage",null),null)))),null));String site200 = null;String serverGroup200 = null;String actionValue200 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-DispatchFromTargetProductsWizardPage",null),null)))),null);if (site200 == null){  site200 = action200.getDomain();  if (site200 == null)  {      site200 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup200 == null){  serverGroup200 = action200.getServerGroup();  if (serverGroup200 == null)  {      serverGroup200 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-DispatchFromTargetProductsWizardPage",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("FinishWizardForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue200, site200, serverGroup200,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
		<tfoot>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
				<tr>
					<td colspan="6">
						<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("parametername1","ProductLinkType"),
new TagParameter("parametervalue1",getObject("ProductLinkType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","TargetProducts"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 82); %>
					</td>
				</tr>
				<tr>
					<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
				</tr>
			<% } %>
			<tr>
				<td class="n s">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="submit" name="previous" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
							</td>
						</tr>
					</table>
				</td>
				<td class="right n s" colspan="5">
					<table border="0" cellspacing="4" cellpadding="0" width="100%">
						<tr>
							<td class="right">
								<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="hidden" name="SelectedProductLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedProductLinkType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="hidden" name="PageableName" value="SourceProducts"/>
								<input type="hidden" name="LinkType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductLinkType"),null)),null)%>">
								<input type="hidden" name="LinkTarget" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTarget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="assignProductProductLinks" value="true">
								<input type="hidden" name="IsIncomingLink" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("IsIncomingLink"),null)),null)%>" />
								<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Finish.button",null)),null)%>" class="button"/>
							</td>
							<td class="button" width="1">
								<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</tfoot>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetProducts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>
			<tbody>
				<tr style="display: none">
					<td><input type="hidden" name="ProductLinkType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductLinkType"),null)),null)%>"></td>
				</tr>
				<% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetProducts.NoProductsFoundForYourSearch",null))),
new TagParameter("EmptyRepositoryDesc",localizeTextEx(context.getFormattedValue("AssignProductLinksActionSelectTargetProducts.ThereAreNoProductsThatCanBeAssignedAs0ToTheSelectedSourceProducts",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("LinkTypeDisplayName"),null)))))}, 128); %>	
			</tbody>
		<% } else { %>
			<thead>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
						<th class="table_header e s center" nowrap="nowrap" width="80">
							<span id="A">
								<a href="javascript:selectAll('FinishWizardForm','SelectedProductUUID','A','B');" class="tableheader">
									<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</a>
							</span>
							<span id="B" style="display:none">
								<a href="javascript:selectAll('FinishWizardForm','SelectedProductUUID','A','B');" class="tableheader">
									<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</a>
							</span>
						</th>
					<% } %>
					<th class="table_header e s">
						<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</th>
					<th class="table_header e s">
						<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</th>
					<th class="table_header e s">
						<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</th>
					<th class="table_header e s">
						<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</th>
					<th class="table_header s" width="40">
						<% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</th>
				</tr>
			</thead>
			
			<tbody>
				<% while (loop("TargetProducts","ProductBO",null)) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
							<td class="e s center">
								<input type="checkbox" name="SelectedProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductBO:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProductBO:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
								<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							</td>
						<% } %>
						<td class="table_detail e s top">
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						</td>
						<td class="table_detail e s top" nowrap="nowrap">
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						</td>
						<td class="table_detail e s top right" nowrap="nowrap">
							<% processOpenTag(response, pageContext, "productboprice", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 188); %>&nbsp;
						</td>
						<td class="table_detail e s top left" nowrap="nowrap">
							<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductBOTypeCode", null, "191");} %>&nbsp;
						</td>
						<td class="table_detail_status s" nowrap="nowrap">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<colgroup>
									<col width="25%" />
									<col width="25%" />
									<col width="25%" />
									<col width="25%" />
								</colgroup>
								<tbody>
									<tr>
										<td class="table_detail_status">
											<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.InStock",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.InStock",null)),null)%>" border="0"/>
											<% } else { %>
												&nbsp;
											<% } %>
										</td>
										<td class="table_detail_status">
											<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasCatalogCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %>
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_explicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.Categorized",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.Categorized",null)),null)%>" border="0"/>
											<% } else { %>
												&nbsp;
											<% } %>
										</td>
										<td class="table_detail_status">
											<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductBO:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_offers.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.Offered",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.Offered",null)),null)%>" border="0"/>
											<% } else { %>
												&nbsp;
											<% } %>
										</td>
										<td class="table_detail_status">
											<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:hasDerivedProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_to.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.SharedToOthers",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductExportSelectProductsColumns.SharedToOthers",null)),null)%>" border="0"/>
											<% } else { %>
												&nbsp;
											<% } %>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				<% } %>
			</tbody>
		<% } %>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>