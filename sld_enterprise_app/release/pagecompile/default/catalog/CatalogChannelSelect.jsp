<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannel-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogChannelSelect.AssignNewChannel.text",null)))}, 5); %><!-- EO Page Navigator -->
<!-- Title, Errors and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("CatalogChannelSelect.AssignNewChannel.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorNoChannelSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogChannelSelect.YouHaveNotSelectedAnyChannelSelectAtLeastOneChanne.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOGID_EXISTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogChannelSelect.TheCatalogCouldNotBeAssignedTheCatalogIDAlreadyExi.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedChannels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CatalogChannelSelect.TheListShowsAllChannelsCurrentlyAvailableWhichAreN.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CatalogChannelSelect.CurrentlyThisSalesOrganizationHasNoUnassignedChann.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action520 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannel-Dispatch",null)))),null));String site520 = null;String serverGroup520 = null;String actionValue520 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannel-Dispatch",null)))),null);if (site520 == null){  site520 = action520.getDomain();  if (site520 == null)  {      site520 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup520 == null){  serverGroup520 = action520.getServerGroup();  if (serverGroup520 == null)  {      serverGroup520 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue520, site520, serverGroup520,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedChannels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedChannelUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CatalogChannelSelect.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedChannelUUID','A','B');" class="tableheader"><% {out.write(localizeISText("CatalogChannelSelect.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sorting", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogChannel-Refresh"),
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("sortingattribute","DisplayName"),
new TagParameter("style","tableheader"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("tableheader","Name")}, 85); %></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sorting", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogChannel-Refresh"),
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("sortingattribute","Id"),
new TagParameter("style","tableheader"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("tableheader","ID")}, 88); %></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sorting", new TagParameter[] {
new TagParameter("pipeline","ViewCatalogChannel-Refresh"),
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("sortingattribute","TypeCode"),
new TagParameter("style","tableheader"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("tableheader","Type")}, 91); %></td>
</tr><% while (loop("UnassignedChannels","Channel",null)) { %><tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:UUID"),null).equals(context.getFormattedValue(getObject("ChannelClipboard:ObjectUUID(Channel:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedChannelUUID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedChannelUUID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/><% } %><input type="hidden" name="ListChannelUUID" value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:TypeCode"),null).equals(context.getFormattedValue("32",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogChannelSelect.Partner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:TypeCode"),null).equals(context.getFormattedValue("42",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogChannelSelect.Business.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:TypeCode"),null).equals(context.getFormattedValue("52",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogChannelSelect.Sales.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Channel:TypeCode"),null).equals(context.getFormattedValue("62",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogChannelSelect.Content.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;
</td>
</tr><% } %><% } %><tr>
<td align="right" class="w e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedChannels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogChannelSelect.OK.button",null)),null)%>" class="button"/><% } %></td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogChannelSelect.Cancel.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="4">
<div>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</div>
</td>
</tr>
<tr>
<td colspan="4"><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UnassignedChannels")}, 146); %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Primary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>