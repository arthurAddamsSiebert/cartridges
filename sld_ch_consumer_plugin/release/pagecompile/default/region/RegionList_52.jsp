<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TEMPLATENAME: region/RegionList_52.isml -->
<!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "5");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentSearchType"),null).equals(context.getFormattedValue("Simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-BackSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("RegionList_52.DestinationRegions.text",null))),
new TagParameter("id","regionList")}, 8); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentSearchType"),null).equals(context.getFormattedValue("Advanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-BackAdvancedSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("RegionList_52.DestinationRegions.text",null))),
new TagParameter("id","regionList")}, 10); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("RegionList_52.DestinationRegions.text",null))),
new TagParameter("id","regionList")}, 12); %><% }} %><!-- Titel and Description --><% URLPipelineAction action193 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null));String site193 = null;String serverGroup193 = null;String actionValue193 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null);if (site193 == null){  site193 = action193.getDomain();  if (site193 == null)  {      site193 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup193 == null){  serverGroup193 = action193.getServerGroup();  if (serverGroup193 == null)  {      serverGroup193 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue193, site193, serverGroup193,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("RegionList_52.DestinationRegions.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("RegionList_52.Region.subject",null))),
new TagParameter("cancelbtnname","cancelConfirm"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 23); %><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("RegionList_52.Region.subject",null))),
new TagParameter("type","mde")}, 27); %><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("RegionIsUsed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e" ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("RegionList_52.ItemsCouldNotBeDeletedBecauseUsed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("parametricSearch")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.RegionsFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("RegionList_52.AllRegionsForThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><% {out.write(localizeISText("RegionList_52.ClickOnRegionIDOrRegionNameToEdit.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO Titel and Description -->
<!-- Simple and advanced search --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SearchType"),
new TagParameter("value","simple")}, 58); %><% } %> 
<% processOpenTag(response, pageContext, "regionsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewRegionList_52-Dispatch"),
new TagParameter("searchtype",getObject("SearchType"))}, 60); %><!-- Main Content --><% URLPipelineAction action194 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null));String site194 = null;String serverGroup194 = null;String actionValue194 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null);if (site194 == null){  site194 = action194.getDomain();  if (site194 == null)  {      site194 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup194 == null){  serverGroup194 = action194.getServerGroup();  if (serverGroup194 == null)  {      serverGroup194 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RegionSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue194, site194, serverGroup194,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('RegionSearch','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('RegionSearch','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("RegionList_52.RegionName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("RegionList_52.RegionID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("RegionList_52.RegionDescription.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("RegionList_52.AddressType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("RegionList_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="1%"><% {out.write(localizeISText("RegionList_52.Default.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Regions","Region",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><td class="e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:Id"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Region:Id)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %> checked="checked"<% } %> />
</td><% } %><td class="table_detail e s top"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegion_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegion_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Region:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:AddressType"),null).equals(context.getFormattedValue("Regular",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.Regular.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:AddressType"),null).equals(context.getFormattedValue("POBox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.PostOfficeBox.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:AddressType"),null).equals(context.getFormattedValue("APO_FPO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.APO_FPO_DPO.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:AddressType"),null).equals(context.getFormattedValue("EMAIL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.EMAIL.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Region:AddressType"),null).equals(context.getFormattedValue("STORES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.STORE.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}} %>
&nbsp;</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Region:Active")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionList_52.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } else { %><% {out.write(localizeISText("RegionList_52.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;
<% } %></td>
<td class="table_detail e s center top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %> 
<input type="radio" name="DefaultRegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Region:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="radio" name="DefaultRegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Region:DefaultRegion")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled" /><% } %></td>
</tr><% } %></table>
<!-- EO Main Content -->
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("RegionList_52.NoDestinationRegionsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %> 
<tr>
<td class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="ChannelID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionList_52.New.button",null)),null)%>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionList_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input class="button" type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionList_52.Delete.button",null)),null)%>"/></td><% } %></tr>
</table>
</td>
</tr><% } %><tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("SearchType")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Regions"),
new TagParameter("parametername","SearchType"),
new TagParameter("variablepagesize","true")}, 162); %><!-- End Page Cursor -->
</td>
</tr>
</table><% out.print("</form>"); %><!-- End Page Cursor -->
<!-- EO Working Area --><% printFooter(out); %>