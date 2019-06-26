<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroupsSelect_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CatalogFilter:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("filter.SelectCustomerSegments.text",null))),
new TagParameter("id","selectCustomSegments")}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action237 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroupsSelect_52-Dispatch",null)))),null));String site237 = null;String serverGroup237 = null;String actionValue237 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroupsSelect_52-Dispatch",null)))),null);if (site237 == null){  site237 = action237.getDomain();  if (site237 == null)  {      site237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup237 == null){  serverGroup237 = action237.getServerGroup();  if (serverGroup237 == null)  {      serverGroup237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterUserGroupsSelect_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ConsumerGroupsSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue237, site237, serverGroup237,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "8");} %><input type="hidden" name="CatalogFilterUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilter:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("filter.SelectCustomerSegments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectUserGroups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("filter.YouHaveNotSelectedAnyCustomerSegmentSelectAtLeast.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2" width="100%"><% {out.write(localizeISText("filter.TheListShowsAllCustomerSegmentsCustomerSegments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS")),
new TagParameter("key3","AssignedUserGroups"),
new TagParameter("value3",getObject("AssignedUserGroups")),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","customerSegmentsParams")}, 39); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","inc/UserGroupsColumns_52.isml"),
new TagParameter("configuration","catalogfilterusergroupsselect"),
new TagParameter("datatemplate","inc/UserGroupsData_52.isml"),
new TagParameter("pageable",getObject("UserGroups")),
new TagParameter("id","UserGroups"),
new TagParameter("pageablename","UserGroups"),
new TagParameter("params",getObject("customerSegmentsParams"))}, 45); %><% } else { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("filter.ThereAreCurrentlyNoCustomerSegmentsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="selectUserGroups" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("filter.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>