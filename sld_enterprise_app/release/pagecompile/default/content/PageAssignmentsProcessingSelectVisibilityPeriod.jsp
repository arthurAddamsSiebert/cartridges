<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.EditAllProductAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.EditAllCategoryAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.EditSelectedProductAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.EditSelectedCategoryAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% }} %><% }} %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.Step2SetVisibilityPeriod.value",null))); getPipelineDictionary().put("StepMessage", temp_obj);} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("id","PageAssignmentsProcessingSelectVisibilityPeriod"),
new TagParameter("text",getObject("StepMessage"))}, 39); %><!-- EO Page Navigator --><% URLPipelineAction action366 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null));String site366 = null;String serverGroup366 = null;String actionValue366 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null);if (site366 == null){  site366 = action366.getDomain();  if (site366 == null)  {      site366 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup366 == null){  serverGroup366 = action366.getServerGroup();  if (serverGroup366 == null)  {      serverGroup366 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue366, site366, serverGroup366,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("EditMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("StepMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</td>
</tr> 
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.TheVisibilityStatusCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.PleaseProvideACorrectFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.PleaseProvideACorrectUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.InvalidVisibilityPeriodFromDateMustBeBeforeUntilDa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %> 
</td>
</tr>
</table> 
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="w e s table_title_description" colspan="2" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.Step2Of2SetTheVisibilityForTheSelectedProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.Step2Of2SetTheVisibilityForTheSelectedCategories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
<tr>
<td colspan="2" class="w e s">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="fielditem2" width="1"><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.Visibility.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" value="false" type="radio"/></td>
<td class="fielditem2"><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.Hidden.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" style="padding-top:4px;"><input <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" value="true" type="radio"/></td>
<td class="fielditem2"><% {out.write(localizeISText("PageAssignmentsProcessingSelectVisibilityPeriod.Visible.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Day")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Time")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 98); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 104); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 110); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 117); %><% } %> 
</tr> 
<tr>
<td colspan="3">&nbsp;</td> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidTo_Day")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 127); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Time"),
new TagParameter("TimeString",getObject("ValidTo_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 133); %></tr>
</table>
</td>
</tr> 
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToSelectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.Previous.button",null)),null)%>" class="button"/>
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.UpdatingTheVisibilityPeriodOfPageAssignments.input",null)),null)%>"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="finishVisibilityPeriod" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.Finish.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectVisibilityPeriod.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --> <% printFooter(out); %>