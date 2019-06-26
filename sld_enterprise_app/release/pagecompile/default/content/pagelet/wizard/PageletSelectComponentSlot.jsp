<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-SelectSlots",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletSelectComponentSlot.Step3SelectSlots.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSelectComponentSlot.EditAllPageVariantsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSelectComponentSlot.EditAllComponentsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSelectComponentSlot.EditSelectedPageVariantsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSelectComponentSlot.EditSelectedComponentsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% }} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("SelectedSlotDefinitionQualifiedNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PageletSelectComponentSlot.YouHaveNotSelectedAnySlotsPlaceholdersUseTheCheckb.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "36");} %><% } %><% URLPipelineAction action434 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null));String site434 = null;String serverGroup434 = null;String actionValue434 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null);if (site434 == null){  site434 = action434.getDomain();  if (site434 == null)  {      site434 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup434 == null){  serverGroup434 = action434.getServerGroup();  if (serverGroup434 == null)  {      serverGroup434 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectSlots");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue434, site434, serverGroup434,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PageletSelectComponentSlot.Step3Of3TheListShowsSlotsTheComponentCanBeAssigned.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail e w s">
<input type="checkbox" name="AssignIfNotAlreadyAssigned" value="true" checked="checked"/>&nbsp;
<% {out.write(localizeISText("PageletSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("CurrentSession:Locale")),
new TagParameter("ShowHeading","true")}, 54); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.Slots.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %> 
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');" class="tableheader"><% {out.write(localizeISText("PageletSelectComponentSlot.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');" class="tableheader"><% {out.write(localizeISText("PageletSelectComponentSlot.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.SlotName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.PageVariantType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<% while (loop("FilterSlotDefinitionMap:KeySet","SlotDefinition",null)) { %><% while (loop("FilterSlotDefinitionMap:get(SlotDefinition)","PageletDefinition",null)) { %><tr>
<td class="table_detail w e s top center">
<input type="hidden" name="SlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedSlotDefinitionQualifiedNamesClipboard:contains(SlotDefinition:QualifiedName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedSlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedSlotDefinitionQualifiedName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %> 
<% } else { %> 
<tr> 
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("PageletSelectComponentSlot.ThereAreNoSlotsTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %><tr>
<td class="table_title2 w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.Placeholders.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s" colspan="3" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.SelectThePlaceholdersYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');" class="tableheader"><% {out.write(localizeISText("PageletSelectComponentSlot.SelectAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none;">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');" class="tableheader"><% {out.write(localizeISText("PageletSelectComponentSlot.ClearAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PageletSelectComponentSlot.PlaceholderName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSelectComponentSlot.PageTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSelectComponentSlot.ComponentTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr> 
<% while (loop("FilteredPlaceholderDefinitionMap:KeySet","PlaceholderDefinition",null)) { %><tr>
<td class="table_detail w e s top center">
<input type="hidden" name="PlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedPlaceholderDefinitionsClipboard:contains(PlaceholderDefinition:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedPlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedPlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 151); %></td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Pagelet",getObject("FilteredPlaceholderDefinitionMap:get(PlaceholderDefinition)"))}, 154); %></td>
</tr><% } %> 
<% } else { %> 
<tr> 
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("PageletSelectComponentSlot.ThereAreNoPlaceholdersTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %> 
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="previous" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="ProcessDescription" value="Creates assignments from component to slots"/>
<input type="submit" name="Finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Finish.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr> 
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>