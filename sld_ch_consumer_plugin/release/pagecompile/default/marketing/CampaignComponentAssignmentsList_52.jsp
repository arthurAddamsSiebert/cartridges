<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideComponents"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideComponents",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null))),null)%>" class="table_opened"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.Components.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HideComponents",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null))),null)%>" class="table_closed"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.Components.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideComponents"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% URLPipelineAction action584 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchComponent",null)))),null));String site584 = null;String serverGroup584 = null;String actionValue584 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchComponent",null)))),null);if (site584 == null){  site584 = action584.getDomain();  if (site584 == null)  {      site584 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup584 == null){  serverGroup584 = action584.getServerGroup();  if (serverGroup584 == null)  {      serverGroup584 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchComponent",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignComponentAssignmentsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue584, site584, serverGroup584,true)); %><input type="hidden" name="CampaignUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmRemoveComponent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignComponentAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("cancelbtnname","cancelRemoveComponent"),
new TagParameter("okbtnname","removeComponent"),
new TagParameter("type","mda")}, 31); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignComponentAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("type","mdea")}, 33); %><% } %><% } %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ComponentPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><td class="table_header e s center" nowrap="nowrap" width="80">
<div id="divAssignedContentC">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignComponentAssignmentsForm','SelectedObjectUUID','divAssignedContentC','divAssignedContentD');" class="tableheader"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divAssignedContentD" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignComponentAssignmentsForm','SelectedObjectUUID','divAssignedContentC','divAssignedContentD');" class="tableheader"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="30%"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ComponentPageable","aPagelet",null)) { %><tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><td class="table_bg e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(aPagelet:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %> checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("aPagelet:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td><% } %><td class="table_detail e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("aPagelet:Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("aPagelet:Pagelet"))}, 80); %></a>
&nbsp;<% processOpenTag(response, pageContext, "pageletstatus", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("aPagelet:From"))}, 82); %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.Component.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> / <% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:Pagelet:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td> 
</tr><% } %><% } else { %><tr><td class="table_detail e s"><% {out.write(localizeISText("CampaignComponentAssignmentsList_52.CurrentlyThereAreNoObjectsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><tr>
<td class="e w s" width="100%" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newComponent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignComponentAssignmentsList_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="assignComponent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignComponentAssignmentsList_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ComponentPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmRemoveComponent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignComponentAssignmentsList_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr><% } %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td> 
<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pagesizeprefix","PageSizeComponent_"),
new TagParameter("pageable","ComponentPageable"),
new TagParameter("pagenumberprefix","PageNumberComponent_"),
new TagParameter("variablepagesize","true")}, 121); %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr> 
</table>
</td>
</tr> 
</table> 
<% out.print("</form>"); %><% } %><% printFooter(out); %>