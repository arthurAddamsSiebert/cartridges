<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-ShowGroupsForLink",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("Channel:UUID"),null)).addURLParameter(context.getFormattedValue("ShortLinkUUID",null),context.getFormattedValue(getObject("ShortLink:UUID"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("PageNumber"),null)))),
new TagParameter("id",context.getFormattedValue("AssignLinkGroupsToShortLink_",null) + context.getFormattedValue(getObject("ShortLink:UUID"),null)),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelSelectGroupsForLink.AssignLinkGroups.text",null)))}, 5); %><% URLPipelineAction action54 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null));String site54 = null;String serverGroup54 = null;String actionValue54 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null);if (site54 == null){  site54 = action54.getDomain();  if (site54 == null)  {      site54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup54 == null){  serverGroup54 = action54.getServerGroup();  if (serverGroup54 == null)  {      serverGroup54 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelLinkGroupForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue54, site54, serverGroup54,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelSelectGroupsForLink.LinkGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelSelectGroupsForLink.YouHaveNotSelectedAnyLinkGroupsToBeAssigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td width="100%" class="table_title_description w e s"><% {out.write(localizeISText("ChannelSelectGroupsForLink.TheListShowsAllLinkGroupsInThisChannelClickAssign.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LinkGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><!-- Main Content -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="ChannelLinkGroups">
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelLinkGroupForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSelectGroupsForLink.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelLinkGroupForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSelectGroupsForLink.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSelectGroupsForLink.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSelectGroupsForLink.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LinkGroups",null,null)) { %><tr>
<td class="table_detail w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("LinkGroups:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("LinkGroups:UUID"),null)%>"
<% while (loop("AssignedLinkGroups",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedLinkGroups:UUID"),null).equals(context.getFormattedValue(getObject("LinkGroups:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>disabled="disabled"<% } %><% } %>
/>
</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroups-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroups:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("Channel:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("LinkGroups:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("LinkGroups:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" colspan="2"><% {out.write(localizeISText("ChannelSelectGroupsForLink.ThereAreNoLinkGroupsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LinkGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="assignGroupsToLink" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectGroupsForLink.Assign.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="hidden" name="ShortLinkUUID" value="<%=context.getFormattedValue(getObject("ShortLink:UUID"),null)%>"/>
<input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<input type="hidden" name="ChannelUUID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/>
<input type="submit" name="cancelGroupAssignment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectGroupsForLink.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","LinkGroups")}, 105); %><% out.print("</form>"); %><!-- Paging controls//-->
<!-- EO Main Content --><% printFooter(out); %>