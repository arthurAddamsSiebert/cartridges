<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageComponentProcessingSelectAction.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectAction.EditAllComponents",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ComponentSelectAction.EditSelectedComponents",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} %><% }} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-BackToSelectAction",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",context.getFormattedValue(getObject("AssignmentMessage"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectAction.Step1SelectAction",null)),null))}, 14); %><!-- EO Page Navigator --><% URLPipelineAction action374 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));String site374 = null;String serverGroup374 = null;String actionValue374 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null);if (site374 == null){  site374 = action374.getDomain();  if (site374 == null)  {      site374 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup374 == null){  serverGroup374 = action374.getServerGroup();  if (serverGroup374 == null)  {      serverGroup374 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue374, site374, serverGroup374,true)); %><input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><input type="hidden" name="ContextObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObject:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AssignmentMessage"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectAction.SelectAction",null)),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ACTION_NOT_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ComponentSelectAction.YouHaveNotSelectedAnActionSelectAnActionAndThenClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteComponent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ComponentSelectAction.DeleteComponents.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteComponents"),
new TagParameter("okbtnname","deleteComponents"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ComponentSelectAction.AreYouSureThatYouWantToDeleteTheSelectedPageComponent.message",null)))}, 45); %></table>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectAction.DeletesTheSelectedPageComponents.input",null)),null)%>"/>
<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectAction.Step1SelectAnActionNextStepsDependOnTheActionType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject:SlotDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="SetVisibilityForSlot" id="SetVisibilityForSlot"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetVisibilityForSlot",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="SetVisibilityForSlot"><% {out.write(localizeISText("ComponentSelectAction.SetVisibilityPeriodOfTheSelectedComponentsForSlot0.label",null,null,encodeString(context.getFormattedValue(getObject("ContextObject:SlotDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null)),null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %> 
<tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="SetPublishingPeriod" id="SetPublishingPeriod" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetPublishingPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="SetPublishingPeriod"><% {out.write(localizeISText("ComponentSelectAction.SetPublishingPeriodOfTheSelectedComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="AssignToPageVariants" id="AssignToPageVariants"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToPageVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="AssignToPageVariants"><% {out.write(localizeISText("ComponentSelectAction.AssignTheSelectedComponentsToPageVariants.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject:ContentEntryPointDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="MoveToPageVariants" id="MoveToPageVariants"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("MoveToPageVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="MoveToPageVariants"><% {out.write(localizeISText("ComponentSelectAction.MoveTheSelectedComponentsToPageVariants.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="AssignToIncludes" id="AssignToIncludes"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToIncludes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="AssignToIncludes"><% {out.write(localizeISText("ComponentSelectAction.AssignTheSelectedComponentsToIncludes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject:ContentEntryPointDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="MoveToIncludes" id="MoveToIncludes"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("MoveToIncludes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="MoveToIncludes"><% {out.write(localizeISText("ComponentSelectAction.MoveTheSelectedComponentsToIncludes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="AssignToComponents" id="AssignToComponents"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="AssignToComponents"><% {out.write(localizeISText("ComponentSelectAction.AssignTheSelectedComponentsToComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject:ContentEntryPointDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="MoveToComponents" id="MoveToComponents" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("MoveToComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="MoveToComponents"><% {out.write(localizeISText("ComponentSelectAction.MoveTheSelectedComponentsToComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %><tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="AssignComponent" id="AssignComponent"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignComponent",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="AssignComponent"><% {out.write(localizeISText("ComponentSelectAction.AssignAComponentToTheSelectedComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="AssignLabel" id="AssignLabel"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="AssignLabel"><% {out.write(localizeISText("ComponentSelectAction.AssignALabelToTheSelectedComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td class="w e s input_radio_table" width="1%">
<input type="radio" name="ActionID" value="DeleteComponents" id="DeleteComponents"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="e s" nowrap="nowrap">
<label class="label label_table label_light label_radio_text" for="DeleteComponents"><% {out.write(localizeISText("ComponentSelectAction.DeleteTheSelectedComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="selectNextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectAction.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectAction.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>