<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","StartFlag"),
new TagParameter("key2","TargetViewPipeline"),
new TagParameter("key0","ContentRepository"),
new TagParameter("value2",getObject("TargetViewPipeline")),
new TagParameter("value1",getObject("StartFlag")),
new TagParameter("key3","TargetViewPipelineParams"),
new TagParameter("value3",getObject("TargetViewPipelineParams")),
new TagParameter("value0",getObject("ContentRepository")),
new TagParameter("mapname","SearchStateParams")}, 4); %><% {try{executePipeline("ViewViewContextSearch-PrepareSearchState",((java.util.Map)(getObject("SearchStateParams"))),"SearchStateDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Locale"),
new TagParameter("key2","SortBy"),
new TagParameter("value5",getObject("PageletModelRepository")),
new TagParameter("key0","ContentRepository"),
new TagParameter("value2",getObject("SortBy")),
new TagParameter("key5","PageletModelRepository"),
new TagParameter("value1",getObject("Locale")),
new TagParameter("key3","SortDirection"),
new TagParameter("value4",getObject("PerformSearch")),
new TagParameter("value3",getObject("SortDirection")),
new TagParameter("key4","PerformSearch"),
new TagParameter("mapname","SearchParams"),
new TagParameter("value0",getObject("ContentRepository"))}, 12); %><% {try{executePipeline("ViewViewContextSearch-GetPageable",((java.util.Map)(getObject("SearchParams"))),"SearchResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 19.",e);}} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 21); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 22); %><%@page import="java.util.TreeSet"%><%@page import="java.text.Collator"%><%@page import="com.intershop.beehive.emf.core.GroupableElement"%><%@page import="com.intershop.sellside.pmc.capi.PageletModelUtils"%><% TreeSet<String> groups = new TreeSet<String>(Collator.getInstance(getRequest().getLocale().getJavaLocale())); %><% while (loop("PageletModelUtils:PageContextObjectRelations(PageletModelRepository)","ContextObjectRelation",null)) { %><% 
		String g = PageletModelUtils.INSTANCE.getDisplayGroup((GroupableElement)getObject("ContextObjectRelation"),getRequest().getLocale());
		if (g != null)
		{
			groups.add(g);
		}
	%><% } %><% while (loop("PageletModelUtils:ComponentContextObjectRelations(PageletModelRepository)","ContextObjectRelation",null)) { %><% 
		String g = PageletModelUtils.INSTANCE.getDisplayGroup((GroupableElement)getObject("ContextObjectRelation"),getRequest().getLocale());
		if (g != null)
		{
			groups.add(g);
		}
	%><% } %><% getPipelineDictionary().put("groups", groups); %><% URLPipelineAction action386 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextSearch-Dispatch",null)))),null));String site386 = null;String serverGroup386 = null;String actionValue386 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextSearch-Dispatch",null)))),null);if (site386 == null){  site386 = action386.getDomain();  if (site386 == null)  {      site386 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup386 == null){  serverGroup386 = action386.getServerGroup();  if (serverGroup386 == null)  {      serverGroup386 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextSearch-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ViewContextSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue386, site386, serverGroup386,true)); %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("HeaderTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("HeaderTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("HeaderTemplate"),null), null, "58");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchHeader", null, "60");} %><% } %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("ViewContextSearch.SearchPanel.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0">
