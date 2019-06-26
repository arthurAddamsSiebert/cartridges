<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>


<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("RegioneExcludedRegions_52.ExcludedRegions.text",null)))}, 5); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SearchType"),
new TagParameter("value","simple")}, 8); %>
<% } %>
<!-- Main Content -->
<% URLPipelineAction action197 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null));String site197 = null;String serverGroup197 = null;String actionValue197 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null);if (site197 == null){  site197 = action197.getDomain();  if (site197 == null)  {      site197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup197 == null){  serverGroup197 = action197.getServerGroup();  if (serverGroup197 == null)  {      serverGroup197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionExcludedRegions_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ExcludedRegionsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue197, site197, serverGroup197,true)); %>
        
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi">
				<% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("RegioneExcludedRegions_52.ExcludedRegions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<!-- simple delete confirmation-->
			<!-- start error handling -->
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 25); %>
				<% } else { %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde")}, 27); %>
				<% } %>
			<% } %>
			<!-- end error handling -->
		</tr>
		<tr>
			<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("simpleSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("advanceSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("advanceSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegioneExcludedRegions_52.ExcludedRegionsFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("RegioneExcludedRegions_52.ListShowsAllExcludedRegions.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/> <% {out.write(localizeISText("RegioneExcludedRegions_52.UnassignTheSelectedRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
			</td>
		</tr>
	</table>
	
	<!-- Simple and advanced search -->	
	<% processOpenTag(response, pageContext, "regionsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewRegionExcludedRegions_52-Dispatch"),
new TagParameter("embeddedinform","true"),
new TagParameter("parametername1","RegionID"),
new TagParameter("parametervalue1",getObject("Region:Id")),
new TagParameter("searchtype",getObject("SearchType"))}, 40); %>
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedRegions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_header w e s" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap">
	
												<a href="javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegioneExcludedRegions_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
	
											<td nowrap="nowrap">
											<a href="javascript:selectAll('ExcludedRegionsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegioneExcludedRegions_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
											</td>
										</tr>
									</table>
								</div>
							</td>						
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.RegionName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.RegionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.RegionDescription.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>	
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.AddressType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>						
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.DefaultStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						
						<% while (loop("ExcludedRegions","ExcludedRegion",null)) { %>
							<tr>								
								<td class="w e s center top">
									<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
		  								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ExcludedRegion:Id)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>	
								<td class="table_detail e s top">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("Regular",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegioneExcludedRegions_52.Regular.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("POBox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegioneExcludedRegions_52.PostOfficeBox.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExcludedRegion:AddressType"),null).equals(context.getFormattedValue("APO_FPO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegioneExcludedRegions_52.APO_FPO_DPO.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									<% }}} %>								
								&nbsp;</td>								
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:Active")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegioneExcludedRegions_52.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } else { %>
									<% {out.write(localizeISText("RegioneExcludedRegions_52.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
								<% } %>
								</td>
								<td class="table_detail e s top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ExcludedRegion:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("RegioneExcludedRegions_52.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>&nbsp;
								</td>
							</tr>
						<% } %>
						 
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>

			<tr>
				<td class="w e s">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button"><input type="submit" name="select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.New.button",null)),null)%>" class="button"/></td>
										<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.Delete.button",null)),null)%>" class="button"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>	
				</td>
			</tr>	
					
		<% } else { %>
			
			<tr>
				<td class="table_detail w e s"><% {out.write(localizeISText("RegioneExcludedRegions_52.NoDestinationRegionsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td width="100%" class="w e s" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegioneExcludedRegions_52.New.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
			</tr>
			
		<% } %>	
		 
		<tr>
			<td>
				<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
				<!-- Start Page Cursor -->
					<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","ExcludedRegions"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 153); %>
				<!-- End Page Cursor -->
			</td>
		</tr>
		
	</table>
<% out.print("</form>"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "160");} %>
<!-- EO Working Area -->
<% printFooter(out); %>