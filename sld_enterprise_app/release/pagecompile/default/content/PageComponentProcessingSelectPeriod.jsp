<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageComponentProcessingSelectPeriod.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.EditAllComponentsStep2SetVisibilityPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.EditAllComponentsStep2SetPublishingPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.EditSelectedComponentsStep2SetVisibilityPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.EditSelectedComponentsStep2SetPublishingPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% }} %><% }} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("id","PageAssignmentsProcessingSelectPeriod"),
new TagParameter("text",getObject("AssignmentMessage"))}, 29); %><!-- EO Page Navigator --><% URLPipelineAction action378 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));String site378 = null;String serverGroup378 = null;String actionValue378 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null);if (site378 == null){  site378 = action378.getDomain();  if (site378 == null)  {      site378 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup378 == null){  serverGroup378 = action378.getServerGroup();  if (serverGroup378 == null)  {      serverGroup378 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue378, site378, serverGroup378,true)); %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="LocaleId" />
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.ThePeriodCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.PleaseProvideACorrectFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.PleaseProvideACorrectUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.InvalidPeriodFromDateMustBeBeforeUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="w e s table_title_description" nowrap="nowrap"><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Step2Of2.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <br/><br/> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.SetTheVisibilityOfTheSelectedComponents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.SetThePublishingPeriodOfTheSelectedComponents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td>
<table cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td class="fielditem2" width="1"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Visibility.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Publishing.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% }} %></td>
<td><input <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" value="false" type="radio"/></td>
<td class="fielditem" nowrap="nowrap" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Hidden.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.NotPublished.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" style="padding-top:4px;"><input <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" value="true" type="radio"/></td>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Visible.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageComponentProcessingSelectPeriod.Published.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Day")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Time")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 91); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 98); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 104); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 112); %><% } %></tr>
<tr>
<td colspan="3">&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidTo_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 122); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Time"),
new TagParameter("TimeString",getObject("ValidTo_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 129); %></tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetVisibilityForSlot",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><input type="hidden" name="ProcessDescription" value="Updating the visibility period of pages"/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetPublishingPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><input type="hidden" name="ProcessDescription" value="Updates the publishing period of page components"/><% }} %><input type="hidden" name="ActionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="backToSelectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="finishPeriod" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.Finish.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectPeriod.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --> <% printFooter(out); %>