<tr>
<td class="label" nowrap="nowrap">
<label class="label label_light" for="ViewContextSearch_NameOrID"><% {out.write(localizeISText("ViewContextSearch.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" name="ViewContextSearch_NameOrID" id="ViewContextSearch_NameOrID" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchResultDict:ViewContextSearch_NameOrID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_NameOrID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" style="width:225px;" />&#160;
<!--[if IE]><input type="text" style="display: none;" disabled="disabled"/><![endif]-->
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="ViewContextSearch_Group"><% {out.write(localizeISText("ViewContextSearch.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<select name="ViewContextSearch_Group" id="ViewContextSearch_Group" class="select inputfield_en" style="max-width:225px;">
<option value=""><% {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("groups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% while (loop("groups","group",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("group"),null).equals(context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_Group"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
<td/>
<td class="label_select" nowrap="nowrap">
<label class="label label_select label_light label_horizontal_align" for="ViewContextSearch_Type"><% {out.write(localizeISText("ViewContextSearch.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<select class="select inputfield_en" name="ViewContextSearch_Type" id="ViewContextSearch_Type" style="max-width:225px;">
<option value=""><% {out.write(localizeISText("ViewContextSearch.All.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<optgroup label="Category - Page"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Category"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","true"),
new TagParameter("SelectedContextObjectRelation",getObject("SearchResultDict:ViewContextSearch_Type"))}, 109); %></optgroup>
<optgroup label="Product - Page"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","true"),
new TagParameter("SelectedContextObjectRelation",getObject("SearchResultDict:ViewContextSearch_Type"))}, 112); %></optgroup>
<optgroup label="Category - Include"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Category"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","false"),
new TagParameter("SelectedContextObjectRelation",getObject("SearchResultDict:ViewContextSearch_Type"))}, 115); %></optgroup>
<optgroup label="Product - Include"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","false"),
new TagParameter("SelectedContextObjectRelation",getObject("SearchResultDict:ViewContextSearch_Type"))}, 118); %></optgroup>
</select>
<td/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_horizontal_align" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("PageletEntryPointSearchMask.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 125); %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SearchStateDict:SharingContentDomains:isEmpty"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSearch.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% } %></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SearchStateDict:SharingContentDomains:isEmpty")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><tr>
<td class="label_radio" nowrap="nowrap">
<label class="label label_light label_radio"><% {out.write(localizeISText("ViewContextSearch.Sharing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio">
<input type="radio" name="ViewContextSearch_SharingSearchType" id="ViewContextSearch_SharingSearchType_All" value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SearchResultDict:ViewContextSearch_SharingSearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_SharingSearchType"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio">
<label class="label label_radio label_light label_horizontal" for="ViewContextSearch_SharingSearchType_All"><% {out.write(localizeISText("ViewContextSearch.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="input_radio">
<input type="radio" name="ViewContextSearch_SharingSearchType" id="ViewContextSearch_SharingSearchType_Locale"value="local" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_SharingSearchType"),null).equals(context.getFormattedValue("local",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio">
<label class="label label_radio label_light label_horizontal" for="ViewContextSearch_SharingSearchType_Locale"><% {out.write(localizeISText("ViewContextSearch.Local.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="input_radio">
<input type="radio" name="ViewContextSearch_SharingSearchType" id="ViewContextSearch_SharingSearchType_SharedFrom" value="sharedFromRepository" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_SharingSearchType"),null).equals(context.getFormattedValue("sharedFromRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio">
<label class="label label_radio label_light label_horizontal" for="ViewContextSearch_SharingSearchType_SharedFrom" style="padding-right:"><% {out.write(localizeISText("ViewContextSearch.SharedFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td>
<select name="ViewContextSearch_SharedRepositoryDomainID" class="select inputfield_en" style="width:200;">
<option value="all"><% {out.write(localizeISText("ViewContextSearch.All.option2",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("SearchStateDict:SharingContentDomains","sharingDomain",null)) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","sharingDomainDisplayName"),
new TagParameter("contentDomain",getObject("sharingDomain"))}, 178); %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sharingDomain:UUID"),null).equals(context.getFormattedValue(getObject("SearchResultDict:ViewContextSearch_SharedRepositoryDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomainDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSearch.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchResultDict:ViewContexts")))).booleanValue() && ((Boolean) (hasLoopElements("SearchResultDict:ViewContexts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
<thead><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %><tr>
<td colspan="6"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SubmitButtonsTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("SubmitButtonsTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SubmitButtonsTemplate"),null), null, "213");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchSubmitButtons", null, "215");} %><% } %></td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %><th class="table_header w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ViewContextSearch','SelectedViewContextUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ViewContextSearch.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"> 
<a href="javascript:selectAll('ViewContextSearch','SelectedViewContextUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ViewContextSearch.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewViewContextSearch-Sort"),
new TagParameter("parametervalue",getObject("ContentRepository:UUID")),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","Name"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("parametername","ContentRepositoryUUID"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","Name")}, 243); %></th><% } else { %><th class="table_header w e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewViewContextSearch-Sort"),
new TagParameter("parametervalue",getObject("ContentRepository:UUID")),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","Name"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("parametername","ContentRepositoryUUID"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","Name")}, 247); %></th><% } %> 
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewViewContextSearch-Sort"),
new TagParameter("parametervalue",getObject("ContentRepository:UUID")),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","ID"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("parametername","ContentRepositoryUUID"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","ID")}, 251); %></th>
<th class="table_header e s"><% {out.write(localizeISText("ViewContextSearch.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewViewContextSearch-Sort"),
new TagParameter("parametervalue",getObject("ContentRepository:UUID")),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","Group"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("parametername","ContentRepositoryUUID"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","Group")}, 257); %></th>
<th class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("pipeline","ViewViewContextSearch-Sort"),
new TagParameter("parametervalue",getObject("ContentRepository:UUID")),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("sortbyvalue","Type"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("sortdirectionvalues","asc,desc"),
new TagParameter("parametername","ContentRepositoryUUID"),
new TagParameter("style","tableheader"),
new TagParameter("columnname","Type")}, 260); %></th>
</tr>
</thead>
<tbody><% while (loop("SearchResultDict:ViewContexts","ViewContext",null)) { %><tr><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","LockingDomain"),
new TagParameter("key0","ViewContext"),
new TagParameter("value2",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("key3","User"),
new TagParameter("value3",getObject("CurrentUser")),
new TagParameter("value0",getObject("ViewContext")),
new TagParameter("mapname","ViewContextLockParams")}, 267); %><% {try{executePipeline("ViewViewContext-LookupViewContextLock",((java.util.Map)(getObject("ViewContextLockParams"))),"ViewContextLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 272.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ViewContextLockInfoDictionary:ViewContextLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",274,e);}if (_boolean_result) { %><% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisableViewContextAttribute", temp_obj);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("DisableViewContextAttribute", temp_obj);} %><% } else { %><% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisableViewContextAttribute", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %> 
<td class="w e s center">
<input type="checkbox" name="SelectedViewContextUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ViewContext:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ViewContext:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>checked="checked"<% } %> <% {String value = null;try{value=context.getFormattedValue(getObject("DisableViewContextAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
<input type="hidden" name="AllViewContextUUIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {287}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&#160;
</td>
<td class="table_detail e s" nowrap="nowrap"><% } else { %><td class="table_detail w e s" nowrap="nowrap"><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("ViewContext")),
new TagParameter("Locale",getObject("Locale"))}, 294); %></a><% processOpenTag(response, pageContext, "contentelementtooltip", new TagParameter[] {
new TagParameter("ContentElement",getObject("ViewContext"))}, 296); %>
&nbsp;<% processOpenTag(response, pageContext, "viewcontextstatus", new TagParameter[] {
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 297); %></td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "cropstring", new TagParameter[] {
new TagParameter("CropString","..."),
new TagParameter("String",getObject("ViewContext:Id")),
new TagParameter("MaxLength",new Double(23))}, 301); %></a>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {305}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(ViewContext:ContextObjectRelation,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {308}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ViewContext:ContextObjectRelation,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {311}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></tbody>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",318,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SubmitButtonsTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("SubmitButtonsTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SubmitButtonsTemplate"),null), null, "320");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchSubmitButtons", null, "322");} %><% } %><% } %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","SearchResultDict:ViewContexts")}, 326); %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NoResultTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("NoResultTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",329,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("NoResultTemplate"),null), null, "330");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchNoResult", null, "332");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SubmitButtonsTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("SubmitButtonsTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",334,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SubmitButtonsTemplate"),null), null, "335");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchSubmitButtons", null, "337");} %><% } %><% } %><% out.print("</form>"); %><% printFooter(out); %>