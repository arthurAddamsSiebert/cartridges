<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletSearchAssignmentsMask.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("contententrypointdefinitioninclusionfiltermask","content/search/inc/ContentEntryPointDefinitionInclusionFilterMask.isml",true,new String[]{"PageFlag","ContextType","PageletModelRepository","Locale","AssignmentSelectionRadioGroup","AssignmentSelectionParam","AssignedToTypeSelect","AssignedToTypeParam"},null); %><% context.setCustomTagTemplateName("systemnonsystempageletentrypointsfiltermask","content/search/inc/SystemNonSystemPageletEntryPointsFilterMask.isml",true,new String[]{"PageFlag","SystemManaged","PageletModelRepository","Locale","AssignmentSelectionRadioGroup","AssignmentSelectionParam","AssignedToTypeSelect","AssignedToTypeParam"},null); %><tr><td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("PageletSearchAssignmentsMask.Assignments.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchAssignmentsMask.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibility" id="PageletSearch_AssignmentsVisibility_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibility")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibility"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibility_All"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibility" id="PageletSearch_AssignmentsVisibility_Hidden" value="notPublished" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibility"),null).equals(context.getFormattedValue("notPublished",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibility_Hidden"><% {out.write(localizeISText("PageletSearchAssignmentsMask.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibility" id="PageletSearch_AssignmentsVisibility_Unassigned" value="unassigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibility"),null).equals(context.getFormattedValue("unassigned",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibility_Unassigned"><% {out.write(localizeISText("PageletSearchAssignmentsMask.Unassigned.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchAssignmentsMask.VisibleFromDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleFrom" id="PageletSearch_AssignmentsVisibleFrom_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFrom")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFrom"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleFrom_All"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleFrom" id="PageletSearch_AssignmentsVisibleFrom_NoDateDefined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFrom"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleFrom_NoDateDefined"><% {out.write(localizeISText("PageletSearchAssignmentsMask.NoDateDefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleFrom" id="PageletSearch_AssignmentsVisibleFrom_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFrom"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleFrom_between"><% {out.write(localizeISText("PageletSearchAssignmentsMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>&nbsp;&nbsp;</td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_AssignmentsVisibleFromSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFromSinceDate")),
new TagParameter("Invalid","")}, 66); %><td>&nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_AssignmentsVisibleFromTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleFromTillDate")),
new TagParameter("Invalid","")}, 72); %></tr></table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchAssignmentsMask.VisibleToDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleTo" id="PageletSearch_AssignmentsVisibleTo_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleTo")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleTo"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleTo_All"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleTo" id="PageletSearch_AssignmentsVisibleTo_NoDateDefined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleTo"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleTo_NoDateDefined"><% {out.write(localizeISText("PageletSearchAssignmentsMask.NoDateDefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_AssignmentsVisibleTo" id="PageletSearch_AssignmentsVisibleTo_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleTo"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_AssignmentsVisibleTo_between"><% {out.write(localizeISText("PageletSearchAssignmentsMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>&nbsp;&nbsp;</td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_AssignmentsVisibleToSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleToSinceDate")),
new TagParameter("Invalid","")}, 102); %><td>&nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_AssignmentsVisibleToTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_AssignmentsVisibleToTillDate")),
new TagParameter("Invalid","")}, 108); %></tr></table>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToProductPageIncludeType"),
new TagParameter("ContextType","Product"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_ProductPageIncludeAssignments"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToProductPageIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_ProductPageIncludeAssignments"))}, 125); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToCategoryPageIncludeType"),
new TagParameter("ContextType","Category"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_CategoryPageIncludeAssignments"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToCategoryPageIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_CategoryPageIncludeAssignments"))}, 137); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "systemnonsystempageletentrypointsfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToSystemPageType"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("SystemManaged","true"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_SystemPageAssignements"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToSystemPageType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_SystemPageAssignements"))}, 149); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "systemnonsystempageletentrypointsfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToContentPageType"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("SystemManaged","false"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_ContentPageAssignements"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToContentPageType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_ContentPageAssignements"))}, 161); %><% } else { %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_AssignedToPageVariantType"><% {out.write(localizeISText("PageletSearchAssignmentsMask.PageVariantType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_AssignedToPageVariantType" id="PageletSearch_AssignedToPageVariantType" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:AssignmentPageVariantDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:AssignmentPageVariantDefinitions","PageVariantDefinition",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageVariantDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageVariantDefinition:QualifiedName"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AssignedToPageVariantType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageVariantDefinition,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchAssignmentsMask.PageVariants.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_PageAssignments" id="PageletSearch_PageAssignments_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_PageAssignments")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageAssignments"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PageAssignments_All"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_PageAssignments" id="PageletSearch_PageAssignments_Assigned" value="assigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageAssignments"),null).equals(context.getFormattedValue("assigned",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PageAssignments_Assigned"><% {out.write(localizeISText("PageletSearchAssignmentsMask.AssignedToAPageVariant.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_PageAssignments" id="PageletSearch_PageAssignments_NotAssigned" value="notAssigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageAssignments"),null).equals(context.getFormattedValue("notAssigned",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PageAssignments_NotAssigned"><% {out.write(localizeISText("PageletSearchAssignmentsMask.NotAssignedToAPageVariant.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" name="PageletSearch_PageAssignments" id="PageletSearch_PageAssignments_AssignedtoFiltered" value="assignedToFilteredPagelet" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageAssignments"),null).equals(context.getFormattedValue("assignedToFilteredPagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PageAssignments_AssignedtoFiltered"><% {out.write(localizeISText("PageletSearchAssignmentsMask.AssignedToFilteredPagesVariant.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:CompPageFilterDefined"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("PageFilterDefined", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PageFilterDefined", temp_obj);} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:PageFilterDefined"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("PageFilterDefined", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PageFilterDefined", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFilterDefined"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.FilterDefined.inputfield_en",null)),null)%>" name="AssignedToFilteredPages">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="editPageFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.EditFilter.button",null)),null)%>">
</td>
<td class="button">
<input type="submit" class="button" name="removePageFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.RemoveFilter.button",null)),null)%>">
</td>
</tr>
</table>
</td>
</tr>
</table>
</td><% } else { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.NoFilterDefined.inputfield_en",null)),null)%>" name="AssignedToFilteredPages">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="editPageFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.CreateFilter.button",null)),null)%>">
</td>
</tr>
</table>
</td>
</tr>
</table>
</td><% } %></tr>
</table></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchAssignmentsMask.Components.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" name="PageletSearch_ComponentAssignments" id="PageletSearch_ComponentAssignments_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_ComponentAssignments")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ComponentAssignments"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",298,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_ComponentAssignments_All"><% {out.write(localizeISText("PageletSearchAssignmentsMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" name="PageletSearch_ComponentAssignments" id="PageletSearch_ComponentAssignments_Assigned" value="assigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ComponentAssignments"),null).equals(context.getFormattedValue("assigned",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_ComponentAssignments_Assigned"><% {out.write(localizeISText("PageletSearchAssignmentsMask.AssignedToAComponent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" name="PageletSearch_ComponentAssignments" id="PageletSearch_ComponentAssignments_NotAssigned" value="notAssigned" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ComponentAssignments"),null).equals(context.getFormattedValue("notAssigned",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_ComponentAssignments_NotAssigned"><% {out.write(localizeISText("PageletSearchAssignmentsMask.NotAssignedToAComponent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr> 
<tr>
<td/>
<td><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" name="PageletSearch_ComponentAssignments" id="PageletSearch_ComponentAssignments_AssignedtoFiltered" value="assignedToFilteredPagelet" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ComponentAssignments"),null).equals(context.getFormattedValue("assignedToFilteredPagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",329,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_ComponentAssignments_AssignedtoFiltered"><% {out.write(localizeISText("PageletSearchAssignmentsMask.AssignedToFilteredComponents.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:ComponentFilterDefined"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",331,e);}if (_boolean_result) { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.FilterDefined.inputfield_en",null)),null)%>" name="AssignedToFilteredComponents">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="editComponentFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.EditFilter.button",null)),null)%>">
</td>
<td class="button">
<input type="submit" class="button" name="removeComponentFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.RemoveFilter.button",null)),null)%>">
</td>
</tr>
</table>
</td>
</tr>
</table>
</td><% } else { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.NoFilterDefined.inputfield_en",null)),null)%>" name="AssignedToFilteredComponents">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="editComponentFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchAssignmentsMask.CreateFilter.button",null)),null)%>">
</td>
</tr>
</table>
</td>
</tr>
</table>
</td><% } %></tr>
</table></td>
</tr><% } %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToProductPageIncludeType"),
new TagParameter("ContextType","Product"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_ProductPageIncludeAssignments"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToProductPageIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_ProductPageIncludeAssignments"))}, 379); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToCategoryPageIncludeType"),
new TagParameter("ContextType","Category"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_CategoryPageIncludeAssignments"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToCategoryPageIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_CategoryPageIncludeAssignments"))}, 391); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "systemnonsystempageletentrypointsfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToSystemIncludeType"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("SystemManaged","true"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_SystemIncludeAssignements"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToSystemIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_SystemIncludeAssignements"))}, 403); %><tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "systemnonsystempageletentrypointsfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("AssignedToTypeSelect","PageletSearch_AssignedToContentIncludeType"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("SystemManaged","false"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("AssignmentSelectionRadioGroup","PageletSearch_ContentIncludeAssignements"),
new TagParameter("AssignedToTypeParam",getObject("PageletSearchResultDict:PageletSearch_AssignedToContentIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("PageletSearchResultDict:PageletSearch_ContentIncludeAssignements"))}, 415); %><% } %><% printFooter(out); %>