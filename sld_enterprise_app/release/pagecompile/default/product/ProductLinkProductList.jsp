<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% URLPipelineAction action104 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null));String site104 = null;String serverGroup104 = null;String actionValue104 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null);if (site104 == null){  site104 = action104.getDomain();  if (site104 == null)  {      site104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup104 == null){  serverGroup104 = action104.getServerGroup();  if (serverGroup104 == null)  {      serverGroup104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("productProductLinksForm",null) + context.getFormattedValue(getObject("ProductLinkTable_ID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue104, site104, serverGroup104,true)); %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
		<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% } %>
	<input type="hidden" name="ProductUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<% {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} %>
	<% } %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","nse")}, 26); %>
			<% } %>

			<!-- delete confirmation if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","product link"),
new TagParameter("type","mdea")}, 31); %>
			<% } %>

			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
				<% while (loop("ProductLinksList","ProductLink",null)) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(ProductLink:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("true"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
					<% } %>
				<% } %>
			<% } %>
					
			<!-- delete confirmation for product-links -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmProductLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ShowDeleteLinkMessageBox")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ShowDeleteLinkMessageBox"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("false"); getPipelineDictionary().put("ShowDeleteLinkMessageBox", temp_obj);} %>
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedProductLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
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
new TagParameter("class","w100")}, 53); %>
						</table>
					</td>
				</tr>
			<% } %>
		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">

		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
			
			<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("RowSpan", temp_obj);} %>
			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinksList","ProductLink",null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>
					<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
				<% } %>
			<% } %>
			<% {Object temp_obj = ((new Double( ((Number) getObject("RowSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowSpan", temp_obj);} %>

			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
					<td class="table_header e s center select_all" width="5%" nowrap="nowrap">
						<div id="PPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('productProductLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','PPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','PPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
											<% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
						<div id="PPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('productProductLinksForm<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','PPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','PPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
											<% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				<% } %>
				<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="40%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s right" width="5%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e s" width="5%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((( ((Number) getObject("RowSpan")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
					<td class="table_header e s left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_header e s left" width="10%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
				<% } %>
			</tr>

			<% {Object temp_obj = (""); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
			<% while (loop("ProductLinksList","ProductLink",null)) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
						<td class="table_detail3 top e s center">
							<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(ProductLink:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
						</td>
					<% } %>
					<td class="table_detail3 top e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductLink:TargetID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } else { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } %>
					</td>
					<td class="table_detail3 top e s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductLink:TargetID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link">
								<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</a>
						<% } else { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:TargetProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } %>
					</td>
					<td class="table_detail3 top e s right" nowrap="nowrap">
						<% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("ProductLink:TargetProduct"))}, 151); %>
					</td>
					<td class="table_detail3 top e s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(ProductLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeLocal"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("sld_enterprise_app.LocalLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(ProductLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeShared"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("sld_enterprise_app.SharedLink.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<input type="hidden" name="DontDeleteSharedProductLinkIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLink:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkOriginType(ProductLink)"),null).equals(context.getFormattedValue(getObject("ProductLinkTypeSummary:LinkSourceTypeLocalAndShared"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("sld_enterprise_app.LocalLinkSharedLink.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% }}} %>
					</td>
					<td class="table_detail3 top e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLink:TargetProduct:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.title",null)),null)%>" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLink:TargetProduct:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.title",null)),null)%>" border="0"/><% } %>&nbsp;
					</td>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductLink:TypeCode"),null).equals(context.getFormattedValue(getObject("actTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>
							<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("RowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<table border="0" cellpadding="0" cellspacing="0" align="center">
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
											<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up_disabled.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } else { %>
											<td><input type="image" name="moveUpLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } %>	
									</tr>
									<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></td></tr>
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledParameter"),null).equals(context.getFormattedValue("disabled=\'disabled\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
											<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down_disabled.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } else { %>
											<td><input type="image" name="moveDownLink" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif"  alt=""/ <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>></td>
										<% } %>	
									</tr>
								</table>
							</td>
							<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
						<% } %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("ProductLink:TypeCode"),null)); getPipelineDictionary().put("actTypeCode", temp_obj);} %>
					<% } %>
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td colspan="7" class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePP")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePP"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>
						This product does not contain any product links of the selected type.<br/>
					<% } else { %>
						This product does not contain any product links.<br/>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>
						Click &quot;Assign&quot; to create a new product link.
					<% } %>
				</td>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="7" class="e s" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="linkTypeSelected" value="  Assign  " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmProductLinksDelete" value=" Unassign " class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>