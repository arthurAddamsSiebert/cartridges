<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelMassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("OrganizationSearchIndexList.MassDataTasks.text",null)))}, 3); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("OrganizationSearchIndexList.MassDataTasks.text1",null)))}, 5); %> 
<% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("OrganizationSearchIndexList.SearchIndexes.text",null)))}, 7); %><script type="text/javascript" language="javascript">
function getIndexPrefixName(prefix){
if(prefix == 'update'){
document.forms.SearchIndexList.ProcessDescriptionText.value = document.forms.SearchIndexList.UpdateProcessDescription.value;
}
else{
document.forms.SearchIndexList.ProcessDescriptionText.value = document.forms.SearchIndexList.RebuildProcessDescription.value;
}
}
</script><% URLPipelineAction action575 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));String site575 = null;String serverGroup575 = null;String actionValue575 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null);if (site575 == null){  site575 = action575.getDomain();  if (site575 == null)  {      site575 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup575 == null){  serverGroup575 = action575.getServerGroup();  if (serverGroup575 == null)  {      serverGroup575 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchIndexList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue575, site575, serverGroup575,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("OrganizationSearchIndexList.SearchIndexes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_DeleteSearchIndex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.SomeOfTheSelectedSearchIndexesCouldNotBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NotSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.YouHaveNotSelectedAnyIndex.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_RebuildIndex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERROR_RebuildIndex"),null).equals(context.getFormattedValue("NothingSelected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.YouHaveNotSelectedAnyIndexToRebuildUseTheCheckbox.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERROR_RebuildIndex"),null).equals(context.getFormattedValue("NotConsistent",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.IndexIsNotConsistentPleaseRebuildIndex.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ERROR_RebuildIndex"),null).equals(context.getFormattedValue("AlreadyRunning",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.ThereIsAnAlreadyRunningIndexingProcessForSelectedI.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td><% } else { %><td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.SomeOfSelectedIndexesCouldNotBeRebuild.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}} %></tr>
</table>
</td>
</tr> 
<% } %><!-- end error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("EnabledIndexTypes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("SearchIndexCreateable", temp_obj);} %><% while (loop("EnabledIndexTypes","IndexType",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IndexType:Shared"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("SearchIndexCreateable", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexCreateable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexList.ThereAreSharedSearchServicesButNoSearchServiceToMa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
</table>
</td>
</tr> 
<% } %><% } %><!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Searchindex.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 109); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Searchindex.subject",null))),
new TagParameter("type","mde")}, 111); %><% } %><% } %><tr>
<td class="table_title_description e w"><% {out.write(localizeISText("OrganizationSearchIndexList.TheListShowsAllSearchIndexes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% {Object temp_obj = ("false"); getPipelineDictionary().put("SelectableIndexes", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("EnabledFeatureIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("OrganizationSearchIndexList.CurrentlyThereAreNoSearchServicesEnabledPleaseEnab.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("SearchIndexes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("OrganizationSearchIndexList.CurrentlyThereAreNoSearchIndexesDefinedForThisOrga.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SEARCH_INDEXES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><td class="table_header aldi center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SearchIndexList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SearchIndexList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header aldi" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.ID.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.Locale.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.Size.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexList.LastUpdate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SearchIndexes","SearchIndex",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SEARCH_INDEXES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><td class="table_detail w e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(SearchIndex:IndexID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %> checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndex:Shared")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchIndex:Shared"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("SelectableIndexes", temp_obj);} %><% } %> 
/>
</td>
<td class="table_detail e s"><% } else { %><td class="table_detail w e s"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("SearchIndex:isConsistent"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif" alt="<% {out.write(localizeISText("searchindex.status.inconsistent.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("searchindex.status.inconsistent.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;
<% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-General",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SearchIndex:Configuration:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Online.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SearchIndex:Shared"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/service-shared.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Shared.alt",null)),null)%>" border="0">&nbsp;<% } %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:SearchIndexFeature:FeatureID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:FeatureID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:SearchEngineName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:FeatureID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Configuration:Locale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Status"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Status:Size"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Status:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Status:SizeUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("OrganizationSearchIndexList.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% processOpenTag(response, pageContext, "fileinfo", new TagParameter[] {
new TagParameter("infotype","Size"),
new TagParameter("file",getObject("SearchIndex:DataFile"))}, 220); %><% } %>&nbsp;
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Status"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Status:LastUpdate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Status:LastUpdate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Status:LastUpdate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("OrganizationSearchIndexList.NA.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% processOpenTag(response, pageContext, "fileinfo", new TagParameter[] {
new TagParameter("infotype","LastModified"),
new TagParameter("file",getObject("SearchIndex:DataFile"))}, 231); %><% } %>&nbsp;
</td>
</tr><% } %></table><% } %><% } %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && ((Boolean) (hasLoopElements("EnabledFeatureIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (hasLoopElements("EnabledIndexTypes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchIndexCreateable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %><input type="submit" name="newindex" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.New.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="newindex" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.New.button",null)),null)%>" class="button" disabled="disabled" /><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (hasLoopElements("SearchIndexes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectableIndexes"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="rebuildSelected" onclick="getIndexPrefixName('rebuild');" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Build.button",null)),null)%>" class="button"/>
<input type="hidden" name="RebuildProcessDescription" value="<% {out.write(localizeISText("OrganizationSearchIndexList.RebuildSearchIndex",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/>
<input type="hidden" name="UpdateProcessDescription" value="<% {out.write(localizeISText("OrganizationSearchIndexList.UpdateSearchIndex",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/>
<input type="hidden" name="ProcessDescriptionText" value=""/>
<input type="hidden" name="SelectedMenuItem" value="MassDataTasks"/>
</td>
<td class="button"><input type="submit" name="updateSearchIndexesData" onclick="getIndexPrefixName('update');" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Update.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexList.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "274");} %><% printFooter(out); %>