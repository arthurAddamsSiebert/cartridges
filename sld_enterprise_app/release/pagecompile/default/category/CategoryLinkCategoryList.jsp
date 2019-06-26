<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action258 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));String site258 = null;String serverGroup258 = null;String actionValue258 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null);if (site258 == null){  site258 = action258.getDomain();  if (site258 == null)  {      site258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup258 == null){  serverGroup258 = action258.getServerGroup();  if (serverGroup258 == null)  {      serverGroup258 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("categoryCategoryLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue258, site258, serverGroup258,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>

		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
				<% while (loop("CategoryLinksList","CategoryLink",null)) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(CategoryLink:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("true"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
					<% } %>
				<% } %>
			<% } %>

			<!-- delete confirmation for category-links -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ShowDeleteLinkMessageBox")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowDeleteLinkMessageBox"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedCategoryLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
									<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
								<% } else { %>
									<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
								<% } %>
								<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Categorie.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteCategoryLinks"),
new TagParameter("parametervalue1",getObject("Category:UUID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("okbtnname","deleteCategoryLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage")),
new TagParameter("class","w100")}, 34); %>
							</table>
					</td>
				</tr>
			<% } %>

			<!-- delete confirmation if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 51); %>
			<% } %>

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","nse")}, 56); %>
			<% } %>
		</table>
	<% } %>

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
		
		<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
		<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
		<% while (loop("CategoryLinksList","CategoryLink",null)) { %>
			<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% } %>
		<% } %>

		<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
		<% {Object temp_obj = (((((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowMoveButtons", temp_obj);} %>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
			<tr>
				<td class="table_header e s center select_all" width="5%" nowrap="nowrap">
				<div id="CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
						<tr>
							<td nowrap="nowrap">
							<a href="javascript:selectAll('categoryCategoryLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("CategoryLinkCategoryList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
							</td>
						</tr>
					</table>
				</div>
				<div id="CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="center w100">
						<tr>
							<td nowrap="nowrap">
							<a href="javascript:selectAll('categoryCategoryLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("CategoryLinkCategoryList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
							</td>
						</tr>
					</table>
				</div>
				</td>
				<td class="table_header e s"><% {out.write(localizeISText("CategoryLinkCategoryList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="15%"><% {out.write(localizeISText("CategoryLinkCategoryList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="30%"><% {out.write(localizeISText("CategoryLinkCategoryList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowMoveButtons"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
					<td class="table_header s" width="10%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkCategoryList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header w s" width="5%"><% {out.write(localizeISText("CategoryLinkCategoryList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_header s" width="15%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkCategoryList.Type.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>

			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>

			<% while (loop("CategoryLinksList","CategoryLink",null)) { %>
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/inc/CategoryToCategoryLinkRow", null, "114");} %>
			<% } %>
		</table>
	<% } else { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
			<tr>
				<td class="table_detail s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("CategoryLinkCategoryList.ThisCategoryDoesNotContainAnyCategoryLinksOfTheSel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } else { %>
						<% {out.write(localizeISText("CategoryLinkCategoryList.ThisCategoryDoesNotContainAnyCategoryLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("CategoryLinkCategoryList.ClickAssignToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		</table>
	<% } %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
		<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
			<tr>
				<td align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="linkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Assign.button",null)),null)%>" class="button" />
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmCategoryLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Unassign.button",null)),null)%>" class="button"/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
	
<% out.print("</form>"); %>
<% printFooter(out); %>