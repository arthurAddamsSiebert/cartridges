<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CheckSelectProductWizardPrivileges", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsViewSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 12); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 18); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 25); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text",context.getFormattedValue("Step ",null) + context.getFormattedValue(getObject("SelectCategoryStepNo"),null) + context.getFormattedValue(" - Select Category",null))}, 30); %><% } %><% } %> 
<!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" width="100%" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentSelectCategory.Step0.table_title",null,null,context.getFormattedValue(getObject("SelectCategoryStepNo"),null),null,null,null,null,null,null,null,null,null));} %>: 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateInclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignmentSelectCategory.IncludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateExclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignmentSelectCategory.ExcludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("CategoryLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignmentSelectCategory.AssignCategoryLink.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %> 
- <% {out.write(localizeISText("CategoryAssignmentSelectCategory.SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Category.subject",null))),
new TagParameter("okbtnname","Finish"),
new TagParameter("type","nsebt")}, 53); %><% } %><tr>
<td class="table_title_description w e s" width="100%"><% {out.write(localizeISText("CategoryAssignmentSelectCategory.Step0Of1BrowseToTheCategoriesThatYouWantToSelect.table_title_description",null,null,context.getFormattedValue(getObject("SelectCategoryStepNo"),null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null),null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignmentSelectCategory.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {Object temp_obj = ("multiple"); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} %><% } %><% URLPipelineAction action293 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site293 = null;String serverGroup293 = null;String actionValue293 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site293 == null){  site293 = action293.getDomain();  if (site293 == null)  {      site293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup293 == null){  serverGroup293 = action293.getServerGroup();  if (serverGroup293 == null)  {      serverGroup293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue293, site293, serverGroup293,true)); %><!-- save for further usage -->
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><input type="hidden" name="HideClassificationCatalogs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("HideClassificationCatalogs"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "81");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/>
</td>
</tr>
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/>
</td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("parametervalue3",getObject("HideClassificationCatalogs")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("parametername3","HideClassificationCatalogs"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 97); %><% } else { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("parametervalue3",getObject("HideClassificationCatalogs")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("parametername3","HideClassificationCatalogs"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 112); %><% } %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 128); %><% } else { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("CatalogUUID")),
new TagParameter("selectiontype",getObject("CategorySelectionTypeParameter")),
new TagParameter("parametervalue2",getObject("PipelineComponentID")),
new TagParameter("parametername2","PipelineComponentID"),
new TagParameter("enabledetailslink","true"),
new TagParameter("formname","functionForm"),
new TagParameter("handlerpipeline",getObject("WizardPipeline")),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("checkedcategoryuuidmap",getObject("AlreadySelectedCategoryUUIDMap")),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("autoselectdisablesubcategories","true"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("disabledcategoryuuidmap",getObject("NotSelectableCategoryUUIDMap"))}, 142); %><% } %><% } %> 
</td>
</tr>
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="previousStep3" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Finish.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignmentSelectCategory.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% } %><% printFooter(out); %>