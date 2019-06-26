<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action69 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));String site69 = null;String serverGroup69 = null;String actionValue69 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null);if (site69 == null){  site69 = action69.getDomain();  if (site69 == null)  {      site69 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup69 == null){  serverGroup69 = action69.getServerGroup();  if (serverGroup69 == null)  {      serverGroup69 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("CategoryLinksPageableName"),null) + context.getFormattedValue("_Form",null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue69, site69, serverGroup69,true)); %>
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
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} %>
					<% } %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","Conditions"),
new TagParameter("okbtnname","deleteCategoryLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage"))}, 26); %>
				<% } else { %>
					<!-- delete confirmation if nothing is selected-->
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","mdea")}, 29); %>
				<% } %>
			<% } %>

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","nse")}, 35); %>
			<% } %>
		</table>
	<% } %>

	<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% } %>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
					
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
						<tr>
							<td align="left">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
											<input type="submit" name="categoryLinkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null)%>" class="button"  <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
										</td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
										<td class="button">
											<input type="submit" name="confirmCategoryLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Unassign.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
										</td>
										<% } %>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					
				<% } %>

				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Clipboard"),
new TagParameter("value6",getObject("ChannelID")),
new TagParameter("key2","LinkDirection"),
new TagParameter("value5",getObject("Product")),
new TagParameter("value8",getObject("SelectedLinkTypePC")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("SelectedMenuItem")),
new TagParameter("value2","Outgoing"),
new TagParameter("key5","Product"),
new TagParameter("value1",getObject("Clipboard")),
new TagParameter("key6","ChannelID"),
new TagParameter("key3","PermissionMap"),
new TagParameter("value4",getObject("DisabledParameter")),
new TagParameter("value3",getObject("PermissionMap")),
new TagParameter("key4","DisabledParameter"),
new TagParameter("key7","SelectedMenuItem"),
new TagParameter("key8","SelectedLinkTypePC"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 73); %>
					<% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/link/ProductLinkCategoryListGridColumns.isml"),
new TagParameter("configuration","productlinks"),
new TagParameter("datatemplate","product/link/ProductLinkCategoryListGridData.isml"),
new TagParameter("pagesizeprefix",context.getFormattedValue(getObject("CategoryLinksPageableName"),null) + context.getFormattedValue("_PageSize",null)),
new TagParameter("pageable",getObject("CategoryLinksList")),
new TagParameter("id",getObject("CategoryLinksPageableName")),
new TagParameter("pageablename",getObject("CategoryLinksPageableName")),
new TagParameter("pagenumberprefix",context.getFormattedValue(getObject("CategoryLinksPageableName"),null) + context.getFormattedValue("_PageNumber",null)),
new TagParameter("params",getObject("params"))}, 84); %>
				<% } else { %>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_detail w e s">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyCategoryLinksOfTheSele.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } else { %>
									<% {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyCategoryLinks.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("sld_enterprise_app.ClickAssignToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							</td>
						</tr>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>