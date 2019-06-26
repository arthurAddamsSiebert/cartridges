<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% context.setCustomTagTemplateName("categorytocategorylinkrow","category/link/CategoryToCategoryLinkRow.isml",false,new String[]{"link","directionrow","showsortmenu","rowspan"},null); %>

<% {Object temp_obj = (getObject("LegacyLinkHelper:LegacyTypeCodeName(linktype,linktypegroup)")); getPipelineDictionary().put("LegacyTypeCodeName", temp_obj);} %>
<% {Object temp_obj = (context.getFormattedValue("cat_cat_link_form_",null) + context.getFormattedValue(getObject("linktype:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("direction"),null)); getPipelineDictionary().put("CatLinkForm_ID", temp_obj);} %>


<% URLPipelineAction action275 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));String site275 = null;String serverGroup275 = null;String actionValue275 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null);if (site275 == null){  site275 = action275.getDomain();  if (site275 == null)  {      site275 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup275 == null){  serverGroup275 = action275.getServerGroup();  if (serverGroup275 == null)  {      serverGroup275 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("CatLinkForm_ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue275, site275, serverGroup275,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategoryBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StrippedSelectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StrippedSelectedLinkType"),null).equals(context.getFormattedValue(getObject("linktype:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkDirection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkDirection"),null).equals(context.getFormattedValue(getObject("direction"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>

		
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<!-- delete confirmation for category-links -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
							<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
							<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Categorie.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteCategoryLinks"),
new TagParameter("okbtnname","deleteCategoryLinkBOs"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage")),
new TagParameter("class","w100")}, 32); %>
							</table>
					</td>
				</tr>
			<% } %>

			<!-- delete confirmation if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 45); %>
			<% } %>

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","nse")}, 50); %>
			<% } %>
		</table>
	<% } %>

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
		
		<% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (getObject("direction:Outgoing"))).booleanValue() && ((Boolean) ((( ((Number) getObject("links:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowSortMenu", temp_obj);} %>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
					<td class="table_header e s center select_all" width="5%" nowrap="nowrap">
						<div id="CCA<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
								<a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("CategoryLinkCategoryList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
								</td>
							</tr>
						</table>
						</div>
						<div id="CCB<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
							<tr>
								<td nowrap="nowrap">
								<a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CCA<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CCB<% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader"><% {out.write(localizeISText("CategoryLinkCategoryList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
								</td>
							</tr>
							</table>
						</div>
					</td>
				<% } %>
				<td class="table_header e s"><% {out.write(localizeISText("CategoryLinkCategoryList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="15%"><% {out.write(localizeISText("CategoryLinkCategoryList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="30%"><% {out.write(localizeISText("CategoryLinkCategoryList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header s" width="10%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkCategoryList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowSortMenu"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>	
					<td class="table_header w s" width="5%"><% {out.write(localizeISText("CategoryLinkCategoryList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>

			<% while (loop("links","CurrentLinkBO","cnt")) { %>
				<% processOpenTag(response, pageContext, "categorytocategorylinkrow", new TagParameter[] {
new TagParameter("directionrow",getObject("direction")),
new TagParameter("rowspan",getObject("links:Size")),
new TagParameter("link",getObject("CurrentLinkBO")),
new TagParameter("showsortmenu",((((Boolean) (getObject("ShowSortMenu"))).booleanValue() && ((Boolean) ((( ((Number) getObject("cnt")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 94); %>
			<% } %>
		</table>
	<% } else { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
			<tr>
				<td class="table_detail s">
					<% {out.write(localizeISText("CategoryLinkCategoryList.ClickAssignToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } %>
	
	<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
		<tr>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LegacyTypeCodeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<input type="hidden" name="StrippedSelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("linktype:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<input type="hidden" name="SelectedLinkDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("direction"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Outgoing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
								<input type="submit" name="linkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Assign.button",null)),null)%>" class="button" />
							<% } else { %>
								<input type="submit" name="incomingLinkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Assign.button",null)),null)%>" class="button" />
							<% } %>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>
							<td class="button">
								<input type="submit" name="confirmCategoryLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Unassign.button",null)),null)%>" class="button"/>
							</td>
						<% } %>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
<% out.print("</form>"); %>
<% printFooter(out); %>