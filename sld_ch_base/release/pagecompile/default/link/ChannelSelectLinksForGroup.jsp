<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-ShowLinksForGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("Channel:UUID"),null)).addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroup:UUID"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("PageNumber"),null)))),
new TagParameter("id",context.getFormattedValue("AssignLinksToLinkGroup_",null) + context.getFormattedValue(getObject("LinkGroup:UUID"),null)),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelSelectLinksForGroup.AssignShortLinks.text",null)))}, 5); %><!-- EO Page Navigator --><% URLPipelineAction action58 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null));String site58 = null;String serverGroup58 = null;String actionValue58 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null);if (site58 == null){  site58 = action58.getDomain();  if (site58 == null)  {      site58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup58 == null){  serverGroup58 = action58.getServerGroup();  if (serverGroup58 == null)  {      serverGroup58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinkGroupAssignments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelLinkListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue58, site58, serverGroup58,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelSelectLinksForGroup.ShortLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelSelectLinksForGroup.YouHaveNotSelectedAnyShortLinksToBeAssigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td width="100%" class="table_title_description w e"><% {out.write(localizeISText("ChannelSelectLinksForGroup.TheListShowsAllShortLinksInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShortLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><!-- Main Content -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="ChannelLinks">
<tr>
<td class="aldi" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelLinkListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSelectLinksForGroup.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelLinkListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSelectLinksForGroup.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSelectLinksForGroup.ShortURL.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSelectLinksForGroup.TargetURL.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSelectLinksForGroup.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ShortLinks",null,null)) { %><tr>
<td class="table_detail w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ShortLinks:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ShortLinks:UUID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ShortLinks:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>
checked
<% } else { %><% while (loop("AssignedShortLinks",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedShortLinks:UUID"),null).equals(context.getFormattedValue(getObject("ShortLinks:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>disabled="disabled"<% } %><% } %><% } %>
/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ShortLinkUUID",null),context.getFormattedValue(getObject("ShortLinks:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("Channel:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ShortLinks:ShortURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ShortLinks:ExpandedTargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShortLinks:Type"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelSelectLinksForGroup.System.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelSelectLinksForGroup.Channel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s n" colspan="2"><% {out.write(localizeISText("ChannelSelectLinksForGroup.ThereAreNoShortLinksToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShortLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assignLinksToGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectLinksForGroup.Assign.button",null)),null)%>" class="button"/></td><% } %><td class="button">
<input type="hidden" name="LinkGroupUUID" value="<%=context.getFormattedValue(getObject("LinkGroup:UUID"),null)%>"/>
<input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<input type="hidden" name="ChannelUUID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/>
<input type="submit" name="cancelLinkAssignment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSelectLinksForGroup.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ShortLinks")}, 113); %><!-- End Page Cursor --><% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>