<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageComponentProcessingSelectPeriod.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectVisibility.EditAllComponentsStep2SetVisibilityPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectVisibility.EditAllComponentsStep2SetPublishingPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectVisibility.EditSelectedComponentsStep2SetVisibilityPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectVisibility.EditSelectedComponentsStep2SetPublishingPeriod",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% }} %><% }} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("id","PageAssignmentsProcessingSelectPeriod"),
new TagParameter("text",getObject("AssignmentMessage"))}, 29); %><!-- EO Page Navigator --><% URLPipelineAction action375 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));String site375 = null;String serverGroup375 = null;String actionValue375 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null);if (site375 == null){  site375 = action375.getDomain();  if (site375 == null)  {      site375 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup375 == null){  serverGroup375 = action375.getServerGroup();  if (serverGroup375 == null)  {      serverGroup375 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue375, site375, serverGroup375,true)); %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="LocaleId" />
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ComponentSelectVisibility.ThePeriodCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ComponentSelectVisibility.PleaseProvideACorrectFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ComponentSelectVisibility.PleaseProvideACorrectUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ComponentSelectVisibility.InvalidPeriodFromDateMustBeBeforeUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="w e s table_title_description" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectVisibility.Step2Of2.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <br/><br/> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.SetTheVisibilityOfTheSelectedComponents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.SetThePublishingPeriodOfTheSelectedComponents.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td>
<table cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td class="label_radio" width="1"><label class="label label_radio" for=""><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.Publishing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% }} %></label>
</td>
<td class="input_radio"><input <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" id="OnlineFlag_false" value="false" type="radio"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="OnlineFlag_false"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.NotPublished.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></label>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="input_radio label_fix1"><input <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("OnlineFlag"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>checked="checked"<% } %> name="OnlineFlag" id="OnlineFlag_true" value="true" type="radio"/></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="OnlineFlag_true"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetVisibilityForSlot",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.Visible.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("SetPublishingPeriod",null).equals(context.getFormattedValue(getObject("ActionID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectVisibility.Published.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></label></td>
<td colspan="5">
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Day")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_Time")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ComponentSelectVisibility.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 98); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 105); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ComponentSelectVisibility.From.InputFieldLabel1",null))),
new TagParameter("DateString",getObject("ValidFrom_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 111); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidFrom_Time"),
new TagParameter("TimeString",getObject("ValidFrom_Time")),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 119); %><% } %></tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ComponentSelectVisibility.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("ValidTo_Day")),
new TagParameter("InputFieldLabelClass","fielditem"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 128); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ValidTo_Time"),
new TagParameter("TimeString",getObject("ValidTo_Time")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect"))))}, 135); %></tr>
</table>
</td>
<td class="fielditem2" width="100%"></td>
</tr>
<tr><td colspan="4" ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
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
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetVisibilityForSlot",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.UpdatingTheVisibilityPeriodOfComponents.input",null)),null)%>"/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetPublishingPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.UpdatesThePublishingPeriodOfComponents.input",null)),null)%>"/><% }} %><input type="hidden" name="ActionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="backToSelectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="finishPeriod" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Finish.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --> <% printFooter(out); %>