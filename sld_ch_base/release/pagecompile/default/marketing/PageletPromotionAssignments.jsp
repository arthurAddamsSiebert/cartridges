<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%@page import="com.intershop.component.pmc.capi.pagelet.assignment.PageletAssignment,
                com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
                java.util.Date" %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "5");} %>
<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 6); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
    <% {Object temp_obj = ("PagePromotionAssignmentsForm"); getPipelineDictionary().put("FormName", temp_obj);} %>
    <% {Object temp_obj = ("PageAssignments"); getPipelineDictionary().put("PageNumberPrefix", temp_obj);} %>
    <% {Object temp_obj = ("Page"); getPipelineDictionary().put("AssignmentType", temp_obj);} %>
<% } else { %>
    <% {Object temp_obj = ("ComponentPromotionAssignmentsForm"); getPipelineDictionary().put("FormName", temp_obj);} %>
    <% {Object temp_obj = ("ComponentAssignments"); getPipelineDictionary().put("PageNumberPrefix", temp_obj);} %>
    <% {Object temp_obj = ("Component"); getPipelineDictionary().put("AssignmentType", temp_obj);} %>
<% } %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "16");} %>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Repository"),
new TagParameter("key2","Locale"),
new TagParameter("key0","Promotion"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("key3","PageFlag"),
new TagParameter("value4",getObject("AssignmentType")),
new TagParameter("value3",getObject("PageFlag")),
new TagParameter("key4","AssignmentType"),
new TagParameter("value0",getObject("ContextObject")),
new TagParameter("mapname","ProcessSearchAssignmentsParams")}, 17); %>
<% {try{executePipeline("ViewPromotionContent-GetPageable",((java.util.Map)(getObject("ProcessSearchAssignmentsParams"))),"GetPageableResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} %>
<% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("GetPageableResult"))}, 25); %>
<% URLPipelineAction action302 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ContextPipeline"),null)))),null));String site302 = null;String serverGroup302 = null;String actionValue302 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ContextPipeline"),null)))),null);if (site302 == null){  site302 = action302.getDomain();  if (site302 == null)  {      site302 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup302 == null){  serverGroup302 = action302.getServerGroup();  if (serverGroup302 == null)  {      serverGroup302 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ContextPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("FormName"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue302, site302, serverGroup302,true)); %>
    <input type="hidden" name="GetPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GetPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
    <input type="hidden" name="ContextPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
    <input type="hidden" name="ContextObjectUUID" value="<%=context.getFormattedValue(getObject("ContextObject:UUID"),null)%>" />
	<input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
    <input type="hidden" name="PageFlag" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
    <input type="hidden" name="AssignmentType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="PageNumberPrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageNumberPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
        <input type="hidden" name="TemplateType" value="Page"/>
	<% } else { %>
        <input type="hidden" name="TemplateType" value="Component"/>
	<% } %>
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
		<tr>
			<td class="table_title2 left aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletPromotionAssignments.PageVariants.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletPromotionAssignments.Components.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
		</tr>
	</table>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GetPageableResult:ContainerReadFirstTime"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
	    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetPageableResult:confirmUnassign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
	        <table width="100%" cellspacing="0" cellpadding="0" border="0">
	            <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
	                <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
	                    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mda"),
new TagParameter("message",context.getFormattedValue("Are you sure you want to unassign the selected page variants from this ",null) + context.getFormattedValue(getObject("ContextTypeName"),null) + context.getFormattedValue("?",null))}, 51); %>
	                <% } else { %>
	                    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Component.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mda"),
new TagParameter("message",context.getFormattedValue("Are you sure you want to unassign the selected components from this ",null) + context.getFormattedValue(getObject("ContextTypeName"),null) + context.getFormattedValue("?",null))}, 54); %>
	                <% } %>
	            <% } else { %>
	                <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
	                    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.YouHaveNotSelectedAnyPageVariantsToBeUnassigned.message",null)))}, 59); %>
	                <% } else { %>
	                    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Component.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.YouHaveNotSelectedAnyComponentsToBeUnassigned.message",null)))}, 62); %>
	                <% } %>
	            <% } %>
	        </table>
	    <% } else { %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetPageableResult:confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
	            <table width="100%" cellspacing="0" cellpadding="0" border="0">
	                <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
	                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
	                        <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mda"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.AreYouSureYouWantToDeleteTheSelectedPageVariants.message",null)))}, 72); %>
	                    <% } else { %>
	                        <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Component.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mda"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.AreYouSureYouWantToDeleteTheSelectedComponents.message",null)))}, 75); %>
	                    <% } %>
	                <% } else { %>
	                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
	                        <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelPageletImpexOverview.Page.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.YouHaveNotSelectedAnyPageVariantsToBeDeleted.message",null)))}, 80); %>
	                    <% } else { %>
	                        <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Component.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletPromotionAssignments.YouHaveNotSelectedAnyComponentsToBeDeleted.message",null)))}, 83); %>
	                    <% } %>
	                <% } %>
	            </table>
	        <% } %>
	    <% } %>
	<% } %>

	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	    <tr>
	        <td class="table_title_description w e s">
	            <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
            		<% {out.write(localizeISText("promotion.page.variant.assignment.text",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %></br>
	                <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
	                	<% {out.write(localizeISText("promotion.page.variant.assignment.text1",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %>
	                	<% {out.write(localizeISText("promotion.page.variant.assignment.text2",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %> 
	                	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
	                		<% {out.write(localizeISText("promotion.page.variant.assignment.text3",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %>
	                		<% {out.write(localizeISText("promotion.page.variant.assignment.text4",null,null,null,null,null,null,null,null,null,null,null,null));} %>
	                	<% } %>
					<% } %>
	            <% } else { %>
	            	<% {out.write(localizeISText("promotion.component.assignment.text",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %></br>
	                <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
	                	<% {out.write(localizeISText("promotion.component.assignment.text1",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %>
	                	<% {out.write(localizeISText("promotion.component.assignment.text2",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %> 
	                	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
	                		<% {out.write(localizeISText("promotion.component.assignment.text3",null,null,localizeText(context.getFormattedValue("promotion.assignment.contextTypeName",null),getObject("Locale")),null,null,null,null,null,null,null,null,null));} %>
	                		<% {out.write(localizeISText("promotion.component.assignment.text4",null,null,null,null,null,null,null,null,null,null,null,null));} %>
	                	<% } %>
	                <% } %>
	            <% } %>
	        </td>
	    </tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
		<table cellspacing="0" cellpadding="0" border="0" width="100%">
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
					<td nowrap="nowrap" width="80" class="table_header w e s">
						<div id="Page_E_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("FormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','Page_E_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','Page_F_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"><% {out.write(localizeISText("PageletPromotionAssignments.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
								</tr>
							</table>
						</div>
						<div style="display: none;" id="Page_F_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("FormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','Page_E_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','Page_F_<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');"><% {out.write(localizeISText("PageletPromotionAssignments.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
								</tr>
							</table>
						</div>
					</td>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
                    <td nowrap="nowrap" class="table_header e s <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>w<% } %>"><% {out.write(localizeISText("PageletPromotionAssignments.PageVariantName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s" width="15%" nowrap="nowrap"><% {out.write(localizeISText("PageletPromotionAssignments.PageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
                    <td nowrap="nowrap" class="table_header e s <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>w<% } %>"><% {out.write(localizeISText("PageletPromotionAssignments.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s" width="15%" nowrap="nowrap"><% {out.write(localizeISText("PageletPromotionAssignments.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
				<td class="table_header e s" width="150" nowrap="nowrap"><% {out.write(localizeISText("PageletPromotionAssignments.PublishedFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s" width="150" nowrap="nowrap"><% {out.write(localizeISText("PageletPromotionAssignments.PublishedTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
					<td class="table_header e s" width="90" nowrap="nowrap"><% {out.write(localizeISText("PageletPromotionAssignments.Actions.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>
			<% while (loop("Assignments","Assignment",null)) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %>
						<td nowrap="nowrap" class="table_detail w e s top center">
							<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("GetPageableResult:Clipboard:contains(Assignment:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Assignment:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
							<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						</td>
					<% } %>
					<td class="table_detail e s <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>w<% } %>">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Assignment:Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("selectedMenuItem"),null))),null)%>" 
							class="table_detail_link"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 163); %></a><% processOpenTag(response, pageContext, "pageletstatus", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Date",getObject("Date")),
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 163); %>
					</td>
					<td nowrap="nowrap" class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(Assignment:Pagelet:PageletDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
					<td nowrap="nowrap" class="table_detail e s"><% processOpenTag(response, pageContext, "pageletpublishedfrom", new TagParameter[] {
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 166); %></td>
					<td nowrap="nowrap" class="table_detail e s"><% processOpenTag(response, pageContext, "pageletpublishedto", new TagParameter[] {
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 167); %></td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
						<td nowrap="nowrap" class="table_detail e s">
							<% processOpenTag(response, pageContext, "pageletlocking", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 170); %>&nbsp;
							<% processOpenTag(response, pageContext, "copypagelet", new TagParameter[] {
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("CopyOfPrefix","Copy of "),
new TagParameter("GetPipeline",getObject("GetPipeline")),
new TagParameter("Pagelet",getObject("Assignment:Pagelet"))}, 171); %>
						</td>
					<% } %>
				</tr>
			<% } %>
		</table>
	<% } else { %>
		<table cellspacing="0" cellpadding="0" border="0" width="100%">
		    <tr>
		        <td class="table_detail w e s">
		            <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
		                <% {out.write(localizeISText("PageletPromotionAssignments.ThereAreCurrentlyNoPageVariantsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		            <% } else { %>
		                <% {out.write(localizeISText("PageletPromotionAssignments.ThereAreCurrentlyNoComponentsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		            <% } %>
		        </td>
		    </tr>
		</table>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
		<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
		    <tr>
		        
		        <td align="right">
		            <table border="0" cellspacing="4" cellpadding="0">
		                <tr>
		                	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %>
		                    <td class="button"><input type="submit" name="openNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletPromotionAssignments.New.button",null)),null)%>" class="button"/></td>
		                    <% } %>
		                    <td class="button">
		                    	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %>
			                    	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("true",null).equals(context.getFormattedValue(getObject("PageFlag"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %>
			                    		<input type="submit" name="openAssignPageVariants" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletPromotionAssignments.Assign.button",null)),null)%>" class="button"/>
			                    	<% } else { %>
			                    		<input type="submit" name="openAssignComponents" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletPromotionAssignments.Assign.button",null)),null)%>" class="button"/>
			                    	<% } %>
			                    <% } %>
		                    </td>
		                    
		                    <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
	                        	<td class="button"><input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletPromotionAssignments.Unassign.button",null)),null)%>" class="button"/></td>
		                        <td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletPromotionAssignments.Delete.button",null)),null)%>" class="button"/></td>
		                    <% } %>
		                </tr>
		            </table>
		        </td>
		    </tr>
		</table>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Assignments"),
new TagParameter("pagenumberprefix",getObject("PageNumberPrefix"))}, 232); %>
	<% } %>
<% out.print("</form>"); %><% printFooter(out); %>