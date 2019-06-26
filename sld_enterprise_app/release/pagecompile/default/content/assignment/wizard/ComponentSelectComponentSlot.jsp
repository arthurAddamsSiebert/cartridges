<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(": ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.SelectSlotsPlaceholders.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-SelectSlots",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ComponentSelectComponentSlot.Step0",null),new ParameterList().addParameter(context.getFormattedValue(getObject("StepCounter"),null))))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.EditAllComponentsStep0SelectSlotsPlaceholders.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.EditSelectedComponentsStep0SelectSlotsPlaceholders.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% }} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.AssignComponentToComponentsStep0SelectSlotsPlaceho.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.AssignComponentToPageVariantsStep0SelectSlotsPlace.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.AssignComponentToPageTemplatesStep0SelectSlotsPlac.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.AssignComponentToComponentTemplatesStep0SelectSlot.table_title",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><% }}}} %><% } %> 
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Finish")))).booleanValue() && ((Boolean) (((!((Boolean) ((hasLoopElements("SelectedSlotDefinitionQualifiedNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((hasLoopElements("SlotDefinitionQualifiedNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) ((hasLoopElements("SelectedPlaceholderDefinitionUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((hasLoopElements("PlaceholderDefinitionUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s"> 
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ComponentSelectComponentSlot.YouHaveNotSelectedAnySlotsPlaceholdersUseTheCheckb.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
</table><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "43");} %><% URLPipelineAction action351 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null));String site351 = null;String serverGroup351 = null;String actionValue351 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null);if (site351 == null){  site351 = action351.getDomain();  if (site351 == null)  {      site351 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup351 == null){  serverGroup351 = action351.getServerGroup();  if (serverGroup351 == null)  {      serverGroup351 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentPageletAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectSlots");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue351, site351, serverGroup351,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.Step0Of3.table_title_description",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><br/><br/><% } else { %><% {out.write(localizeISText("ComponentSelectComponentSlot.Step0Of2.table_title_description",null,null,context.getFormattedValue(getObject("StepCounter"),null),null,null,null,null,null,null,null,null,null));} %><br/><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.SetThePriorityAndVisibilityForTheSelectedComponent.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.SetThePriorityAndVisibilityForTheSelectedPageVaria.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.SetThePriorityAndVisibilityForTheSelectedPageTempl.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.SetThePriorityAndVisibilityForTheSelectedComponent.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("ActionID"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToPageVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><table class="table_detail e w s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="checkbox" name="AssignIfNotAlreadyAssigned" id="AssignIfNotAlreadyAssigned" value="true" checked="checked"/>
</td>
<td width="100%">
<label for="AssignIfNotAlreadyAssigned"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
&nbsp;<% {out.write(localizeISText("ComponentSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && !((Boolean) (getObject("TemplateFlag"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
&nbsp;<% {out.write(localizeISText("ComponentSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageFlag")).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
&nbsp;<% {out.write(localizeISText("ComponentSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.label2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("PageFlag"))).booleanValue() && ((Boolean) getObject("TemplateFlag")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
&nbsp;<% {out.write(localizeISText("ComponentSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.label3",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}} %></label>
</td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("CurrentSession:Locale")),
new TagParameter("ShowHeading","true")}, 89); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.Slots.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %> 
<tr>
<td class="table_title_description w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.SelectTheSlotsYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3" nowrap="nowrap">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="table_header w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');" class="tableheader"><% {out.write(localizeISText("ComponentSelectComponentSlot.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');" class="tableheader"><% {out.write(localizeISText("ComponentSelectComponentSlot.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.SlotName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.PageTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectComponentSlot.ComponentTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr> 
<% while (loop("FilterSlotDefinitionMap:KeySet","SlotDefinition",null)) { %><% while (loop("FilterSlotDefinitionMap:get(SlotDefinition)","PageletDefinition",null)) { %><tr>
<td class="table_detail w e s top center">
<input type="hidden" name="SlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedSlotDefinitionQualifiedNamesClipboard:contains(SlotDefinition:QualifiedName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedSlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedSlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %> 
</table> 
</td>
</tr> 
<% } else { %> 
<tr> 
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("ComponentSelectComponentSlot.ThereAreNoSlotsTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %><tr>
<td class="table_title2 w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.Placeholders.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.SelectThePlaceholdersYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s" nowrap="nowrap" width="63">
<div id="C" style="display:block;">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ComponentSelectComponentSlot.SelectAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none;">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ComponentSelectComponentSlot.ClearAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ComponentSelectComponentSlot.PlaceholderName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %><% {out.write(localizeISText("ComponentSelectComponentSlot.PageTemplate.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ComponentSelectComponentSlot.ComponentTemplate.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr> 
<% while (loop("FilteredPlaceholderDefinitionMap:KeySet","PlaceholderDefinition",null)) { %><tr>
<td class="table_detail w e s top center">
<input type="hidden" name="PlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedPlaceholderDefinitionsClipboard:contains(PlaceholderDefinition:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedPlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedPlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 197); %></td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Pagelet",getObject("FilteredPlaceholderDefinitionMap:get(PlaceholderDefinition)"))}, 200); %></td>
</tr><% } %> 
<% } else { %> 
<tr> 
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("ComponentSelectComponentSlot.ThereAreNoPlaceholdersTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %> 
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="previous" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("ActionID"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToPageVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.CreatesAssignmentsFromComponentsToSlotsOrPlacehold.input",null)),null)%>"/><% } else { %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.MoveComponentsToSlotsOrPlaceholders.input",null)),null)%>"/><% } %><input type="submit" name="Finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.Finish.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectComponentSlot.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr> 
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>