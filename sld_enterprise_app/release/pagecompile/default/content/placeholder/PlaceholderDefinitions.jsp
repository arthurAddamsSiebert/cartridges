<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><% processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 5); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("PermissionMap","PermissionMap")}, 6); %><% {Object temp_obj = (getObject("PlaceholderUtils:PlaceholderDefinitionsByPagelet(Pagelet,Locale)")); getPipelineDictionary().put("PlaceholderDefinitions", temp_obj);} %><% {Object temp_obj = (getObject("PlaceholderUtils:PositionableHelper(Pagelet)")); getPipelineDictionary().put("PositionableHelper", temp_obj);} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","Pagelet"),
new TagParameter("value1",getObject("Repository")),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","ProcessPlaceholderDefinitionMap")}, 9); %><% {try{executePipeline("ViewPageletPlaceholderDefinition-TemplateCallback",((java.util.Map)(getObject("ProcessPlaceholderDefinitionMap"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 12.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 13); %><% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("Result","IsPageletEditable")}, 13); %><% {Object temp_obj = ((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("PageletReadOnly", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Pagelet:Page"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getassignmentutils", new TagParameter[] {
new TagParameter("AssignmentUtils","AssignmentUtils")}, 16); %><% {Object temp_obj = (getObject("AssignmentUtils:ResolveTo(Pagelet:ParentSlotPageletAssignmentPOs)")); getPipelineDictionary().put("AssignedSlots", temp_obj);} %><% {Object temp_obj = (getObject("AssignmentUtils:ResolveTo(Pagelet:PageletAssignmentPOs)")); getPipelineDictionary().put("AssignedPlaceholders", temp_obj);} %><% } %><% URLPipelineAction action427 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null)))),null));String site427 = null;String serverGroup427 = null;String actionValue427 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null)))),null);if (site427 == null){  site427 = action427.getDomain();  if (site427 == null)  {      site427 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup427 == null){  serverGroup427 = action427.getServerGroup();  if (serverGroup427 == null)  {      serverGroup427 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageletPlaceholderDefForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue427, site427, serverGroup427,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="top n w e">
<tr>
<td class="table_title2"><% {out.write(localizeISText("PlaceholderDefinitions.OutgoingPlaceholders.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("Result:confirmDelete")))).booleanValue() && ((Boolean) getObject("Result:ContainerReadFirstTime")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:PlaceholderDefinitionClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PlaceholderDefinitions.Page.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("okbtnclass","sfe-action-inline sfe-layout-change"),
new TagParameter("message",localizeText(context.getFormattedValue("PlaceholderDefinitions.AreYouSureThatYouWantToDeleteTheSelectedPlaceholde.message",null))),
new TagParameter("type","mdc"),
new TagParameter("class","n"),
new TagParameter("cancelbtnclass","sfe-action-inline")}, 27); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PlaceholderDefinitions.Page.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","n")}, 30); %><% } %><% } %><td class="table_title_description n s"><% {out.write(localizeISText("PlaceholderDefinitions.TheListShowsAllOutgoingPlaceholdersTheSortOrderDef.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PlaceholderDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td nowrap="nowrap" width="80" class="table_header e s">
<div id="A_PlaceholderDefs">
<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('PageletPlaceholderDefForm','SelectedObjectUUID','A_PlaceholderDefs','B_PlaceholderDefs');"><% {out.write(localizeISText("PlaceholderDefinitions.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div style="display: none;" id="B_PlaceholderDefs">
<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('PageletPlaceholderDefForm','SelectedObjectUUID','A_PlaceholderDefs','B_PlaceholderDefs');"><% {out.write(localizeISText("PlaceholderDefinitions.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td nowrap="nowrap" class="table_header e s" ><% {out.write(localizeISText("PlaceholderDefinitions.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_header e s" ><% {out.write(localizeISText("PlaceholderDefinitions.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_header e s" ><% {out.write(localizeISText("PlaceholderDefinitions.AssignedTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_header s" ><% {out.write(localizeISText("PlaceholderDefinitions.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("PlaceholderDefinitions","PlaceholderDefinition",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td nowrap="nowrap" class="table_detail e s middle center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Result:PlaceholderDefinitionClipboard:contains(PlaceholderDefinition:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } %><td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 70); %></a></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletModelUtils:SlotDefinition(PlaceholderDefinition:DefinitionQualifiedName,PageletModelRepository),Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PlaceholderDefinition:TargetPlaceholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition:TargetPlaceholder"))}, 74); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PlaceholderDefinition:TargetSlot"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition:TargetSlot"))}, 76); %><% }} %><td class="table_detail s top center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PositionableHelper:PositionablesCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PlaceholderDefinition:Domain:UUID"),null).equals(context.getFormattedValue(getObject("Repository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!((Boolean) (getObject("PageletReadOnly"))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PlaceholderDefinition:Position")).doubleValue() ==((Number)(getObject("PositionableHelper:MaxPosition"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><button name="moveUp" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.button",null)),null)%>" class="action_button"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/nav_up_arrow.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.title",null)),null)%>" border="0"/></button><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PlaceholderDefinition:Position")).doubleValue() ==((Number)(getObject("PositionableHelper:MinPosition"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><button name="moveDown" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.button",null)),null)%>" class="action_button"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/nav_down_arrow.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.title",null)),null)%>" border="0"/></button><% } else { %> 
<button name="moveUp" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.button",null)),null)%>" class="action_button"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/nav_up_arrow.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveUp.title",null)),null)%>" border="0"/></button><br/>
<button name="moveDown" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.button",null)),null)%>" class="action_button"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/nav_down_arrow.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.MoveDown.title",null)),null)%>" border="0"/></button><% }} %><% } else { %>&nbsp;<% } %> 
</td>
</tr><% } %></table><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e">
<tr>
<td class="table_detail s"><% {out.write(localizeISText("PlaceholderDefinitions.ThereAreNoPlaceholdersToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td>
<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.New.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((hasLoopElements("PlaceholderUtils:MappedPlaceholders(AssignedPlaceholders)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((hasLoopElements("PlaceholderUtils:MappedSlots(AssignedSlots)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("PageletReadOnly"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="button sfe-action-dialog"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PlaceholderDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitions.Delete.button",null)),null)%>" class="button sfe-action-inline" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% printFooter(out); %>