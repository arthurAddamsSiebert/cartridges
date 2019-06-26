<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("LocationSelection.Add_PostalCode_Location.text",null)))}, 4); %>


<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% } %><% {out.write(localizeISText("LocationSelection.Add_PostalCodes_Destinations.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {out.write(localizeISText("LocationSelection.AddSelectedPostalCodes_LocationToRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("LocationSelection.ShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
		</td>
	</tr>
</table>
<!-- errors -->
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LocationSearchForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr valign="top">
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LocationSearchForm:CountryID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("LocationSelection.CountryIsMissing.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
			</td>
		</tr>
	</table>
<% } %>
<!-- errors -->

<% URLPipelineAction action211 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));String site211 = null;String serverGroup211 = null;String actionValue211 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null);if (site211 == null){  site211 = action211.getDomain();  if (site211 == null)  {      site211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup211 == null){  serverGroup211 = action211.getServerGroup();  if (serverGroup211 == null)  {      serverGroup211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocationSearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue211, site211, serverGroup211,true)); %>
	<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox w e s">
		<tr>
			<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("LocationSelection.PostalCode_Location_Search.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
			<input type="hidden" name="addPostalCodes" value="addPostalCodes"/>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedPostalCodes:PostalCodes")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedPostalCodes:PostalCodes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% while (loop("SelectedPostalCodes:PostalCodes","SelectedPostalCode",null)) { %>
					
						<input type="hidden" name="ConditionConfiguration_PostalCodes" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedPostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					
				<% } %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SelectedPostalCodes:PostalCodes"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
			
				       <input type="hidden" name="ConditionConfiguration_PostalCodes" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedPostalCodes:PostalCodes"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<% }} %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } else { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRuleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } %>
		<% } %>
		<tr>
			<td colspan="2">
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/LocationSearch_52", null, "56");} %>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">	
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="w e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><a href="javascript:selectAll('LocationSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('LocationSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("LocationSelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><a href="javascript:selectAll('LocationSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('LocationSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("LocationSelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
							</td>
							<td class="table_header e s"><% {out.write(localizeISText("LocationSelection.PostalCode_Destination.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						
						<% while (loop("GeoObjects","Location",null)) { %>
							<tr>
								<td class="w e s center top">
									<% {Object temp_obj = (context.getFormattedValue(getObject("Location:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Location:Country:Id"),null)); getPipelineDictionary().put("ComposedID", temp_obj);} %>
									<input type="hidden" name="AllUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>										
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedPostalCodes:PostalCodes")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedPostalCodes:PostalCodes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
											<% while (loop("SelectedPostalCodes:PostalCodes","assigned",null)) { %>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned"),null).equals(context.getFormattedValue(getObject("ComposedID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
													<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
												<% } %>
											<% } %>
										<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SelectedPostalCodes:PostalCodes"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedPostalCodes:PostalCodes"),null).equals(context.getFormattedValue(getObject("ComposedID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
											<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
										<% }} %>									
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedGeoObjects")))).booleanValue() && ((Boolean) (hasLoopElements("AssignedGeoObjects") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>			
										<% while (loop("AssignedGeoObjects","assigned",null)) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:UUID"),null).equals(context.getFormattedValue(getObject("Location:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
												<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
											<% } %>
										<% } %>										
									<% }} %>
									
									<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked" disabled="disabled" />
									<% } else { %>
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ComposedID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %> checked="checked"<% } %> />
									<% } %>
									
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Location:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							</tr>
						<% } %>
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>
		<% } else { %>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GeoObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("LocationSelection.NoPostalCodesDestinationsFoundForSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("LocationSelection.CurrentlyNoPostalCodesDestinationsToAssign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			
				
			</tr>
		<% } %>
		<tr>
			<td colspan="3" class="w e s" align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button"><input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="ObjectType" value="Location"/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
							<input type="submit" name="assignPostalCodes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocationSelection.OK.button",null)),null)%>" class="button"/>
						<% } else { %>
							<input type="submit" name="assignLocations" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocationSelection.OK.button",null)),null)%>" class="button"/>
						<% } %>
						</td>
						<td class="button"><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocationSelection.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<!-- Start Page Cursor -->
	<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPostalCodes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("addPostalCodes")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("parametername","addPostalCodes"),
new TagParameter("variablepagesize","true")}, 158); %>
	<% } else { %>
		<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("variablepagesize","true")}, 160); %>
	<% } %>
	
	
	
	<!-- End Page Cursor -->

<% out.print("</form>"); %><% printFooter(out); %>