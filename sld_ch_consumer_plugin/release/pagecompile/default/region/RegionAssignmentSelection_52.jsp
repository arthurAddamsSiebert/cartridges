<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("RegionAssignmentSelection_52.AddExcludedRegion.text",null)))}, 4); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi">
			<% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("RegionAssignmentSelection_52.AddExcludedRegion.text",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e s">
			<% {out.write(localizeISText("RegionAssignmentSelection_52.ListShowsAllAvailableRegions.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>
<!-- Simple and advanced search -->
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SearchType"),
new TagParameter("value","simple")}, 20); %>
<% } %>	
<% processOpenTag(response, pageContext, "regionsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewRegionAssignment_52-Dispatch"),
new TagParameter("parametername1","RegionID"),
new TagParameter("parametervalue1",getObject("Region:Id")),
new TagParameter("searchtype",getObject("SearchType"))}, 22); %>

		<!-- Main Content -->
<% URLPipelineAction action192 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionAssignment_52-Dispatch",null)))),null));String site192 = null;String serverGroup192 = null;String actionValue192 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionAssignment_52-Dispatch",null)))),null);if (site192 == null){  site192 = action192.getDomain();  if (site192 == null)  {      site192 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup192 == null){  serverGroup192 = action192.getServerGroup();  if (serverGroup192 == null)  {      serverGroup192 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionAssignment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ExcludedRegionSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue192, site192, serverGroup192,true)); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="w e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><a href="javascript:selectAll('ExcludedRegionSearch','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionAssignmentSelection_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><a href="javascript:selectAll('ExcludedRegionSearch','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionAssignmentSelection_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
							</td>							
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.RegionName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.RegionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.RegionDescription.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.AddressType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>						
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.DefaultStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						
						<% while (loop("Regions","ExcludedRegion",null)) { %>
							<tr>
								<td class="w e s center top">
									<input type="hidden" name="AllUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:UUID"),null).equals(context.getFormattedValue(getObject("ExcludedRegion:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
										<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									<% } else { %>
										<% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									<% } %>
									
									<% while (loop("Region:ExcludedRegions","assigned",null)) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:UUID"),null).equals(context.getFormattedValue(getObject("ExcludedRegion:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
											<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
										<% } %>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
										<input type="checkbox" checked="checked" disabled="disabled"/>
									<% } else { %>
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ExcludedRegion:Id)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %> checked="checked"<% } %> />
									<% } %>
									
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>	
								<td class="table_detail e s top">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("Regular",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignmentSelection_52.Regular.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("POBox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignmentSelection_52.PostOfficeBox.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("APO_FPO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignmentSelection_52.APO_FPO_DPO.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% }}} %>								
								&nbsp;</td>								
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:Active")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegionAssignmentSelection_52.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } else { %>
									<% {out.write(localizeISText("RegionAssignmentSelection_52.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } %>
								</td>
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegionAssignmentSelection_52.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>&nbsp;
								</td>
							</tr>
						<% } %>
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td class="table_detail w e s"><% {out.write(localizeISText("RegionAssignmentSelection_52.NoDestinationRegionsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% } %>
		<tr>
			<td class="w e s" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
						    <td class="button"><input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="assignRegions" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionAssignmentSelection_52.OK.button",null)),null)%>" class="button"/></td>
						    <td class="button"><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionAssignmentSelection_52.Cancel.button",null)),null)%>" class="button"/></td>												
							
						</tr>
					</table>
		    </td>
		</tr>		
		<tr>
			<td>
				<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
				<!-- Start Page Cursor -->
					<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Regions"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 125); %>
				<!-- End Page Cursor -->
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>