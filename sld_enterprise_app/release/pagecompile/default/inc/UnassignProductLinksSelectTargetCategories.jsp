<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null)); getPipelineDictionary().put("ChannelTypeCode", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("ChannelTypeCode", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Paging",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UnassignProductLinks",null)).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("jumpToStep",null),context.getFormattedValue("3",null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UnassignProductLinksSelectTargetCategories.Step3UnassignProductCategoryLinks.text",null)))}, 11); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBulkOperationUnassignWizard-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UnassignProductLinks",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("jumpToStep",null),context.getFormattedValue("3",null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UnassignProductLinksSelectTargetCategories.Step3UnassignProductCategoryLinks.text",null)))}, 19); %><% } %><% URLPipelineAction action193 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site193 = null;String serverGroup193 = null;String actionValue193 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site193 == null){  site193 = action193.getDomain();  if (site193 == null)  {      site193 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup193 == null){  serverGroup193 = action193.getServerGroup();  if (serverGroup193 == null)  {      serverGroup193 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectTargetCategoriesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue193, site193, serverGroup193,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="5"><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.Step3UnassignProductCategoryLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoTargetsSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.YouHaveNotSelectedAnyTargetCategories.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description" colspan="5"><% {out.write(localizeISText("UnassignProductLinksSelectTargetProducts.Step3Of4NextStepConfirmation.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></BR></BR><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.ThisListShowsAllTargetCategoriesOfTheType.table_title_descriptionPart1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("SelectedProductLinkTypeSummaryDisplayMap:Values:Iterator","SelectedProductLinkTypeSummary","count")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasNext("SelectedProductLinkTypeSummary") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %> <% {out.write(localizeISText("ProductParametricSearchMask.And.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% {out.write(localizeISText(context.getFormattedValue(getObject("SelectedProductLinkTypeSummary"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>, <% } %><% {out.write(localizeISText(context.getFormattedValue(getObject("SelectedProductLinkTypeSummary"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.ThisListShowsAllTargetCategoriesOfTheType.table_title_descriptionPart2",null,null,null,null,null,null,null,null,null,null,null,null));} %></BR><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LinkedTargets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %></BR><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.UseTheCheckboxesAndClickNext.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table class="w e" width="100%" cellspacing="0" cellpadding="0" border="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("LinkedTargets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><tr>
<td class="table_detail s"><% {out.write(localizeISText("UnassignProductLinksSelectTargetCategories.ThereAreNoCategoriesLinked.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("SelectedProductLinkTypeSummaryDisplayMap:Values:Iterator","SelectedProductLinkTypeSummary","count")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasNext("SelectedProductLinkTypeSummary") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %> <% {out.write(localizeISText("ProductParametricSearchMask.And.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> <% {out.write(localizeISText(context.getFormattedValue(getObject("SelectedProductLinkTypeSummary"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>, <% } %><% {out.write(localizeISText(context.getFormattedValue(getObject("SelectedProductLinkTypeSummary"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %>.
</td>
</tr><% } else { %><tr>
<td class="table_header e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectTargetCategoriesForm','SelectedUniqueIdentifier','A','B');" class="tableheader"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectTargetCategoriesForm','SelectedUniqueIdentifier','A','B');" class="tableheader"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="10%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap" width="10%"><% {out.write(localizeISText("ReplicationGroupList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="10%"><% {out.write(localizeISText("sld_enterprise_app.LinkType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("UnassignProductLinksSelectTargetProducts.NumberOfLinks.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LinkedTargets","Category",null)) { %><tr>
<td class="e s center">
<input type="checkbox" name="SelectedUniqueIdentifier" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UniqueIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:UniqueIdentifier"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Category:UniqueIdentifier)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="UniqueIdentifier" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UniqueIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail e s top">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySelectWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("Category:Category:UUID"),null))).addURLParameter(context.getFormattedValue("backToList",null),context.getFormattedValue("backToList",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail e s top" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySelectWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("Category:Category:UUID"),null))).addURLParameter(context.getFormattedValue("backToList",null),context.getFormattedValue("backToList",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail e s top left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("Category:TypeCodeName"),null),null).equals(context.getFormattedValue(replace(context.getFormattedValue(getObject("Category:TypeCodeName"),null),(String)("_C$"),(String)("")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% {out.write(localizeISText("UnassignProductLinksSelectTargetProducts.Has.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkProductLinkTable.Is.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("Category:TypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Category:TypeCodeName"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail s left"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:LinkCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="previousStep" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ActionID" value="UnassignProductLinks"/>
<input type="hidden" name="currentStep" value="3"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="nextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("LinkedTargets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("replaceshowall","1000"),
new TagParameter("pageable","LinkedTargets"),
new TagParameter("variablepagesize","true")}, 183); %><!-- End Page Cursor --><% out.print("</form>"); %><% printFooter(out); %>