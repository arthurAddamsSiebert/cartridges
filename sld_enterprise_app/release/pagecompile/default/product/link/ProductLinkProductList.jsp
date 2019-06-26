<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %>

<% URLPipelineAction action73 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));String site73 = null;String serverGroup73 = null;String actionValue73 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null);if (site73 == null){  site73 = action73.getDomain();  if (site73 == null)  {      site73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup73 == null){  serverGroup73 = action73.getServerGroup();  if (serverGroup73 == null)  {      serverGroup73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("LinksPageableName"),null) + context.getFormattedValue("_Form",null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue73, site73, serverGroup73,true)); %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
		<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% } %>
	<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% } %>


	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
		

		<table width="100%" border="0" cellspacing="0" cellpadding="0">

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","nse")}, 28); %>
			<% } %>

			<!-- delete confirmation if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","mdea")}, 33); %>
			<% } %>


			<!-- delete confirmation for product-links -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
							<% } %>
								<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product"),
new TagParameter("cancelbtnname","cancelDeleteProductLinks"),
new TagParameter("okbtnname","deleteProductLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("ProductLinksMessage")),
new TagParameter("class","w100")}, 48); %>
						</table>
					</td>
				</tr>
			<% } %>
		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="7" class="w e s" align="left">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="linkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmProductLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Unassign.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>

		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Clipboard"),
new TagParameter("value6",getObject("SelectedMenuItem")),
new TagParameter("key2","LookupHelper"),
new TagParameter("value5",getObject("DisabledParameter")),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("LookupHelper")),
new TagParameter("key5","DisabledParameter"),
new TagParameter("value1",getObject("Clipboard")),
new TagParameter("key6","SelectedMenuItem"),
new TagParameter("key3","LinkDirection"),
new TagParameter("value4",getObject("PermissionMap")),
new TagParameter("value3","Outgoing"),
new TagParameter("key4","PermissionMap"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 85); %>
					<% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/link/ProductLinkProductListGridColumns.isml"),
new TagParameter("configuration","productlinks"),
new TagParameter("loadoninit","true"),
new TagParameter("datatemplate","product/link/ProductLinkProductListGridData.isml"),
new TagParameter("pagesizeprefix",context.getFormattedValue(getObject("LinksPageableName"),null) + context.getFormattedValue("_PageSize",null)),
new TagParameter("pageable",getObject("ProductLinksList")),
new TagParameter("id",getObject("LinksPageableName")),
new TagParameter("pageablename",getObject("LinksPageableName")),
new TagParameter("pagenumberprefix",context.getFormattedValue(getObject("LinksPageableName"),null) + context.getFormattedValue("_PageNumber",null)),
new TagParameter("params",getObject("params"))}, 94); %>
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail w e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyProductLinksOfTheSelec.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } else { %>
						<% {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyProductLinks.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("sld_enterprise_app.ClickAssignToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>