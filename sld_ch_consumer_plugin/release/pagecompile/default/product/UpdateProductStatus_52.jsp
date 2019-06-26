<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-SelectNextPageByAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UpdateProductStatus",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UpdateProductStatus_52.Step2UpdateProductStatus.text",null)))}, 4); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("UpdateProductStatus_52.Step2UpdateProductStatus.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s table_title_description"><% {out.write(localizeISText("UpdateProductStatus_52.Step2Of3ChooseProductsWithWhichStatusesShouldBeUpdated.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductApprovalStatusNewMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("UpdateProductStatus_52.PleaseProvideNewApprovalStatus.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductApprovalStatusDuplicated"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("UpdateProductStatus_52.ApprovalStatusesMustBeDifferent.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductApprovalStatusNotPossibleTransition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("UpdateProductStatus_52.ApprovalStatusesNotPossibleTransition.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% URLPipelineAction action38 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site38 = null;String serverGroup38 = null;String actionValue38 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site38 == null){  site38 = action38.getDomain();  if (site38 == null)  {      site38 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup38 == null){  serverGroup38 = action38.getServerGroup();  if (serverGroup38 == null)  {      serverGroup38 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue38, site38, serverGroup38,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0" /></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("UpdateProductStatus_52.CurrentStatus.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail3" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("UpdateProductStatus_52.NewStatus.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateProductStatus_52.Approval.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail" width="50%"><select
name="ProductApprovalStatus" class="inputfield_en"
style="width: 255px;" width="100%">
<option value="NotSelected">(<% {out.write(localizeISText("UpdateProductStatus_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
<option value="Edit" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatus"),null).equals(context.getFormattedValue("Edit",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Editing.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="InReview" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatus"),null).equals(context.getFormattedValue("Review",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.InReview.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Approved" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatus"),null).equals(context.getFormattedValue("Approved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Approved.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductApprovalStatusNewMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("UpdateProductStatus_52.Approval.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;<span class="star">*</span></td>
<td class="table_detail" width="100%"><select
name="ProductApprovalStatusNew" class="inputfield_en"
style="width: 255px;" width="100%">
<option value="NotSelected">(<% {out.write(localizeISText("UpdateProductStatus_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_PREPARE_PRODUCTS_FOR_APPROVE"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_APPROVE_PRODUCTS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><option value="Edit" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatusNew"),null).equals(context.getFormattedValue("Edit",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Editing.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_PREPARE_PRODUCTS_FOR_APPROVE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><option value="InReview" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatusNew"),null).equals(context.getFormattedValue("In Review",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.InReview.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_APPROVE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><option value="Approved" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalStatusNew"),null).equals(context.getFormattedValue("Approved",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Approved.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateProductStatus_52.Completeness.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail" width="50%"><select name="ProductCompletenessStatus"
class="inputfield_en" style="width: 255px;">
<option value="All" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductCompletenessStatus"),null).equals(context.getFormattedValue("available",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Any.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Complete" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductCompletenessStatus"),null).equals(context.getFormattedValue("unavailable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Complete.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Incomplete" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductCompletenessStatus"),null).equals(context.getFormattedValue("unavailable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateProductStatus_52.Incomplete.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="8" alt="" border="0" /></td>
</tr>
</table>
</td>
</tr>
</table> 
<table class="w e s" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "125");} %><input type="hidden" name="updateProductStatus" value="true"/>
<input type="hidden" name="ProcessName" value="updateProductStatus"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateProductStatus_52.UpdatingProductStatus.input",null)),null)%>"/>
<input type="hidden" name="ActionID" value="UpdateProductStatus" class="button" />
<input type="hidden" name="ConfirmStep" value="3"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateProductStatus_52.Previous.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="confirm"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateProductStatus_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" /></td>
<td class="button"><input type="submit" name="cancel"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateProductStatus_52.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>