<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: NewContentEntryPointPageletAssignment.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><div class="sfe-dialog-entrypoint"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","OwningPagelet4Placeholder"),
new TagParameter("key0","OwningPagelet4Slot"),
new TagParameter("value1",getObject("ContextObject:Template:UUID")),
new TagParameter("value0",getObject("ContextObject:ParentPagelet:UUID")),
new TagParameter("mapname","ExcludedPageletMap")}, 7); %><% processOpenTag(response, pageContext, "pagelettemplateassignmentallowed", new TagParameter[] {
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("Result","PageletTemplateAssignmentAllowed")}, 11); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletTemplateAssignmentAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletTemplateAssignmentAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = ("radio_templates_pagelets"); getPipelineDictionary().put("SelectionType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.AssignComponentComponentTemplate.value",null))); getPipelineDictionary().put("Title_Text", temp_obj);} %><% } else { %><% {Object temp_obj = ("radio_pagelets"); getPipelineDictionary().put("SelectionType", temp_obj);} %><% {Object temp_obj = (localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.AssignComponent.value",null))); getPipelineDictionary().put("Title_Text", temp_obj);} %><% } %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-BackToAssign",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("ContextType",null),context.getFormattedValue(getObject("ContextType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",getObject("Title_Text"))}, 21); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n e s w">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Title_Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoValidPageSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("NewContentEntryPointPageletAssignment.TheAssignmentsCouldNotBeCreatedYouHaveToSelectedAC.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="e s w">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("NewContentEntryPointPageletAssignment.SelectAComponentComponentTemplateClickAssignToAssi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action338 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-Dispatch",null)))),null));String site338 = null;String serverGroup338 = null;String actionValue338 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-Dispatch",null)))),null);if (site338 == null){  site338 = action338.getDomain();  if (site338 == null)  {      site338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup338 == null){  serverGroup338 = action338.getServerGroup();  if (serverGroup338 == null)  {      serverGroup338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentPageTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue338, site338, serverGroup338,true)); %><!-- Error Handling --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "47");} %><!-- EO Error Handling --><% processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("Locale")),
new TagParameter("AssignToObjectName",getObject("ContextObjectName")),
new TagParameter("IsPage","false"),
new TagParameter("ShowHeading","true"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("AssignToObject",getObject("ContextObject"))}, 49); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedPageletUUID")); getPipelineDictionary().put("SelectedPageletTemplateUUID", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletTemplateUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedPageletTemplateUUID")); getPipelineDictionary().put("SelectionValue", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletDefinitionQualifiedName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedPageletDefinitionQualifiedName")); getPipelineDictionary().put("SelectionValue", temp_obj);} %><% }} %><% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ExcludedPagelets",getObject("ExcludedPageletMap:Values")),
new TagParameter("parametervalue5","NewContentEntryPointPageletAssignment"),
new TagParameter("parametervalue4",getObject("ContextObjectUUID")),
new TagParameter("parametername0","ContentRepositoryUUID"),
new TagParameter("parametervalue3",getObject("ContextType")),
new TagParameter("parametername1","SelectedPageletTemplateUUID"),
new TagParameter("parametervalue2",getObject("SelectedPageletDefinitionQualifiedName")),
new TagParameter("parametervalue1",getObject("SelectedPageletTemplateUUID")),
new TagParameter("parametername2","SelectedPageletDefinitionQualifiedName"),
new TagParameter("SelectionName","SelectedPageletUUID"),
new TagParameter("parametervalue0",getObject("ContentRepository:UUID")),
new TagParameter("parametername3","ContextType"),
new TagParameter("SelectionListing","true"),
new TagParameter("ContextPipeline","ViewContentEntryPointPageletAssignments-NewAssignment"),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("PageFlag",getObject("PageFlag")),
new TagParameter("SelectionType",getObject("SelectionType")),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("SelectionValue",getObject("SelectionValue")),
new TagParameter("parametername4","ContextObjectUUID"),
new TagParameter("parametername5","UniquePageletSearchID")}, 65); %><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("NewContentEntryPointPageletAssignment.ThereAreNoTemplatesToSelectFrom.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContextObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContextObjectName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContextType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageFlag" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name = "UniquePageletSearchID" value = "NewContentEntryPointPageletAssignment" />
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="assignPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.Assign.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelAssignPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-BackToAssign",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("ContextType",null),context.getFormattedValue(getObject("ContextType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.AssignPageVariant.text",null)))}, 125); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentEntryPointPageletAssignments-BackToAssign",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)).addURLParameter(context.getFormattedValue("ContextType",null),context.getFormattedValue(getObject("ContextType"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","AssignPageToObject"),
new TagParameter("text",localizeText(context.getFormattedValue("NewContentEntryPointPageletAssignment.AssignComponent.text",null)))}, 127); %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject:TargetPlaceholderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getpageletconstraintctnr", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ContextObject",getObject("ContextObject:TargetPlaceholderDefinition")),
new TagParameter("PageletConstraintCtnr","ConstraintCtnr")}, 131); %><% } else { %><% processOpenTag(response, pageContext, "getpageletconstraintctnr", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("PageletConstraintCtnr","ConstraintCtnr")}, 133); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConstraintCtnr"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ConstraintCtnr:Pagelets")); getPipelineDictionary().put("AllowedParentPagelets", temp_obj);} %><% {Object temp_obj = (getObject("PageletModelUtils:Union(ConstraintCtnr:PageletDefinitions,AllowedParentPagelets)")); getPipelineDictionary().put("AllowedDefinitions", temp_obj);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletModelUtils:PageVariantTypes(ContextObject)")); getPipelineDictionary().put("AllowedDefinitions", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("PageletModelUtils:ComponentTypes(ContextObject,ApplicationBO:Extension(\"(Class)com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepository\"))")); getPipelineDictionary().put("AllowedDefinitions", temp_obj);} %><% } %><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContextObject"),
new TagParameter("key2","ContextType"),
new TagParameter("key0","ContextObjectUUID"),
new TagParameter("value2",getObject("ContextType")),
new TagParameter("value1",getObject("ContextObject")),
new TagParameter("key3","ContextObjectName"),
new TagParameter("value4",getObject("IsPage")),
new TagParameter("value3",getObject("ContextObjectName")),
new TagParameter("key4","IsPage"),
new TagParameter("value0",getObject("ContextObjectUUID")),
new TagParameter("mapname","TargetPipelineParams")}, 146); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("PageletSearchPageFlag", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PageletSearchPageFlag", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("excludedpagelets",getObject("ExcludedPageletMap:Values:Iterator")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParams")),
new TagParameter("allowedtemplates",getObject("AllowedParentPagelets")),
new TagParameter("start",getObject("PageSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/inc/ContentEntryPointPageletAssignmentProperties"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","content/inc/ContentEntryPointPageletAssignmentButtons"),
new TagParameter("alloweddefinitions",getObject("AllowedDefinitions:Iterator")),
new TagParameter("page",getObject("PageletSearchPageFlag")),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletSearchResult"),
new TagParameter("targetpageletviewpipeline","ViewContentEntryPointPageletAssignments-Dispatch"),
new TagParameter("uniqueid","NewContentEntryPointPageletAssignment")}, 158); %><% } %></div><% printFooter(out); %>