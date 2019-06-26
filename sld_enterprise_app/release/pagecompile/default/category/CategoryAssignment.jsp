<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CheckSelectProductWizardPrivileges", null, "6");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsViewSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 15); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 23); %> 
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HideClassificationCatalogs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("HideClassificationCatalogs",null),context.getFormattedValue(getObject("HideClassificationCatalogs"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 32); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("CurrentPipelineName"),null) + context.getFormattedValue("-",null) + context.getFormattedValue(getObject("CurrentStartNodeName"),null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PipelineComponentID",null),context.getFormattedValue(getObject("PipelineComponentID"),null))).addURLParameter(context.getFormattedValue("SelectCategoryStepNo",null),context.getFormattedValue(getObject("SelectCategoryStepNo"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)))),
new TagParameter("id","assignCatSelectCategory"),
new TagParameter("text","Select Category")}, 39); %> 
<% } %><% } %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" width="100%" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateInclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignment.IncludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("PromotionRebateExclusions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignment.ExcludeCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PipelineComponentCaller"),null).equals(context.getFormattedValue("CategoryLinks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignment.AssignCategoryLink.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %> 
- <% {out.write(localizeISText("CategoryAssignment.SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Category.subject",null))),
new TagParameter("okbtnname","Finish"),
new TagParameter("type","nsebt"),
new TagParameter("message",localizeText(context.getFormattedValue("CategoryAssignment.YouHaveNotSelectedAnythingSelectACategoryAndClickO.message",null)))}, 63); %><% } %><tr>
<td class="table_title_description w e s" width="100%"><% {out.write(localizeISText("CategoryAssignment.BrowseToTheCategoriesThatYouWantToSelect.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryAssignment.ClickTheCheckboxButtons0.table_title_description",null,null,context.getFormattedValue("<img src=\"",null) + context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif\" width=\"11\" height=\"11\" alt=\"\" border=\"0\"/>",null),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {Object temp_obj = ("multiple"); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("CategorySelectionTypeParameter", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AutoSelectSubCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("AutoSelectSubCategories", temp_obj);} %><% } %><% URLPipelineAction action292 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site292 = null;String serverGroup292 = null;String actionValue292 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site292 == null){  site292 = action292.getDomain();  if (site292 == null)  {      site292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup292 == null){  serverGroup292 = action292.getServerGroup();  if (serverGroup292 == null)  {      serverGroup292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("WizardPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue292, site292, serverGroup292,true)); %><!-- save for further usage -->
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "95");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<tr>
<td class="table_title2" colspan="2"><% {out.write(localizeISText("CategoryAssignment.StandardCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tr>
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/>
</td>
<td width="100%"><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("parametervalue",getObject("ChannelID")),
new TagParameter("parametername1","PipelineComponentID"),
new TagParameter("parametervalue2",getObject("HideClassificationCatalogs")),
new TagParameter("parametervalue1",getObject("PipelineComponentID")),
new TagParameter("parametername2","HideClassificationCatalogs"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode",getObject("SelectMode")),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("disabledcategories",getObject("NotSelectableCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("lazycategories",getObject("LazyCategories")),
new TagParameter("treeid","tree1"),
new TagParameter("detailspageparameter","CategoryUUID"),
new TagParameter("detailspagepipeline","ViewCategorySelectWizard-CategoryDetails"),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("parametername","ChannelID"),
new TagParameter("autoselectdisablesubcategories",getObject("AutoDisableSelectedSubCategories")),
new TagParameter("categories",getObject("StandardCatalogCategories")),
new TagParameter("autoselectsubcategories",getObject("AutoSelectSubCategories"))}, 108); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("HideClassificationCatalogs"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ClassificationCatalogCategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><tr>
<td class="table_title2" colspan="2"><% {out.write(localizeISText("CategoryAssignment.ClassificationCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("parametervalue",getObject("ChannelID")),
new TagParameter("parametername1","PipelineComponentID"),
new TagParameter("parametervalue2",getObject("HideClassificationCatalogs")),
new TagParameter("parametervalue1",getObject("PipelineComponentID")),
new TagParameter("parametername2","HideClassificationCatalogs"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode",getObject("SelectMode")),
new TagParameter("selectedcategories",getObject("AlreadySelectedCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("disabledcategories",getObject("NotSelectableCategoryUUIDMap:KeySet:Iterator")),
new TagParameter("lazycategories",getObject("LazyCategories")),
new TagParameter("treeid","tree2"),
new TagParameter("detailspageparameter","CategoryUUID"),
new TagParameter("detailspagepipeline","ViewCategorySelectWizard-CategoryDetails"),
new TagParameter("autodisabledisabledsubcategories",getObject("AutoDisableDisabledSubCategories")),
new TagParameter("parametername","ChannelID"),
new TagParameter("autoselectdisablesubcategories",getObject("AutoDisableSelectedSubCategories")),
new TagParameter("categories",getObject("ClassificationCatalogCategories")),
new TagParameter("autoselectsubcategories",getObject("AutoSelectSubCategories"))}, 137); %><% } %></td>
</tr>
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsManageSelectProductWizardAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="StandardCategoryPrefix" value="tree1"/>
<input type="hidden" name="ClassificationCategoryPrefix" value="tree2"/>
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignment.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryAssignment.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% } %><% printFooter(out); %>