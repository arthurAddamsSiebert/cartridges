<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->
<!-- Main Content -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",localizeText(context.getFormattedValue("PromotionPreferenceTypePriorities.TypePriorities.text1",null))),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceTypePriorities-Edit",null))))),
new TagParameter("id","PromotionPreferences"),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("PromotionPreferenceTypePriorities.PromotionPreferences.text",null)),null) + context.getFormattedValue(": ",null))}, 5); %>
<!-- Tabs -->
<% {Object temp_obj = ("PromotionTypePriorities"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionPreferencesTabsInc", null, "8");} %>
<!-- EO Tabs -->

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title w e s"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.PromotionPreferencesTypePriorities.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<!-- errors -->
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectionEmpty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("PromotionPreferenceTypePriorities.PleaseSelectAtLeastOnePromotionType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	<!-- EO errors -->
	<tr>
		<td class="table_title_description w e s">
			<% {out.write(localizeISText("PromotionPreferenceTypePriorities.SpecifyInWhichOrderVariousPromotionTypes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% URLPipelineAction action248 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceTypePriorities-Dispatch",null)))),null));String site248 = null;String serverGroup248 = null;String actionValue248 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceTypePriorities-Dispatch",null)))),null);if (site248 == null){  site248 = action248.getDomain();  if (site248 == null)  {      site248 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup248 == null){  serverGroup248 = action248.getServerGroup();  if (serverGroup248 == null)  {      serverGroup248 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceTypePriorities-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("promotionTypes");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue248, site248, serverGroup248,true)); %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
					<td class="table_header e s center" nowrap="nowrap" width="80">
						<div id="A">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('promotionTypes','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
						<div id="B" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('promotionTypes','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				<% } %>
				<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.PromotionTypes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.DefaultPriority.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
					<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionPreferenceTypePriorities.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>
			<% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %>
			<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ActionDescriptorsCount", temp_obj);} %>
			<% while (loop("ActionDescriptors",null,null)) { %>
				<% {Object temp_obj = ((new Double( ((Number) getObject("ActionDescriptorsCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ActionDescriptorsCount", temp_obj);} %>
			<% } %>	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ActionDescriptorsCount")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %>	
			<% } %>		
			<% while (loop("ActionDescriptors","aDescriptor",null)) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
						<td class="table_bg e s center">
							<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(aDescriptor:Name)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %> checked="checked"<% } %>/>
						</td>
					<% } %>
					<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("aDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
					<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionActionPriorityHandler:DefaultRank(aDescriptor)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("DisplayRowSpan"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>
						<td class="table_detail e s top center sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionDescriptorsCount"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" width="10">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayMoveArrows"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
							 	<table border="0" cellpadding="0" cellspacing="0" align="center">
									<tr>
										<td>
											<input type="hidden" name="Direction" value="UP"/>
											<input type="image" name="moveup" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/>
										</td>
									</tr>
									<tr>
										<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
									</tr>
									<tr>
										<td>
											<input type="hidden" name="Direction" value="DOWN"/>
											<input type="image" name="movedown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/>
										</td>
									</tr>
								</table>
							<% } else { %>
								<% {out.write(localizeISText("PromotionPreferenceTypePriorities.Nbsp",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } %>	
						</td>
						<% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %>
					<% } %>
				</tr>
			<% } %>
		</table>
<% out.print("</form>"); %><% printFooter(out); %>