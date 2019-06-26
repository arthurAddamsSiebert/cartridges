<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HidePageVariants"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HidePageVariants",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null))),null)%>" class="table_opened"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.PageVariants.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("Campaign:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("HidePageVariants",null)).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null))),null)%>" class="table_closed"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.PageVariants.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HidePageVariants"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% URLPipelineAction action585 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPageVariant",null)))),null));String site585 = null;String serverGroup585 = null;String actionValue585 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPageVariant",null)))),null);if (site585 == null){  site585 = action585.getDomain();  if (site585 == null)  {      site585 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup585 == null){  serverGroup585 = action585.getServerGroup();  if (serverGroup585 == null)  {      serverGroup585 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignAssignments_52-DispatchPageVariant",null)))),null));out.print("\"");out.print(" name=\"");out.print("CampaignPageVariantAssignmentsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue585, site585, serverGroup585,true)); %><input type="hidden" name="CampaignUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Campaign:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmRemovePageVariant"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignPageVariantAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("cancelbtnname","cancelRemovePageVariant"),
new TagParameter("okbtnname","removePageVariant"),
new TagParameter("type","mda")}, 32); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CampaignPageVariantAssignmentsList_52.ObjectAssignments.subject",null))),
new TagParameter("type","mdea")}, 34); %><% } %><% } %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageVariantPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><td class="table_header e s center" nowrap="nowrap" width="80">
<div id="divAssignedContentE">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignPageVariantAssignmentsForm','SelectedObjectUUID','divAssignedContentE','divAssignedContentF');" class="tableheader"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="divAssignedContentF" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CampaignPageVariantAssignmentsForm','SelectedObjectUUID','divAssignedContentE','divAssignedContentF');" class="tableheader"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="30%"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("PageVariantPageable","aPagelet",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="table_bg e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(aPagelet:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %> checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("aPagelet:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td><% } %><td class="table_detail e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("aPagelet:Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("aPagelet:Pagelet"))}, 81); %></a>
&nbsp;<% processOpenTag(response, pageContext, "pageletstatus", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("aPagelet:From"))}, 83); %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.PageVariant.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> / <% {String value = null;try{value=context.getFormattedValue(getObject("aPagelet:Pagelet:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } else { %><tr><td class="table_detail e s"><% {out.write(localizeISText("CampaignPageVariantAssignmentsList_52.CurrentlyThereAreNoObjectsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td class="e w s" width="100%" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="newPageVariant" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPageVariantAssignmentsList_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="assignPageVariant" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPageVariantAssignmentsList_52.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageVariantPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmRemovePageVariant" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignPageVariantAssignmentsList_52.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr><% } %> 
<tr>
<td> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td> 
<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pagesizeprefix","PageSizePageVariant_"),
new TagParameter("pageable","PageVariantPageable"),
new TagParameter("pagenumberprefix","PageNumberPageVariant_"),
new TagParameter("variablepagesize","true")}, 122); %></td>
</tr>
</table>
</td>
</tr> 
</table><% out.print("</form>"); %><% } %><% printFooter(out); %>