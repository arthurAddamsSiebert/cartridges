<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("RegionExcludedRegionsSelection_52.AddExcludedRegion.text",null)))}, 4); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi">
			<% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("RegionExcludedRegionsSelection_52.AddExcludedRegions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<!-- confirmation if nothing is selected for assign-->
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoRegionSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% {out.write(localizeISText("RegionExcludedRegionsSelection_52.HaveNotSelectedAnyRegions.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	<tr>
		<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("simpleSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("advanceSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("advanceSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.RegionsFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.AllAvailableRegions.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/> <% {out.write(localizeISText("RegionExcludedRegionsSelection_52.UseTheCheckboxesAndClickAssignToAddTheSelectedRegi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
		</td>
	</tr>	
</table>
	
<!-- Simple and advanced search -->
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SearchType"),
new TagParameter("value","simple")}, 36); %>
<% } %>	
<% processOpenTag(response, pageContext, "regionsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewRegionExcludedRegionsSelection_52-Dispatch"),
new TagParameter("parametername1","RegionID"),
new TagParameter("parametervalue1",getObject("Region:Id")),
new TagParameter("searchtype",getObject("SearchType"))}, 38); %>

<!-- Main Content -->
<% URLPipelineAction action200 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegionsSelection_52-Dispatch",null)))),null));String site200 = null;String serverGroup200 = null;String actionValue200 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegionsSelection_52-Dispatch",null)))),null);if (site200 == null){  site200 = action200.getDomain();  if (site200 == null)  {      site200 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup200 == null){  serverGroup200 = action200.getServerGroup();  if (serverGroup200 == null)  {      serverGroup200 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegionsSelection_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ExcludedRegionsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue200, site200, serverGroup200,true)); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<!-- simple delete confirmation-->
		<!-- start error handling -->
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 48); %>
			<% } else { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde")}, 50); %>
			<% } %>
		<% } %>
		<!-- end error handling -->
		<input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
						<tr>
							<td class="table_header w e s"width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
	
												<a href="javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
	
											<td nowrap="nowrap">
											<a href="javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>						
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.RegionName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.RegionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.RegionDescription.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.AddressType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>						
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.DefaultStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						
						<% while (loop("Regions","NewRegion",null)) { %>
							<tr>								
								<td class="w e s center top">
								
								
								<% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
								<% while (loop("ExcludedRegions","assigned",null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:Id"),null).equals(context.getFormattedValue(getObject("NewRegion:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
										<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									<% } %>
								<% } %>								
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Region:Id"),null).equals(context.getFormattedValue(getObject("NewRegion:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
									<input type="checkbox" checked="checked" disabled="disabled"/>
								<% } else { %>	
									<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
		  								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(NewRegion:Id)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>checked="checked"<% } %>/>										
								<% } %>
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("NewRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("NewRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("NewRegion:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>	
								<td class="table_detail e s top">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewRegion:AddressType"),null).equals(context.getFormattedValue("Regular",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.Regular.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewRegion:AddressType"),null).equals(context.getFormattedValue("POBox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.PostOfficeBox.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewRegion:AddressType"),null).equals(context.getFormattedValue("APO_FPO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.APO_FPO_DPO.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% }}} %>								
								&nbsp;</td>								
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("NewRegion:Active")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegionExcludedRegionsSelection_52.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } else { %>
									<% {out.write(localizeISText("RegionExcludedRegionsSelection_52.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } %>
								</td>
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("NewRegion:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegionExcludedRegionsSelection_52.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>&nbsp;
								</td>
							</tr>
						<% } %>
					<% } else { %>
						<tr>
							<td class="table_detail w e s"><% {out.write(localizeISText("RegionExcludedRegionsSelection_52.NoDestinationRegionsFoundForSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>			
					<% } %>
					</table>
					<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">						
						<tr>
							<td align="right">						
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
											<td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionExcludedRegionsSelection_52.Assign.button",null)),null)%>" class="button"/></td>
										<% } %>
										<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionExcludedRegionsSelection_52.Cancel.button",null)),null)%>" class="button"/></td>		
									</tr>
								</table>						
							</td>							
						</tr>
					</table>
					<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
					<!-- Start Page Cursor -->
					<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Regions"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 153); %>
					<!-- End Page Cursor -->
					<!-- EO Main Content -->
				</td>
			</tr>							
		</table>	
<% out.print("</form>"); %>
<% printFooter(out); %>