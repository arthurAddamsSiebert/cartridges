<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 3); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("ProductPage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.ProductPages.value",null))); getPipelineDictionary().put("Text_Heading", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.PageType.value",null))); getPipelineDictionary().put("Text_ColumnType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.HereYouCanSeeAllProductsThePageVariantIsAssignedTo.value",null))); getPipelineDictionary().put("Text_Description", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.NoProductsCouldBeFoundWhereThisPageVariantIsAssign.value",null))); getPipelineDictionary().put("Text_EmptyList", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.AreYouSureYouWantToUnassignThisPageVariantFromTheS.value",null))); getPipelineDictionary().put("Text_ConfirmUnassign", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.YouHaveNotSelectedAnyAssignmentsToBeDeletedU003cbr.value",null))); getPipelineDictionary().put("Text_NothingSelectedUnassign", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.YouHaveNotSelectedAnyProductsToBeEditedU003cbrU003.value",null))); getPipelineDictionary().put("Text_NothingSelectedEdit", temp_obj);} %><% } else { %> 
<% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.ProductIncludes.value",null))); getPipelineDictionary().put("Text_Heading", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.IncludeType.value",null))); getPipelineDictionary().put("Text_ColumnType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.HereYouCanSeeAllProductsTheComponentIsAssignedToCl.value",null))); getPipelineDictionary().put("Text_Description", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.NoProductsCouldBeFoundWhereThisComponentIsAssigned.value",null))); getPipelineDictionary().put("Text_EmptyList", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.AreYouSureYouWantToUnassignThisComponentFromTheSel.value",null))); getPipelineDictionary().put("Text_ConfirmUnassign", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.YouHaveNotSelectedAnyAssignmentsToBeDeletedU003cbr.value1",null))); getPipelineDictionary().put("Text_NothingSelectedUnassign", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.YouHaveNotSelectedAnyProductsToBeEditedU003cbrU003.value1",null))); getPipelineDictionary().put("Text_NothingSelectedEdit", temp_obj);} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("ProductPage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.ProductPages.value1",null))); getPipelineDictionary().put("Text_Heading", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.PageType.value1",null))); getPipelineDictionary().put("Text_ColumnType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.HereYouCanSeeAllProductsThePageVariantIsAssignedTo.value1",null))); getPipelineDictionary().put("Text_Description", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.NoProductsCouldBeFoundWhereThisPageVariantIsAssign.value1",null))); getPipelineDictionary().put("Text_EmptyList", temp_obj);} %><% } else { %> 
<% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.ProductIncludes.value1",null))); getPipelineDictionary().put("Text_Heading", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.IncludeType.value1",null))); getPipelineDictionary().put("Text_ColumnType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.HereYouCanSeeAllProductsTheComponentIsAssignedTo.value",null))); getPipelineDictionary().put("Text_Description", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletProductAssignments.NoProductsCouldBeFoundWhereThisComponentIsAssigned.value1",null))); getPipelineDictionary().put("Text_EmptyList", temp_obj);} %><% } %><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","Assignment"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("Assignment")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("key3","StartFlag"),
new TagParameter("value4",getObject("AssignmentType")),
new TagParameter("value3",getObject("StartFlag")),
new TagParameter("key4","AssignmentType"),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","PageletAssignmentsParams")}, 36); %><% {try{executePipeline("ViewPageletProductAssignments-TemplateCallback",((java.util.Map)(getObject("PageletAssignmentsParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 42.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 43); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TypeCheckPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","Locale"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("key3","AssignmentType"),
new TagParameter("value3",getObject("AssignmentType")),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","TypeCheckPipelineParameters")}, 45); %><% {try{executePipeline(context.getFormattedValue(getObject("TypeCheckPipeline"),null),((java.util.Map)(getObject("TypeCheckPipelineParameters"))),"TypeCheckPipelineResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 50.",e);}} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TypeCheckPipeline"))))).booleanValue() || ((Boolean) getObject("TypeCheckPipelineResult:Success")).booleanValue() || ((Boolean) (hasLoopElements("ProductAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("DisplayOptionContainerID",context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_DisplayOptions",null)))).addParameter(new ParameterEntry("DisplayOptionKey",context.getFormattedValue(getObject("AssignmentType"),null) + context.getFormattedValue("_Open",null)))))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 56.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("DisplayOption:Value"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {try{executePipeline("ViewDisplayOptions-SaveDisplayOptionToContainer",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("DisplayOptionContainerID",context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_DisplayOptions",null)))).addParameter(new ParameterEntry("DisplayOptionKey",context.getFormattedValue(getObject("AssignmentType"),null) + context.getFormattedValue("_Open",null))).addParameter(new ParameterEntry("DisplayOptionValue","true"))))),"DC");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 58.",e);}} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("DisplayOption:Value")); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } %><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_title2 left aldi">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue(context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_DisplayOptions",null),null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue(context.getFormattedValue(getObject("AssignmentType"),null) + context.getFormattedValue("_Open",null),null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue((((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ,null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue("ViewPagelet-View",null)).addURLParameter(context.getFormattedValue("ContextPipeline_SelectedTab",null),context.getFormattedValue("Assignments",null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null)%>" 
class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>table_opened<% } else { %>table_closed<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Text_Heading"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
(<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAssignments:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
</a>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% URLPipelineAction action353 = new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletProductAssignments-Dispatch",null)))),null) + context.getFormattedValue("#",null) + context.getFormattedValue(getObject("AssignmentType"),null),null));String site353 = null;String serverGroup353 = null;String actionValue353 = context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletProductAssignments-Dispatch",null)))),null) + context.getFormattedValue("#",null) + context.getFormattedValue(getObject("AssignmentType"),null),null);if (site353 == null){  site353 = action353.getDomain();  if (site353 == null)  {      site353 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup353 == null){  serverGroup353 = action353.getServerGroup();  if (serverGroup353 == null)  {      serverGroup353 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletProductAssignments-Dispatch",null)))),null) + context.getFormattedValue("#",null) + context.getFormattedValue(getObject("AssignmentType"),null),null));out.print("\"");out.print(" name=\"");out.print("Product_PageAssignmentsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue353, site353, serverGroup353,true)); %><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
<table width="100%" cellspacing="0" cellpadding="0" border="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("FirstTimeInteraction")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:confirmUnassign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageProductAssignmentsClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletProductAssignments.Page.subject",null))),
new TagParameter("cancelbtnname","cancelUnassign"),
new TagParameter("okbtnname","unassign"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("Text_ConfirmUnassign"))}, 84); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletProductAssignments.Page.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",getObject("Text_NothingSelectedUnassign"))}, 87); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:editSelectedAssignments"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("PageCategoryAssignmentsClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletProductAssignments.Page.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",getObject("Text_NothingSelectedEdit"))}, 93); %><% } %> 
<% }} %><% } %><tr>
<td class="table_title_description w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Text_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";out.write(value);} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","AssignmentsFormValuesMap"),
new TagParameter("key0","ContentRepository"),
new TagParameter("value1",getObject("Result:AssignmentsFormValuesMap")),
new TagParameter("value0",getObject("ContentRepository")),
new TagParameter("mapname","Params")}, 105); %><% {try{executePipeline("ViewPageletProductAssignments-PrepareSearchMask",((java.util.Map)(getObject("Params"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 108.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 109); %><% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("parametervalue5","ProductAssignmentsList"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Assignment:UUID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("parametername3","AssignmentUUID"),
new TagParameter("pipeline","ViewPageletProductAssignments-Dispatch"),
new TagParameter("embeddedinform","true"),
new TagParameter("searchtype",getObject("SearchType")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","PageLocatorName")}, 111); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 120); %> 
<% } else { %><input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="AssignmentType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><table cellspacing="0" cellpadding="0" border="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><td nowrap="nowrap" width="80" class="table_header w e s">
<div id="Product_E">
<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('Product_PageAssignmentsForm','SelectedObjectUUID','Product_E','Product_F');"><% {out.write(localizeISText("PageletProductAssignments.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div style="display: none;" id="Product_F">
<table cellspacing="0" cellpadding="0" border="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a class="tableheader" href="javascript:selectAll('Product_PageAssignmentsForm','SelectedObjectUUID','Product_E','Product_F');"><% {out.write(localizeISText("PageletProductAssignments.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap" ><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("parametervalue5",getObject("Assignment:UUID")),
new TagParameter("sortbyvalue","name"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("columnname","Product Name"),
new TagParameter("arametervalue6","SearchType"),
new TagParameter("pipeline","ViewPageletProductAssignments-Sort"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("dictionary",getObject("Result")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","AssignmentUUID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername6","SearchType")}, 148); %></td>
<td class="table_header e s" width="10%" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("parametervalue5",getObject("Assignment:UUID")),
new TagParameter("sortbyvalue","sku"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("sortbyalias","SortBy"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("columnname","ID"),
new TagParameter("arametervalue6","SearchType"),
new TagParameter("pipeline","ViewPageletProductAssignments-Sort"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("dictionary",getObject("Result")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","AssignmentUUID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername6","SearchType")}, 151); %></td>
<td class="table_header e s" width="15%" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("parametervalue5",getObject("Assignment:UUID")),
new TagParameter("sortbyvalue","type"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("sortbyalias","SortAssignmentsBy"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("columnname","Type"),
new TagParameter("arametervalue6","SearchType"),
new TagParameter("pipeline","ViewPageletProductAssignments-Sort"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("dictionary",getObject("Result")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","AssignmentUUID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername6","SearchType")}, 154); %></td>
<td class="table_header e s" width="150" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("parametervalue5",getObject("Assignment:UUID")),
new TagParameter("sortbyvalue","validfrom"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("sortbyalias","SortAssignmentsBy"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("columnname","Visible From"),
new TagParameter("arametervalue6","SearchType"),
new TagParameter("pipeline","ViewPageletProductAssignments-Sort"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("dictionary",getObject("Result")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","AssignmentUUID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername6","SearchType")}, 157); %></td>
<td class="table_header e s" width="150" nowrap="nowrap"><% processOpenTag(response, pageContext, "sortingurl", new TagParameter[] {
new TagParameter("parametervalue5",getObject("Assignment:UUID")),
new TagParameter("sortbyvalue","validto"),
new TagParameter("parametervalue4",getObject("AssignmentType")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1","PageletUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Pagelet:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("sortbyalias","SortAssignmentsBy"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("columnname","Visible Until"),
new TagParameter("arametervalue6","SearchType"),
new TagParameter("pipeline","ViewPageletProductAssignments-Sort"),
new TagParameter("sortdirectionalias","SortDirection"),
new TagParameter("dictionary",getObject("Result")),
new TagParameter("parametername4","AssignmentType"),
new TagParameter("parametername5","AssignmentUUID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername6","SearchType")}, 160); %></td>
<td class="table_header e s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PageletProductAssignments.Priority.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductAssignments","Assignment",null)) { %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("FromClass",getObject("Assignment:From:Class:Name")),
new TagParameter("ContextObject",getObject("Assignment:To")),
new TagParameter("Domain",getObject("ContentRepository:RepositoryDomain"))}, 166); %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><td nowrap="nowrap" class="table_detail w e s top center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Assignment:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>disabled="disabled"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageProductAssignmentsClipboard:contains(Assignment:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>checked="checked"
<% }} %>
/>
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } %><% processOpenTag(response, pageContext, "getpageletentrypointproductassignment", new TagParameter[] {
new TagParameter("PageletEntryPointProductAssignment","ProductAssignment"),
new TagParameter("PageletEntryPoint",getObject("Assignment:To")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 178); %><td nowrap="nowrap" class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductAssignment:To:UUID"),null)))),null)%>" class="table_detail_link"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductAssignment:To:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductAssignment:To:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% processOpenTag(response, pageContext, "contentelementtooltip", new TagParameter[] {
new TagParameter("ContentElement",getObject("ProductAssignment:From"))}, 186); %>&nbsp;<% processOpenTag(response, pageContext, "pageletassignmentstatus", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 186); %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductAssignment:To:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% processOpenTag(response, pageContext, "contentelementtooltip", new TagParameter[] {
new TagParameter("ContentElement",getObject("ProductAssignment:From"))}, 188); %>&nbsp;<% processOpenTag(response, pageContext, "pageletassignmentstatus", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 188); %><% } %></td>
<td nowrap="nowrap" class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductAssignment:To:UUID"),null)))),null)%>" class="table_detail_link"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductAssignment:To:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductAssignment:To:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductAssignment:To:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td nowrap="nowrap" class="table_detail e s"><% processOpenTag(response, pageContext, "viewcontextinclusiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPointAssignment",getObject("ProductAssignment"))}, 204); %></td>
<td nowrap="nowrap" class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletAssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletvisiblefrom", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment"))}, 208); %></a><% } else { %><% processOpenTag(response, pageContext, "pageletvisiblefrom", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment"))}, 210); %><% } %></td>
<td nowrap="nowrap" class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletAssignment-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletAssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletvisibleto", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment"))}, 215); %></a><% } else { %><% processOpenTag(response, pageContext, "pageletvisibleto", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("Assignment"))}, 217); %><% } %></td>
<td nowrap="nowrap" class="table_detail e s"><% processOpenTag(response, pageContext, "positiontext", new TagParameter[] {
new TagParameter("Assignment",getObject("Assignment"))}, 220); %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="9"><% {String value = null;try{value=context.getFormattedValue(getObject("Text_EmptyList"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td align="left" class="w s"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editAllAssignments" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignments.EditAll.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="editSelectedAssignments" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignments.EditSelected.button",null)),null)%>" class="button"/></td>
</tr>
</table><% } else { %>
&nbsp;
<% } %></td>
<td class="e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignments.Assign.button",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignments.Unassign.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","ProductAssignments"),
new TagParameter("variablepagesize","false")}, 261); %><% out.print("</form>"); %><% } %><% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("AssignmentTargetsAvailable", temp_obj);} %><% } else { %><% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("AssignmentTargetsAvailable", temp_obj);} %><% } %><% printFooter(out); %>