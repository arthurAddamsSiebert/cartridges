<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Catalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers.MasterCatalogs.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList-ListAll",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers.ManufacturerAliases.text",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers.Manufactures.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-AssignedManufacturersList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ManufacturerNameAliasUUID",null),context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null))))),
new TagParameter("text",getObject("ManufacturerNameAlias:NameAlias"))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-ListManufacturers",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedManufacturerAliasUUID",null),context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("AssignManufacturers.AssignManufacturers.text",null)))}, 8); %><!-- end page navigator --><% URLPipelineAction action638 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-DispatchManufacturers",null)))),null));String site638 = null;String serverGroup638 = null;String actionValue638 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-DispatchManufacturers",null)))),null);if (site638 == null){  site638 = action638.getDomain();  if (site638 == null)  {      site638 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup638 == null){  serverGroup638 = action638.getServerGroup();  if (serverGroup638 == null)  {      serverGroup638 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias-DispatchManufacturers",null)))),null));out.print("\"");out.print(" name=\"");out.print("ManufacturerListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue638, site638, serverGroup638,true)); %><!-- Tabs -->
<!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n s"><% {out.write(localizeISText("AssignManufacturers.0AssignManufacturers.table_title",null,null,encodeString(context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignFinish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("AssignManufacturers.YouHaveNotSelectedAnyManufacturersToBeAssigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("AssignManufacturers.NotAllManufacturerAliasesCouldBeAssigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("AssignManufacturers.TheListShowsManufacturersThatWereFound.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="WFSearchManufacturers_ManufacturerName"><% {out.write(localizeISText("AssignManufacturers.FindManufacturers.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td>
<input type="hidden" name="Find" value="Find"/>
<input type="text" name="WFSearchManufacturers_ManufacturerName" id="WFSearchManufacturers_ManufacturerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearchManufacturers_ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/>
</td>
<td class="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<!--
<input type="hidden" name="DefaultButton" value="Find"/>
--> 
<input type="submit" name="Find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AssignManufacturers.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ManufacturerListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("AssignManufacturers.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("AssignManufacturers.Manufacturers.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AllManufacturers","Manufacturer",null)) { %><tr>
<td class="w e s center" >
<input type="hidden" name="Manufacturer" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Manufacturer)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
checked="checked"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ManufacturerNamesMap:get(Manufacturer)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
<td class="table_detail e s">
&nbsp;
<% {String value = null;try{value=context.getFormattedValue(getObject("Manufacturer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("AssignManufacturers.NoManufacturersFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<input name="ManufacturerNameAliasUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="SelectedManufacturerAliasUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><td class="button">
<input class="button" type="submit" name="Assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers.Assign.button",null)),null)%>"/>
</td><% } %><td class="button">
<input class="button" type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignManufacturers.Cancel.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllManufacturers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","AllManufacturers")}, 174); %><!-- End Page Cursor -->
</td>
</tr>
</table><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>