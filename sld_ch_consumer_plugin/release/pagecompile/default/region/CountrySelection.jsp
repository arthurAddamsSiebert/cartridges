<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("CountrySelection.AddCountry.text",null)))}, 4); %>
	
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% } %><% {out.write(localizeISText("CountrySelection.AddCountry.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("CountrySelection.AddSelectedCountriesToDestinationRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else { %>
				<% {out.write(localizeISText("CountrySelection.AddSelectedCountriesToShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
	
</table>
<% URLPipelineAction action210 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));String site210 = null;String serverGroup210 = null;String actionValue210 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null);if (site210 == null){  site210 = action210.getDomain();  if (site210 == null)  {      site210 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup210 == null){  serverGroup210 = action210.getServerGroup();  if (serverGroup210 == null)  {      serverGroup210 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjectAssignment_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CountrySearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue210, site210, serverGroup210,true)); %>
	<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox w e s">
		<tr>
			<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("CountrySelection.CountrySearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
			<input type="hidden" name="addSelectedCountries" value="addSelectedCountries"/>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCountries:Countries")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedCountries:Countries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<% while (loop("SelectedCountries:Countries","SelectedCountry",null)) { %>
					
						<input type="hidden" name="ConditionConfiguration_Countries" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCountry"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					
				<% } %>
			<% } else { %>
			      <input type="hidden" name="ConditionConfiguration_Countries" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCountries:Countries"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<% } %> 
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShippingRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } else { %>
			<input type="hidden" name="ShippingRuleID"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRuleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
		<% } %>
		<% } %>
		<tr>
			<td>
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/CountrySearch_52", null, "47");} %>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="s">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="w e s" nowrap="nowrap" width="80">
								<div id="A">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><a href="javascript:selectAll('CountrySearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('CountrySearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("CountrySelection.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
								<div id="B" style="display:none">
									<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
										<tr>
											<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><a href="javascript:selectAll('CountrySearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } else { %><a href="javascript:selectAll('CountrySearchForm','SelectedObjectUUID','A','B');" class="tableheader"><% } %><% {out.write(localizeISText("CountrySelection.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
										</tr>
									</table>
								</div>
							</td>
							<td class="table_header e s"><% {out.write(localizeISText("CountrySelection.Country.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						
						<% while (loop("GeoObjects","Country",null)) { %>
							<tr>
								<td class="w e s center top">
																		
									<% {Object temp_obj = (getObject("Country:Id")); getPipelineDictionary().put("ComposedID", temp_obj);} %>
									<input type="hidden" name="AllUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
									
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedCountries:Countries")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedCountries:Countries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
											<% while (loop("SelectedCountries:Countries","assigned",null)) { %>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
													<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
												<% } %>
											<% } %>
																															
										<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SelectedCountries:Countries"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedCountries:Countries"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
											<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
										<% }} %>
									
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedGeoObjects")))).booleanValue() && ((Boolean) (hasLoopElements("AssignedGeoObjects") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
										<% while (loop("AssignedGeoObjects","assigned",null)) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("assigned:UUID"),null).equals(context.getFormattedValue(getObject("Country:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
												<% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %>
											<% } %>
										<% } %>
									
									<% }} %>
									
									<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked" disabled="disabled" />
									<% } else { %>
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ComposedID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %> checked="checked"<% } %> />
									<% } %>
								
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
							</tr>
						<% } %>
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>
		<% } else { %>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GeoObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("CountrySelection.NoCountriesFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<td class="table_detail w e s"><% {out.write(localizeISText("CountrySelection.CurrentlyThereAreNoCountriesToAssignToThisRegion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>
		<% } %>
		<tr>
			<td align="right" class="w e">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button"><input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="ObjectType" value="Country"/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
							<input type="submit" name="assignSelectedCountries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountrySelection.OK.button",null)),null)%>" class="button"/>
						<% } else { %>
							<input type="submit" name="assignCountries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountrySelection.OK.button",null)),null)%>" class="button"/>
						<% } %></td>
						<td class="button"><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountrySelection.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
		
	<!-- Start Page Cursor -->
	<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addSelectedCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("addSelectedCountries")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("parametername","addSelectedCountries"),
new TagParameter("variablepagesize","true")}, 150); %>
	<% } else { %>
		<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("variablepagesize","true")}, 152); %>
	<% } %>
	<!-- End Page Cursor -->
<% out.print("</form>"); %><% printFooter(out); %>