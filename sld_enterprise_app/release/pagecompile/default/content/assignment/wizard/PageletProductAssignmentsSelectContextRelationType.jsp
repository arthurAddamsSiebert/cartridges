<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-BackToContextRelationTypeSelection",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("AssignmentType",null),context.getFormattedValue(getObject("AssignmentType"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","PageletAssignmentsSelectContextRelationType"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletProductAssignmentsSelectContextRelationType.Step2SelectPageType.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-BackToContextRelationTypeSelection",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("AssignmentType",null),context.getFormattedValue(getObject("AssignmentType"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","PageletAssignmentsSelectContextRelationType"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletProductAssignmentsSelectContextRelationType.Step2SelectIncludeType.text",null)))}, 8); %><% } %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.AssignPageVariantToProductPagesStep2SelectPageType.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } else { %><td width="100%" class="table_title aldi"><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.AssignComponentToProductIncludesStep2SelectInclude.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %></tr>
<!-- Error Handling -->
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NothingSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.YouHaveNotSelectedAnyPageTypeUseTheRadiobuttons.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.YouHaveNotSelectedAnyIncludeTypeUseTheRadiobuttons.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling --> 
<tr>
<td class="w e s table_title_description"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.Step2Of3SelectThePageTypeYouWantToAssignThePageApp.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.Step2Of3SelectTheIncludeTypeYouWantToAssignTheIncl.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action350 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null));String site350 = null;String serverGroup350 = null;String actionValue350 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null);if (site350 == null){  site350 = action350.getDomain();  if (site350 == null)  {      site350 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup350 == null){  serverGroup350 = action350.getServerGroup();  if (serverGroup350 == null)  {      serverGroup350 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageProductAssignmentsCreation-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CategoryTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue350, site350, serverGroup350,true)); %><input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AssignmentType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedTab" value="Assignments" /><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredViewContexts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "61");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 62); %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td nowrap="nowrap" width="80" class="table_header w e s" style="text-align: center;"><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("FilteredViewContexts","ViewContext",null)) { %><tr>
<td class="table_detail w e s" colspan="2"><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("ViewContext")),
new TagParameter("Locale",getObject("CurrentSession:Locale"))}, 73); %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:Description(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</td>
</tr> 
<% {Object temp_obj = (getObject("ViewContext:ContextObjectRelation:ContentEntryPointDefinitionInclusions")); getPipelineDictionary().put("ContentEntryPointDefinitionInclusions", temp_obj);} %><% while (loop("ContentEntryPointDefinitionInclusions","ContentEntryPointDefinitionInclusion",null)) { %><tr>
<td nowrap="nowrap" class="table_detail w e s top center">
<input type="radio" name="SelectedViewContextCEPI" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ViewContext:UUID"),null) + context.getFormattedValue("|",null) + context.getFormattedValue(getObject("ContentEntryPointDefinitionInclusion:QualifiedName"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ViewContext:UUID"),null).equals(context.getFormattedValue(getObject("ViewContextUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ContentEntryPointDefinitionInclusion:QualifiedName"),null).equals(context.getFormattedValue(getObject("ContentEntryPointDefinitionInclusionQName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ContentEntryPointDefinitionInclusion,CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:Description(ContentEntryPointDefinitionInclusion,CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %></table><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.NoPageViewContextsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletProductAssignmentsSelectContextRelationType.NoIncludeViewContextsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><table class="w e s" cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="backToProducts" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignmentsSelectContextRelationType.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="setAssignmentsProperties" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignmentsSelectContextRelationType.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button"><input type="submit" name="cancelAssign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletProductAssignmentsSelectContextRelationType.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --> 
<!-- EO Working Area --><% printFooter(out); %>