<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td class="table_title2 w e s"><% {out.write(localizeISText("CategoryCategoryLinkList.CategoryLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
	<tr>
		<td valign="top" class="table_title_description w e s">
			<% {out.write(localizeISText("CategoryCategoryLinkList.ClickNewToCreateANewCategoryLinkUseTheCheckboxes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
		</td>
	</tr>
	<% } %>
</table>

<% URLPipelineAction action290 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));String site290 = null;String serverGroup290 = null;String actionValue290 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null);if (site290 == null){  site290 = action290.getDomain();  if (site290 == null)  {      site290 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup290 == null){  serverGroup290 = action290.getServerGroup();  if (serverGroup290 == null)  {      serverGroup290 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("categoryCategoryLinksForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue290, site290, serverGroup290,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">

		<!-- delete confirmation for category-links -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
			<tr>
				<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
							<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Categorie.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteCategoryLinks"),
new TagParameter("parametervalue1",getObject("Category:UUID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("okbtnname","deleteCategoryLinks"),
new TagParameter("type","mdc"),
new TagParameter("class","w100")}, 30); %>
						</table>
				</td>
			</tr>
		<% } %>

		<!-- delete confirmation if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mde")}, 46); %>
		<% } %>
	
		<!-- move links if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","nse")}, 51); %>
		<% } %>

	</table>

	<!-- filter link list -->
	<% processOpenTag(response, pageContext, "filterlinklist", new TagParameter[] {
new TagParameter("selectedLinkType",getObject("SelectedLinkTypeCC")),
new TagParameter("selectedLinkTypeFieldName","SelectedLinkTypeCC"),
new TagParameter("typeCodeGroup",getObject("CategoryTypeCodeGroup")),
new TagParameter("linkTypes",getObject("CategoryTypeCodesToShow"))}, 57); %>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>

					
					<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
					<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% while (loop("CategoryLinks","CategoryLink",null)) { %>
						<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
							<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
						<% } %>
					<% } %>

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_header w e s" nowrap="nowrap" width="80">
							<div id="CCA">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
										<a href="javascript:selectAll('categoryCategoryLinksForm','SelectedObjectUUID','CCA','CCB');" class="tableheader"><% {out.write(localizeISText("CategoryCategoryLinkList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							<div id="CCB" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
										<a href="javascript:selectAll('categoryCategoryLinksForm','SelectedObjectUUID','CCA','CCB');" class="tableheader"><% {out.write(localizeISText("CategoryCategoryLinkList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							</td>
							<td class="table_header e s"><% {out.write(localizeISText("CategoryCategoryLinkList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("CategoryCategoryLinkList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s" width="50%"><% {out.write(localizeISText("CategoryCategoryLinkList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
								<td class="table_header e s" width="5%"><% {out.write(localizeISText("CategoryCategoryLinkList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<% } else { %>
								<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
							<% } %>
						</tr>

						<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
						<% while (loop("CategoryLinks","CategoryLink",null)) { %>
	
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
								<!-- group for typecode -->
								<tr>
									<td class="table_sub_header s e w" colspan="4">
									<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("CategoryTypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("CategoryLink:TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>								
									</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
										<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
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
								<% {Object temp_obj = (context.getFormattedValue(getObject("CategoryLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
							<% } %>
	
	
							<tr>
								<td class="table_detail3 top w e s center">
									<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("CategoryLink:UUID"),null)%>"/>
									<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("CategoryLink:UUID"),null)%>"	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(CategoryLink:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
								</td>
								<td class="table_detail3 top bold e s" nowrap="nowrap">
									<% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("DetailLink",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DetailCategoryUUID",null),context.getFormattedValue(getObject("CategoryLink:TargetCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedLinkTypeCC",null),context.getFormattedValue(getObject("SelectedLinkTypeCC"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("Category",getObject("CategoryLink:TargetCategory"))}, 147); %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:TargetCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:TargetCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %></td>
								<td class="table_detail3 top bold e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:TargetCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CategoryLink:TargetCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.Online.alt1",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLink:TargetCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.ImplicitProductBinding.alt1",null)),null)%>" border="0"/><% } %></td>
								<td class="table_detail e s">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CategoryLink:TargetCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
										<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLink:TargetCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									<% } else { %>
										&nbsp;
									<% } %>
								</td>
							</tr>
						<% } %>
					</table>
					
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
						<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="submit" name="newCategoryLink" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.New.button",null)),null)%>" class="button" />
										</td>
										<td class="button">
											<input type="submit" name="confirmCategoryLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.Delete.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>	
							</td>
							<% } %>
						</tr>
					</table>
					<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
					
				<% } else { %>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_detail w e s">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypeCC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypeCC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("CategoryCategoryLinkList.ThisCategoryDoesNotContainAnyCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } else { %>
									<% {out.write(localizeISText("CategoryCategoryLinkList.ThisCategoryDoesNotContainAnyCategoryLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>								
								<% {out.write(localizeISText("CategoryCategoryLinkList.ClickNewToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							</td>
						</tr>
					</table>
					<table width="100%" cellspacing="0" cellpadding="0" border="0">
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>
							<td align="right" class="w e s">
							<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="submit" name="newCategoryLink" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryCategoryLinkList.New.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>
							</td>
							<% } %>
						</tr>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
	
<% out.print("</form>"); %>
		<% printFooter(out); %>