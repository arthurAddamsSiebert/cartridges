<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("StateProvinceSelection.AddState_Province.text",null)))}, 4); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% } %><% {out.write(localizeISText("StateProvinceSelection.AddState.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("StateProvinceSelection.AddSelectedStates_ProvincesToDestinationRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("StateProvinceSelection.AddSelectedStates_ProvincesToShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
		</td>
	</tr>
</table>

<!-- errors -->
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StateProvinceSearchForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr valign="top">
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StateProvinceSearchForm:CountryID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("StateProvinceSelection.CountryIsMissing.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
		</tr>
	</table>
	
<% } %>
<!-- errors -->

<% URLPipelineAction action206 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));String site206 = null;String serverGroup206 = null;String actionValue206 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null);if (site206 == null){  site206 = action206.getDomain();  if (site206 == null)  {      site206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup206 == null){  serverGroup206 = action206.getServerGroup();  if (serverGroup206 == null)  {      serverGroup206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StateProvinceSearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue206, site206, serverGroup206,true)); %>
	<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox w e s">
		<tr>
			<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("StateProvinceSelection.StateSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
			<input type="hidden" name="addStates" value="addStates"/>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedStates:States")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedStates:States") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% while (loop("SelectedStates:States","SelectedState",null)) { %>
					
						<input type="hidden" name="ConditionConfiguration_States" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						
					
				<% } %>
			<% } else { %>
				       <input type="hidden" name="ConditionConfiguration_States" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedStates:States"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<% } %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } else { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRuleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } %>
		<% } %>
		<tr>
			<td>
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/StateProvinceSearch_52", null, "56");} %>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="s">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="w e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><a href="javascript:selectAll('StateProvinceSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('StateProvinceSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("StateProvinceSelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><a href="javascript:selectAll('StateProvinceSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('StateProvinceSearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("StateProvinceSelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
							</td>							
							<td class="table_header e s"><% {out.write(localizeISText("StateProvinceSelection.State.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>                            
						</tr>
					
						
						<% while (loop("GeoObjects","StateProvince",null)) { %>
							<tr>
								<td class="w e s center top">
								<input type="hidden" name="AllUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<% {Object temp_obj = (context.getFormattedValue(getObject("StateProvince:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("StateProvince:Country:Id"),null)); getPipelineDictionary().put("ComposedID", temp_obj);} %>
								<% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>

									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedStates:States")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedStates:States") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
										<% while (loop("SelectedStates:States","assigned",null)) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned"),null).equals(context.getFormattedValue(getObject("ComposedID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
												<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
											<% } %>
										<% } %>
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SelectedStates:States"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedStates:States"),null).equals(context.getFormattedValue(getObject("ComposedID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
										<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									<% }} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedGeoObjects")))).booleanValue() && ((Boolean) (hasLoopElements("AssignedGeoObjects") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>			
									<% while (loop("AssignedGeoObjects","assigned",null)) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:UUID"),null).equals(context.getFormattedValue(getObject("StateProvince:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
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
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>								
							</tr>
						<% } %>
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>
		<% } else { %>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GeoObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("StateProvinceSelection.NoStates_ProvincesFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("StateProvinceSelection.NoStates_ProvincesToAssign.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>
		<% } %>
		<tr>
			<td colspan="3" class="w e" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="ObjectType" value="StateProvince"/>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
							<input type="submit" name="assignStates" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StateProvinceSelection.OK.button",null)),null)%>" class="button"/>
						<% } else { %>
						<input type="submit" name="assignStatesProvinces" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StateProvinceSelection.OK.button",null)),null)%>" class="button"/>
						<% } %></td>
							<td class="button"><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StateProvinceSelection.Cancel.button",null)),null)%>" class="button"/></td>												
						</tr>
					</table>
			</td>
		</tr>
	</table>
	
	<!-- Start Page Cursor -->
	<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addStates"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("addStates")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("parametername","addStates"),
new TagParameter("variablepagesize","true")}, 156); %>
	<% } else { %>
	<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("variablepagesize","true")}, 158); %>
	<% } %>
	<!-- End Page Cursor -->
<% out.print("</form>"); %><% printFooter(out); %>