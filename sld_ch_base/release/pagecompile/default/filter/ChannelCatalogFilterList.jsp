<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewChannelCatalogOverview_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Show",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelCatalogFilterList.ChannelCatalogs.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelCatalogFilterList.CatalogViews.text",null)))}, 4); %><% URLPipelineAction action41 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null));String site41 = null;String serverGroup41 = null;String actionValue41 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null);if (site41 == null){  site41 = action41.getDomain();  if (site41 == null)  {      site41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup41 == null){  serverGroup41 = action41.getServerGroup();  if (serverGroup41 == null)  {      serverGroup41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue41, site41, serverGroup41,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ChannelCatalogFilterList.CatalogViews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MVC_Catalog_FilterResourceLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="1">
<table class="error_box" border="0" cellpadding="4" cellspacing="0" width="100%">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" alt="" border="0" height="15" width="16"></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelCatalogFilterList.PublishingIsNotPossibleAtTheMoment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.CatalogView.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 27); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.CatalogView.subject",null))),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("type","mde")}, 29); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("publish")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelCatalogFilterList.YouHaveNotSelectedAnyCatalogViewsToBePublished.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% } %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FindPerformed")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FindPerformed"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.TheListShowsTheCatalogViewsFoundByYourSearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("ChannelCatalogFilterList.TheListShowsAllCatalogViewsInThisChannelClickNew.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr><% } else { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelCatalogFilterList.TheListShowsAllCatalogViewsInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr><% } %></table><% out.print("</form>"); %><% URLPipelineAction action42 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Search",null)))),null));String site42 = null;String serverGroup42 = null;String actionValue42 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Search",null)))),null);if (site42 == null){  site42 = action42.getDomain();  if (site42 == null)  {      site42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup42 == null){  serverGroup42 = action42.getServerGroup();  if (serverGroup42 == null)  {      serverGroup42 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Search",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue42, site42, serverGroup42,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title" nowrap="nowrap" colspan="3"><% {out.write(localizeISText("ChannelCatalogFilterList.FindCatalogViews.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.NameOrDescription.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td> 
<td>
<input type="text" name="SearchValue" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/>
</td>
<td class="w100">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action43 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null));String site43 = null;String serverGroup43 = null;String actionValue43 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null);if (site43 == null){  site43 = action43.getDomain();  if (site43 == null)  {      site43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup43 == null){  serverGroup43 = action43.getServerGroup();  if (serverGroup43 == null)  {      serverGroup43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogFilterListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue43, site43, serverGroup43,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogFilters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CatalogFilterListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogFilterList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CatalogFilterListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogFilterList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.PublishingInterval.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterList.Published.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("CatalogFilters","CF",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><td class="e s center top">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("CF:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("CF:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(CF:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td><% } %><td class="table_detail e s top">
<a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-Redo",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogFilterUUID",null),context.getFormattedValue(getObject("CF:UUID"),null))),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CF:Name(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CF:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CF:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CF:Name"),null) + context.getFormattedValue(" (Language missing)",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CF:ID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CF:ID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CF:ID"),null) + context.getFormattedValue(" (Name missing)",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CF:UUID"),null) + context.getFormattedValue(" (Name missing)",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }}} %></a>&nbsp;
</td> 
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("CF:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.Publishing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelCatalogFilterList.Unknown.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.ManualPublishingOnly.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryMinutes.table_detail",null,null,context.getFormattedValue(((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() /((Number) new Double(60)).doubleValue()))),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryHour.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryHours.table_detail",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() /((Number) new Double(60)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryDay.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryDays.table_detail",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(60)).doubleValue() /((Number) new Double(24)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryWeek.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.EveryDays.table_detail1",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(24)).doubleValue() /((Number) new Double(7)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelCatalogFilterList.XMilliseconds.table_detail",null,null,context.getFormattedValue(getObject("CF:UpdateInterval"),null),null,null,null,null,null,null,null,null,null));} %><% }}}}}}}} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CF:LastUpdateNull"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterList.Never.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CF:LastUpdate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CF:LastUpdate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% } %></td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %><td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.New.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="publish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.PublishNow.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% } %></tr>
</table> 
</td>
</tr>
<tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","CatalogFilters")}, 227); %></td>
</tr><% } else { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FindPerformed"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { %><td width="100%" class="table_detail w e s"><% {out.write(localizeISText("ChannelCatalogFilterList.ThereAreNoCatalogViewsMatchingYourQuery.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %> 
<td width="100%" class="table_detail w e s"><% {out.write(localizeISText("ChannelCatalogFilterList.ThereAreCurrentlyNoCatalogViewsDefinedIn.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOG_VIEWS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %><tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterList.New.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %><% } %></table><% out.print("</form>"); %><% printFooter(out); %>