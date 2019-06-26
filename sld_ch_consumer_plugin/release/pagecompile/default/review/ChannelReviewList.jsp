<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.title",null)))}, 5); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.channelreview.title",null)))}, 6); %>
<!-- Working Area -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.title")}, 10); %></td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<% URLPipelineAction action233 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));String site233 = null;String serverGroup233 = null;String actionValue233 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null);if (site233 == null){  site233 = action233.getDomain();  if (site233 == null)  {      site233 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup233 == null){  serverGroup233 = action233.getServerGroup();  if (serverGroup233 == null)  {      serverGroup233 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue233, site233, serverGroup233,true)); %>
						<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusNew"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><input type="hidden" name="StatusNew" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusNew"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusApproved"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><input type="hidden" name="StatusApproved" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusApproved"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusRejected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><input type="hidden" name="StatusRejected" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusRejected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
							<tr>
								<td class="error_icon e">
									<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
								</td>
								<td class="confirm" width="100%">
									<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.delete.confirm_delete")}, 28); %>
								</td>
								<td>
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td class="button">
												<input type="submit" name="delete" value="<% {out.write(localizeISText("catalogs.channelreview.button.confirmdelete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
											</td>
											<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
											<td class="button">
												<input type="submit" name="cancelDelete" value="<% {out.write(localizeISText("catalogs.channelreview.button.canceldelete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% out.print("</form>"); %>
				</td>
			</tr>
		<% } %>
		<!-- confirmation if nothing is selected for assign and edit all-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoReviewSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr>
							<td class="error_icon e">
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
							</td>
							<td class="error" width="100%">
								<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.notselected.message")}, 59); %><br/>
								<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.edit.description")}, 60); %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<!-- delete confirmation if nothing is selected-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr>
							<td class="error_icon e">
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
							</td>
							<td class="error" width="100%">
								<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.select.description")}, 77); %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	<% } %>
	<tr>
		<td class="table_title_description w e s">
			<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","catalogs.channelreview.description")}, 87); %>
		</td>
	</tr>
	<tr>
		<td class="table_title2 w e">
			<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.subtitle")}, 92); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductSearchHelpContext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>&nbsp;
				<a href="<%=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ProductSearchHelpContext"),null)),null),null)%>" target="_blank"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/icon_search_info.png" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelReviewList.Help.alt",null)),null)%>" border="0" /></a>
			<% } %>
		</td>
	</tr>
</table>

<% URLPipelineAction action234 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ApplyFilter",null)))),null));String site234 = null;String serverGroup234 = null;String actionValue234 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ApplyFilter",null)))),null);if (site234 == null){  site234 = action234.getDomain();  if (site234 == null)  {      site234 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup234 == null){  serverGroup234 = action234.getServerGroup();  if (serverGroup234 == null)  {      serverGroup234 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ApplyFilter",null)))),null));out.print("\"");out.print(" name=\"");out.print("statusForm");out.print("\"");out.print(" id=\"");out.print("statusForm");out.print("\"");out.print(" class=\"");out.print("aldi");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue234, site234, serverGroup234,true)); %>
	<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"review/inc/ReviewSearchForm", null, "102");} %>
<% out.print("</form>"); %>


<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td colspan="9" class="infobox">
			<% URLPipelineAction action235 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));String site235 = null;String serverGroup235 = null;String actionValue235 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null);if (site235 == null){  site235 = action235.getDomain();  if (site235 == null)  {      site235 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup235 == null){  serverGroup235 = action235.getServerGroup();  if (serverGroup235 == null)  {      serverGroup235 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue235, site235, serverGroup235,true)); %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusNew"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><input type="hidden" name="StatusNew" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusNew"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusApproved"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><input type="hidden" name="StatusApproved" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusApproved"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusRejected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><input type="hidden" name="StatusRejected" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusRejected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
				<table  cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e">
					<tr>
						<td class="infobox_item" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.selectlanguage")}, 115); %></td>
						<td class="infobox_item">
							<select name="LocaleId" class="select inputfield_en">
								<option value="" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLocale")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>selected="selected"<% } %>><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.all")}, 118); %></option>
								<% while (loop("AllLocales","Locale",null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>selected="selected"<% } %>>
										<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
								<% } %>
							</select>
						</td>
						<td width="100%">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="setLocale" value="<% {out.write(localizeISText("catalogs.channelreview.button.setlocale","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% out.print("</form>"); %>
		</td>
	</tr>
