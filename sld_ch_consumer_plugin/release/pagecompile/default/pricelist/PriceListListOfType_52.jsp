<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %>
<% {Object temp_obj = (context.getFormattedValue("createSpecialPriceListForm_",null) + context.getFormattedValue(getObject("PriceType"),null)); getPipelineDictionary().put("PriceListFormName", temp_obj);} %>
<% URLPipelineAction action378 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null));String site378 = null;String serverGroup378 = null;String actionValue378 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null);if (site378 == null){  site378 = action378.getDomain();  if (site378 == null)  {      site378 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup378 == null){  serverGroup378 = action378.getServerGroup();  if (serverGroup378 == null)  {      serverGroup378 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PriceListFormName"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue378, site378, serverGroup378,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="PriceType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ProcessDescription" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="deleteForPriceType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td class="table_title2 aldi">
				<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.PriceList.",null) + context.getFormattedValue(getObject("PriceType"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% {out.write(localizeISText("PriceListListOfType_52.Lists.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<!-- delete confirmation if one is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","pricelist"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 20); %>
			<% } else { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","pricelist"),
new TagParameter("type","mde")}, 22); %>
			<% } %>
		<% } %>

		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_CATEGORY_UP")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_CATEGORY_DOWN")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s" colspan="7">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error" width="100%">
								<% {out.write(localizeISText("PriceListListOfType_52.YouHaveNotSelectedAnyItemsToBeMoved.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_CATEGORY_UP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("PriceListListOfType_52.UseTheCheckboxesToSelectTheItemsYouWantT.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else { %>
									<% {out.write(localizeISText("PriceListListOfType_52.UseTheCheckboxesToSelectTheItemsYouWantT.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectStagingTarget"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PriceListListOfType_52.YouHaveNotSelectedAnyPriceListsToBePubli.message",null)))}, 47); %>
			<% } %>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
			<tr>
				<td class="table_title_description w e s">
					<% {out.write(localizeISText("PriceListListOfType_52.TheListShowsAllSpecialPriceListsOfTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td class="table_title_description w e s">
					<% {out.write(localizeISText("PriceListListOfType_52.TheListShowsAllSpecialPriceListsOfTheChannel.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		<% } %>
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PriceLists") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
						<thead>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
								<tr>
									<td colspan="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
										8
									<% } else { %>
										6
									<% } %>" >
									<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td align="left">
												<table border="0" cellspacing="4" cellpadding="0">
													<tr>
														<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListListOfType_52.New.button",null)),null)%>" class="button"/></td>
														<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
															<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_REPLICATE_PRICELIST_WO_PROVIDER")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_REPLICATE_PRICELIST_WO_PROVIDER")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
																<td class="button"><input type="submit" name="selectStagingTarget" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListListOfType_52.PublishToLiveSystem.button",null)),null)%>" class="button"/></td>
															<% } %>
														<% } %>
														<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListListOfType_52.Delete.button",null)),null)%>" class="button"/></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									</td>
								</tr>
							<% } %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
									<th class="w e s" nowrap="nowrap" width="80">
										<div id="A">
											<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
												<tr>
													<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("PriceListFormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PriceListListOfType_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
												</tr>
											</table>
										</div>
										<div id="B" style="display:none">
											<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
												<tr>
													<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("PriceListFormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PriceListListOfType_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
												</tr>
											</table>
										</div>
									</th>
									<th class="table_header e s"><% {out.write(localizeISText("PriceListListOfType_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<% } else { %>
									<th class="table_header w e s"><% {out.write(localizeISText("PriceListListOfType_52.Name.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<% } %>
							
								<th class="table_header e s"><% {out.write(localizeISText("PriceListListOfType_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
	
								<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListListOfType_52.TargetGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListListOfType_52.ValidFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PriceListListOfType_52.ValidTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<th class="table_header e s"><% {out.write(localizeISText("PriceListListOfType_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
									<th class="table_header e s center"><% {out.write(localizeISText("PriceListListOfType_52.Lookup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
								<% } %>
							</tr>
						</thead>
						<tbody>
							<% {Object temp_obj = ("False"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
							<% {Object temp_obj = (getObject("PriceLists:PageSize")); getPipelineDictionary().put("PriceListRowSpan", temp_obj);} %>
							<% while (loop("PriceLists","PriceList",null)) { %>
								<tr>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
										<td class="table_detail w e s top center">
											<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
												<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(PriceList:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>checked="checked"<% } %>
											/>
										</td>
											<td class="table_detail top e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListPrices-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link">
												<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PriceList:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.PriceListDetail.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>&nbsp;
											</td>
									<% } else { %>
										<td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListPrices-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link">
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PriceList:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.PriceListDetail.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>&nbsp;
										</td>
									<% } %>	
		
									<td class="table_detail top e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListPrices-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link">
										<% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
									</td>	
									<td class="table_detail top e s" nowrap="nowrap">
										<!-- Section for generation of customer segments assigned to the pricelist -->
										<% {Object temp_obj = (getObject("PriceListBORepository:PriceListBOByID(PriceList:UUID)")); getPipelineDictionary().put("PriceListBO", temp_obj);} %>
										<% {Object temp_obj = (getObject("PriceListBO:Extension(\"Customer\")")); getPipelineDictionary().put("PriceListBOCustomerExtension", temp_obj);} %>
										<% {Object temp_obj = (getObject("PriceListBOCustomerExtension:CustomerBOs")); getPipelineDictionary().put("AssignedCustomerBOs", temp_obj);} %>
										<% {Object temp_obj = (getObject("AssignedCustomerBOs:Size")); getPipelineDictionary().put("AssignedCustomerBOsCount", temp_obj);} %>
										<% {Object temp_obj = (getObject("PriceListBO:Extension(\"CustomerSegment\")")); getPipelineDictionary().put("PriceListBOCustomerSegmentExtension", temp_obj);} %>
										<% {Object temp_obj = (getObject("PriceListBOCustomerSegmentExtension:CustomerSegmentBOs")); getPipelineDictionary().put("AssignedCustomerSegments", temp_obj);} %>
										<% {Object temp_obj = (getObject("AssignedCustomerSegments:Size")); getPipelineDictionary().put("AssignedCustomerSegmentsCount", temp_obj);} %>
										
										<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerSegmentsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("AssignedCustomerSegmentsCount")).doubleValue() +((Number) getObject("AssignedCustomerBOsCount")).doubleValue())))).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>
												<% while (loop("AssignedCustomerSegments","CustomerSegment",null)) { %>
													<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>
														<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSegment:Name(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
													<% } else { %>
														<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSegment:Name(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
													<% } %>	
													<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasNext("CustomerSegment") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><br/><% } %>
												<% } %>
											<% } else { %>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>
													<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("AssignedCustomerSegmentsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerSegmentsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListListOfType_52.CustomerSegments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.CustomerSegment.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>
												<% } else { %>
													<% {String value = null;try{value=context.getFormattedValue(getObject("AssignedCustomerSegmentsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerSegmentsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListListOfType_52.CustomerSegments.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.CustomerSegment.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
												<% } %>	
												<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><br/><% } %>
											<% } %>
										<% } %> 
										<!-- End of section -->
										<!-- Section for generation of customers assigned to the pricelist -->
										<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() +((Number) getObject("AssignedCustomerSegmentsCount")).doubleValue())))).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
												<% while (loop("AssignedCustomerBOs","CustomerBO",null)) { %>
													<% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %>
													<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
														<% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %>
													<% } %>
													<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CustomerDetails:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>
														<% {Object temp_obj = (getObject("CustomerDetails:Name")); getPipelineDictionary().put("CustomerName", temp_obj);} %>
													<% } else { %>
														<% {Object temp_obj = (getObject("CustomerBO:CustomerNo")); getPipelineDictionary().put("CustomerName", temp_obj);} %>
													<% } %>
													<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>
														<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
													<% } else { %>
														<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
													<% } %>
													<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("CustomerBO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %><br/><% } %>
												<% } %>
											<% } else { %>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>
													<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListUserGroups-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceList:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("AssignedCustomerBOsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListListOfType_52.Customers.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.Customer.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>
												<% } else { %>
													<% {String value = null;try{value=context.getFormattedValue(getObject("AssignedCustomerBOsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AssignedCustomerBOsCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %><% {out.write(localizeISText("PriceListListOfType_52.Customers.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PriceListListOfType_52.Customer.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
												<% } %>
											<% } %>
										<% } %>
										<!-- End of section -->
									</td>
									<td class="table_detail top e s">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PriceList:ValidFrom"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:ValidFrom"),new Integer(DATE_TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
										<% } else { %>
											&nbsp;
										<% } %>
									</td>
									<td class="table_detail top e s">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PriceList:ValidTo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:ValidTo"),new Integer(DATE_TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
										<% } else { %>
											&nbsp;
										<% } %>
									</td>
									<td class="table_detail top e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PriceList:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("HideMoveButtons"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %>
											<td align="center" class="table_detail top e s sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceListRowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
												<table border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td><input type="image" name="movePriceListsUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt="" /></td>
													</tr>
													<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
													<tr>
														<td><input type="image" name="movePriceListsDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/></td>
													</tr>
												</table>
											</td>
											<% {Object temp_obj = ("True"); getPipelineDictionary().put("HideMoveButtons", temp_obj);} %>
										<% } %>
									<% } %>
								</tr>
							<% } %>
						</tbody>
					</table>

 					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
						</tr>
					</table>
					<!-- Start Page Cursor -->
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><% processOpenTag(response, pageContext, "pricelistpagingbar", new TagParameter[] {
new TagParameter("pageable","PriceLists"),
new TagParameter("pricetype",getObject("PriceType"))}, 258); %></td>
						</tr>
					</table>
					<!-- End Page Cursor -->
				<% } else { %>
					<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_detail">
								<% {out.write(localizeISText("PriceListListOfType_52.ThereAreNoPriceListsDefinedForThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("PriceListListOfType_52.ClickNewToCreateAPriceList.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							</td>
						</tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",272,e);}if (_boolean_result) { %>
							<tr>
								<td align="left" class="n">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListListOfType_52.New.button",null)),null)%>" class="button"/></td>
										</tr>
									</table>
								</td>
							</tr>
						<% } %>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>

		<% printFooter(out); %>