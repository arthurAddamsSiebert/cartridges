<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><%@page import="com.intershop.component.foundation.internal.iterator.ComparatorAdapter,
				java.util.ArrayList,
				java.util.Collection,
				java.util.Collections,
				java.util.List,
				com.intershop.beehive.xcs.capi.manufacturer.alias.ManufacturerNameAlias"%><!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Catalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ManufacturerAliasList.MasterCatalogs.text",null)))}, 11); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList-ListAll",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ManufacturerAliasList.ManufacturerAliases.text",null)))}, 12); %><!-- end page navigator --><% URLPipelineAction action637 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList-Dispatch",null)))),null));String site637 = null;String serverGroup637 = null;String actionValue637 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList-Dispatch",null)))),null);if (site637 == null){  site637 = action637.getDomain();  if (site637 == null)  {      site637 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup637 == null){  serverGroup637 = action637.getServerGroup();  if (serverGroup637 == null)  {      serverGroup637 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ManufacturerAliasListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue637, site637, serverGroup637,true)); %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ManufacturerAliasList.ManufacturerAliases.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","manufacturer alias"),
new TagParameter("cancelbtnname","CancelDelete"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc")}, 23); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","manufacturer alias"),
new TagParameter("type","mde")}, 25); %><% } %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ManufacturerAliasList.ListShowsAllManufacturersThatActAsAliasesForOtherManufacturers.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Aliases") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 35); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
<thead>
<tr>
<td colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="New" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManufacturerAliasList.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Aliases") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="ConfirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManufacturerAliasList.Delete.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><th class="table_header w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ManufacturerAliasListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ManufacturerAliasList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ManufacturerAliasListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ManufacturerAliasList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ManufacturerAliasList.ManufacturerAliases.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } else { %><th class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("ManufacturerAliasList.ManufacturerAliases.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %><th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ManufacturerAliasList.AssignedManufacturers.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
</thead>
<tbody><% while (loop("Aliases","ManufacturerNameAlias",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td class="w e s center" >
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ManufacturerNameAlias:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% } else { %><td class="table_detail w e s" nowrap="nowrap"><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ManufacturerNameAliasUUID",null),context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail e s"><% {Object temp_obj = ("0"); getPipelineDictionary().put("count", temp_obj);} %><% {Object temp_obj = (getObject("ManufacturerNameAlias")); getPipelineDictionary().put("ManufacturerNameAlias", temp_obj);} %><%
								// sort assigned manufacturers by name
								// Create iterator outside of <isloop> in templates is not working this is workaround
								ComparatorAdapter comparator = new ComparatorAdapter("Name", true);
								ManufacturerNameAlias alias = (ManufacturerNameAlias)(getPipelineDictionary().get("ManufacturerNameAlias"));
								Iterator manufacturerNames = alias.createManufacturerNamesIterator();
								List sorted = new ArrayList();
							
								while (manufacturerNames.hasNext())
								{
									sorted.add(manufacturerNames.next());
								}
								Collections.sort(sorted, comparator);
								getPipelineDictionary().put("ManufacturerNames", sorted);
							%> 
<span><% while (loop("ManufacturerNames","Name",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null).equals(context.getFormattedValue(getObject("Name:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>, <% } %><% {String value = null;try{value=context.getFormattedValue(getObject("Name:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {Object temp_obj = ("1"); getPipelineDictionary().put("count", temp_obj);} %><% } %><% } %></span>
</td>
</tr><% } %></tbody>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ManufacturerAliasList.ThereAreCurrentlyNoManufacturerAliasesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="New" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManufacturerAliasList.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Aliases") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="ConfirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ManufacturerAliasList.Delete.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Aliases") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Aliases")}, 181); %></td>
</tr>
</table>
<!-- End Page Cursor --><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>