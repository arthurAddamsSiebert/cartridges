<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CheckSelectProductWizardPrivileges", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsViewSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("BreadCrumbText", temp_obj);} %><!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","assignCatSelectCatalog"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","assignCatSelectCatalog"),
new TagParameter("text",localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.text",null)))}, 11); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","assignCatSelectCatalog"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))))),
new TagParameter("id","assignCatSelectCatalog"),
new TagParameter("text",localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.text1",null)))}, 15); %><% } %><!-- Working Area --><% URLPipelineAction action284 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site284 = null;String serverGroup284 = null;String actionValue284 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site284 == null){  site284 = action284.getDomain();  if (site284 == null)  {      site284 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup284 == null){  serverGroup284 = action284.getServerGroup();  if (serverGroup284 == null)  {      serverGroup284 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue284, site284, serverGroup284,true)); %><!-- save for further usage -->
<input type="hidden" name="submittedForm" value="CatalogSelectionForm"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "27");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" data-testing-id="bo-catalog-selection-page">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.AssignProductCategoryLinksSelectCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelectedCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><tr>
<td colspan="5">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.YouHaveNotSelectedAnyTargetCategories.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td class="w e s table_title_description" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StandardCatalogCategories"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryAssignmentSelectCatalogCategories.ThisProductDoesNotContainAnyCategoryLinks",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr> 
<% } %><tr>
<td width="100%" valign="top">
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("treeid","tree"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode","multi"),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDs")),
new TagParameter("categories",getObject("StandardCatalogCategories")),
new TagParameter("disabledcategories",getObject("AlreadySelectedCategoryUUIDs"))}, 66); %> 
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<!-- Next/Cancel button -->
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsManageSelectProductWizardAllowed")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("StandardCatalogCategories")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SourceCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><input type="hidden" name="submittedForm" value="CatalogSelectionForm"/><% } %><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCatalogCategories.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% } %><% printFooter(out); %>