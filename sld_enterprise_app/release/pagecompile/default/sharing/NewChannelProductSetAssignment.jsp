<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-PagingNewProductSets",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SharingTargetChannelID",null),context.getFormattedValue(getObject("Channel:UUID"),null))))),
new TagParameter("id","AddProductSet"),
new TagParameter("text",localizeText(context.getFormattedValue("NewChannelProductSetAssignment.AddSharingGroups.text",null)))}, 4); %><!-- Main Content --><% URLPipelineAction action481 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchEditChannel",null)))),null));String site481 = null;String serverGroup481 = null;String actionValue481 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchEditChannel",null)))),null);if (site481 == null){  site481 = action481.getDomain();  if (site481 == null)  {      site481 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup481 == null){  serverGroup481 = action481.getServerGroup();  if (serverGroup481 == null)  {      serverGroup481 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-DispatchEditChannel",null)))),null));out.print("\"");out.print(" name=\"");out.print("productSetsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue481, site481, serverGroup481,true)); %><input type="hidden" name="SharingTargetChannelID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/>
<input type="hidden" name="ChannelForm_SharingType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelForm_SharingType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewChannelProductSetAssignment.AddSharingGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("SelectError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<table width="100%" cellspacing="0" cellpadding="4" border="0" class="error_box w e s">
<tbody><tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td width="100%" class="error top">
<b><% {out.write(localizeISText("NewChannelProductSetAssignment.SharingGroupAssignmentFailedPleaseSelectASharingGr.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr></tbody>
</table>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewChannelProductSetAssignment.TheListShowsAllSharingGroupsCurrentlyNotAssignedTo.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productSetsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("NewChannelProductSetAssignment.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('productSetsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("NewChannelProductSetAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("NewChannelProductSetAssignment.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("NewChannelProductSetAssignment.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("NewChannelProductSetAssignment.Products.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductSets","ProductSet",null)) { %><tr>
<td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ProductSet:UUID"),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ProductSet:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s" nowrap="nowrap">&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s" ><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:ProductsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="table_detail"><% {out.write(localizeISText("NewChannelProductSetAssignment.NoUnassignedSharingGroupsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assignProductSets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewChannelProductSetAssignment.OK.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancelAssignProductSets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewChannelProductSetAssignment.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ProductSets")}, 95); %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>