</table>
	
 


<% URLPipelineAction action236 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));String site236 = null;String serverGroup236 = null;String actionValue236 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null);if (site236 == null){  site236 = action236.getDomain();  if (site236 == null)  {      site236 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup236 == null){  serverGroup236 = action236.getServerGroup();  if (serverGroup236 == null)  {      serverGroup236 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("reviewForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue236, site236, serverGroup236,true)); %>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusNew"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><input type="hidden" name="StatusNew" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusNew"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusApproved"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><input type="hidden" name="StatusApproved" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusApproved"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusRejected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><input type="hidden" name="StatusRejected" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusRejected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Reviews") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td>
				<table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>
								<td class="table_header w e s" nowrap="nowrap" width="80">
									<div id="A">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap"><a href="javascript:selectAll('reviewForm','SelectedReviewID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.selectall")}, 162); %></a></td>
											</tr>
										</table>
									</div>
									<div id="B" style="display:none">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap"><a href="javascript:selectAll('reviewForm','SelectedReviewID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.clearall")}, 169); %></a></td>
											</tr>
										</table>
									</div>
								</td>
							<% } %>
							<td class="table_header <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>w<% } %> e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ProductName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ProductName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.product")}, 184); %>
											</a>
										<% } else { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ProductName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.product")}, 194); %>
											</a>
								<% } %>						
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ProductSKU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ProductSKU",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.productid")}, 207); %>
											</a>
										<% } else { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ProductSKU",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.productid")}, 217); %>
											</a>
								<% } %>
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ReviewName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ReviewName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.reviewtitle")}, 230); %>
											</a>
										<% } else { %>
											<a class="tableheader" 
											   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ReviewName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
												<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.reviewtitle")}, 240); %>
											</a>						
								<% } %>
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Rating",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Rating",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.rating")}, 253); %>
												</a>
											<% } else { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Rating",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.rating")}, 263); %>
												</a>						
								<% } %>
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Average",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Average",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.average")}, 276); %>
												</a>
											<% } else { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Average",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.average")}, 286); %>
												</a>						
								<% } %>						
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("AuthorName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AuthorName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.author")}, 299); %>
												</a>
											<% } else { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("AuthorName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.author")}, 309); %>
												</a>						
								<% } %>								
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CreationTime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CreationTime",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.reviewdate")}, 322); %>
												</a>
											<% } else { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CreationTime",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.reviewdate")}, 332); %>
												</a>						
								<% } %>								
							</td>
							<td class="table_header e s" nowrap="nowrap">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Status",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Status",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.status")}, 345); %>
												</a>
											<% } else { %>
												<a class="tableheader" 
												   href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewList-ShowAllSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Status",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("StatusNew",null),context.getFormattedValue(getObject("StatusNew"),null)).addURLParameter(context.getFormattedValue("StatusApproved",null),context.getFormattedValue(getObject("StatusApproved"),null)).addURLParameter(context.getFormattedValue("StatusRejected",null),context.getFormattedValue(getObject("StatusRejected"),null))),null)%>" >
													<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.header.status")}, 355); %>
												</a>						
								<% } %>								
							</td>
						</tr>
						
						
						
						<% while (loop("Reviews","Review",null)) { %>
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",365,e);}if (_boolean_result) { %>
								<td class="w e s top center">
								   <input type="checkbox" name="SelectedReviewID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Review:ID"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Review:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Review:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",367,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ReviewUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Review:ID"),null)),null)%>"/>
								   <input type="hidden" name="ReviewID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Review:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {368}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								</td>
							<% } %>
							<% {Object temp_obj = (getObject("Review:Extension(\"Product\"):AttachedProductBO")); getPipelineDictionary().put("ReviewAttachedProduct", temp_obj);} %>
							<% {try{executePipeline("ProcessReviewStatistics-GetAggregatedRatings",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("BusinessObject",getObject("ReviewAttachedProduct"))))))),"AggregatedRatings");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 372.",e);}} %>
							<% {Object temp_obj = (getObject("AggregatedRatings:AllReviewsAggregatedRating")); getPipelineDictionary().put("AllReviewsAggregatedRating", temp_obj);} %>
							<% {Object temp_obj = (getObject("AggregatedRatings:ApprovedReviewsAggregatedRating")); getPipelineDictionary().put("ApprovedReviewsAggregatedRating", temp_obj);} %>
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedLocale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",376,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SelectedLocale")); getPipelineDictionary().put("ProductLocale", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Review:MainLocale")); getPipelineDictionary().put("ProductLocale", temp_obj);} %>
							<% } %>
							
							<td class="table_detail <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",382,e);}if (_boolean_result) { %>w<% } %> e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewDetails-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ReviewID",null),context.getFormattedValue(getObject("Review:ID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ReviewAttachedProduct:DisplayName(ProductLocale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {382}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
							<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewDetails-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ReviewID",null),context.getFormattedValue(getObject("Review:ID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ReviewAttachedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {383}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
							<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelReviewDetails-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ReviewID",null),context.getFormattedValue(getObject("Review:ID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Review:ReviewTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {384}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Review:RatingBO:RatingValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {385}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
							
							
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AllReviewsAggregatedRating:RoundedAverageRating"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {388}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> / <% {String value = null;try{value=context.getFormattedValue(getObject("ApprovedReviewsAggregatedRating:RoundedAverageRating"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {388}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
							<td class="table_detail e s"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"review/inc/AuthorName", null, "389");} %></td>
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Review:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {390}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
							<% {Object temp_obj = (getObject("Review:Extension(\"Approval\"):ReviewApprovalBO")); getPipelineDictionary().put("Approval", temp_obj);} %>
							<td class="table_detail e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Approval:Status:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",393,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Approval:Status:Name"),null).equals(context.getFormattedValue("NEW",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",394,e);}if (_boolean_result) { %>
									<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.new")}, 395); %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Approval:Status:Name"),null).equals(context.getFormattedValue("APPROVED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",396,e);}if (_boolean_result) { %>
									<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.approved")}, 397); %>
								<% } else { %>
									<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.rejected")}, 399); %>
								<% }} %>
							<% } %> 
							</td>
						</tr>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",405,e);}if (_boolean_result) { %>
							<tr>
								<table cellspacing="0" cellpadding="0" border="0" class="w e s" width="100%">
									<tr>
										<td align="left">
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RequireReviewApproval"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",410,e);}if (_boolean_result) { %>
												<table cellspacing="4" cellpadding="0" border="0">
													<tr>
														<td class="button" nowrap=""><input type="submit" name="editAll" value="<% {out.write(localizeISText("catalogs.channelreview.button.editall","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>&nbsp;<input type="submit" name="editSelected" value="<% {out.write(localizeISText("catalogs.channelreview.button.editselected","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
														</td>
													</tr>
												</table>
											<% } else { %>
												&nbsp;
											<% } %>
										</td>
										<td align="right">
											<table cellspacing="4" cellpadding="0" border="0">
												<tr>
													<td colspan="7"></td>
													<td class="button"><input type="submit" name="confirmDelete" value="<% {out.write(localizeISText("catalogs.channelreview.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</tr>
						<% } %>
						<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Reviews"),
new TagParameter("variablepagesize","true")}, 433); %>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<% } else { %>	
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_detail w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.channelreview.search.result.null")}, 443); %><br/><br/></td>
	</tr>
</table>
<% } %>

<% out.print("</form>"); %>

<% printFooter(out); %>