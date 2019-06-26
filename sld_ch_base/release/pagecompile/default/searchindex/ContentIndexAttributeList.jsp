<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexAttributeList.PageComponentMapping.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-ContentSearchAttributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null)))),
new TagParameter("id",getObject("SearchIndex:IndexID")),
new TagParameter("text",getObject("SearchIndex:IndexID"))}, 2); %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><% {Object temp_obj = ("PageComponentMapping"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/SearchIndexTabs", null, "8");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<!-- Structural changes require an update of the SearchIndex --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("SearchIndex:isConsistent"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/SearchIndexInconsistentMessage", null, "19");} %></td>
</tr><% } %><!-- changes require an update of the SearchIndex --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("applyAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ContentIndexAttributeList.AttentionTheConfigurationOfTheIndexHasChanged.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
</table>
</td>
</tr><% } %></table><% URLPipelineAction action166 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null));String site166 = null;String serverGroup166 = null;String actionValue166 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null);if (site166 == null){  site166 = action166.getDomain();  if (site166 == null)  {      site166 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup166 == null){  serverGroup166 = action166.getServerGroup();  if (serverGroup166 == null)  {      serverGroup166 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageAttributeList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue166, site166, serverGroup166,true)); %><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 40.",e);}} %> 
<input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)%>" /> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 e w s">Pages
<input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeletePage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentIndexAttributeList.ContentAttributes.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","deletePage"),
new TagParameter("type","mdc")}, 51); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentIndexAttributeList.ContentAttributes.subject",null))),
new TagParameter("type","mde")}, 53); %><% } %><% } %><tr>
<td class="table_title_description w e">
The lists shows all pages that are currently indexed.
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
Click "New" to add pages to be indexed. Use the checkboxes and click "Delete" to remove pages from the list. Click on the page name or the "Edit"-link to configure the indexing of the page parameters.
<% } else { %>
Click on the page name or the "View"-link to view the indexing of the page parameters.
<% } %> 
</td>
</tr> 
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndexedPageEntryPoints") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><td class="table_header n e w s center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PageAttributeList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ContentIndexAttributeList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PageAttributeList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ContentIndexAttributeList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td> 
<td class="table_header n e s " nowrap="nowrap" >Page</td><% } else { %><td class="table_header aldi " nowrap="nowrap" >Page</td><% } %><td class="table_header n e s" nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap" width="5%"><% {out.write(localizeISText("ContentIndexAttributeList.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("IndexedPageEntryPoints","pd",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(pd:Id)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %></td> 
<td class="table_detail e s"><% } else { %><td class="table_detail w e s"><% } %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-EditPageIndexedParameters",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))).addURLParameter(context.getFormattedValue("SelectedPageUUID",null),context.getFormattedValue(getObject("pd:UUID"),null))),null)%>" ><% {String value = null;try{value=context.getFormattedValue(getObject("pd:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pd:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pd:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s center">
<a class="action_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-EditPageIndexedParameters",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))).addURLParameter(context.getFormattedValue("SelectedPageUUID",null),context.getFormattedValue(getObject("pd:UUID"),null))),null)%>" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentIndexAttributeList.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ContentIndexAttributeList.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>
</td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail n e w s" >Currently there are no pages that will be indexed.
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="newIndexedPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexAttributeList.New.button",null)),null)%>" /></td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndexedPageEntryPoints") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %> 
<td class="button"><input class="button" type="submit" name="confirmDeletePage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexAttributeList.Delete.button",null)),null)%>" /></td><% } %> 
</tr> 
</table> 
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action167 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null));String site167 = null;String serverGroup167 = null;String actionValue167 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null);if (site167 == null){  site167 = action167.getDomain();  if (site167 == null)  {      site167 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup167 == null){  serverGroup167 = action167.getServerGroup();  if (serverGroup167 == null)  {      serverGroup167 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ComponentAttributeList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue167, site167, serverGroup167,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 e w s"><% {out.write(localizeISText("ContentIndexAttributeList.ComponentTypes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)%>" />
</td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteComponent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentIndexAttributeList.ContentAttributes.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","deleteComponent"),
new TagParameter("type","mdc")}, 186); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentIndexAttributeList.ContentAttributes.subject",null))),
new TagParameter("type","mde")}, 188); %><% } %><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ContentIndexAttributeList.TheListsShowsAllComponentTypesThatAreCurrentlyIndexed.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentIndexAttributeList.ClickNewToAddComponentTypesToBeIndexed.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ContentIndexAttributeList.ClickOnTheComponentTypeNameOrTheViewLink.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",210,e);}if (_boolean_result) { %><td class="table_header n e w s center" nowrap="nowrap" width="80">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ComponentAttributeList','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ContentIndexAttributeList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ComponentAttributeList','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ContentIndexAttributeList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s " nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.ComponentType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header aldi " nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.ComponentType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header n e s" nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap" ><% {out.write(localizeISText("ContentIndexAttributeList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap" width="5%"><% {out.write(localizeISText("ContentIndexAttributeList.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("PageletDefinitions","pd",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {243}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(pd:QualifiedName)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",244,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pd:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {247}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %></td>
<td class="table_detail e s"><% } else { %><td class="table_detail w e s"><% } %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-EditIndexedParameters",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))).addURLParameter(context.getFormattedValue("PageletQName",null),context.getFormattedValue(getObject("pd:QualifiedName"),null))),null)%>" ><% {String value = null;try{value=context.getFormattedValue(getObject("pd:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pd:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("pd:Description:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s center">
<a class="action_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-EditIndexedParameters",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null))).addURLParameter(context.getFormattedValue("PageletQName",null),context.getFormattedValue(getObject("pd:QualifiedName"),null))),null)%>" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",264,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentIndexAttributeList.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ContentIndexAttributeList.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>
</td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail n e w s" ><% {out.write(localizeISText("ContentIndexAttributeList.CurrentlyThereAreNoComponentParametersIndexed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="newIndexedComponent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexAttributeList.New.button",null)),null)%>" /></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %> 
<td class="button"><input class="button" type="submit" name="confirmDeleteComponent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexAttributeList.Delete.button",null)),null)%>" /></td><% } %> 
</tr> 
</table> 
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "307");} %><% printFooter(out); %>