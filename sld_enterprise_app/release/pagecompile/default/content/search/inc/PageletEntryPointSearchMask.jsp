<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%><%@page import="com.intershop.component.pmc.capi.definition.pagelet.PageEntryPointDefinition"%><%@page import="com.intershop.component.pmc.capi.definition.pagelet.ConfigurationParameterDefinition"%><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 7); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "8");} %><% context.setCustomTagTemplateName("pageletentrypointtypeselectionfiltermask","content/search/inc/PageletEntryPointTypeSelectionFilterMask.isml",true,new String[]{"PageFlag","SelectType","PageletModelRepository","Locale","PageletEntryPointDefinitions","PageIncludeTypeSelectionRadioGroup","PageIncludeTypeSelectionParam","PageletEntryPointDefinitionSelect","PageletEntryPointDefinitionParam"},null); %><%@page import="java.util.TreeSet"%><%@page import="java.text.Collator"%><%@page import="com.intershop.beehive.emf.core.GroupableElement"%><%@page import="com.intershop.sellside.pmc.capi.PageletModelUtils"%><% {try{executePipeline("ProcessPageletEntryPointSearch-PrepareSimpleSearchMask",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PageFlag",getObject("page")))).addParameter(new ParameterEntry("PageletModelRepository",getObject("SearchMaskValues:PageletModelRepository"))).addParameter(new ParameterEntry("PageletModelUtils",getObject("SearchMaskValues:PageletModelUtils")))))),"PageletEntrypointDefinitions");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 29.",e);}} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntrypointDefinitions:Definitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% TreeSet<String> groups = new TreeSet<String>(Collator.getInstance(getRequest().getLocale().getJavaLocale())); %><% while (loop("PageletEntrypointDefinitions:Definitions","PageletDefinition",null)) { %><% 
			String g = PageletModelUtils.INSTANCE.getDisplayGroup((GroupableElement)getObject("PageletDefinition"),getRequest().getLocale());
			if (g != null)
			{
				groups.add(g);
			}
		%><% } %><% getPipelineDictionary().put("groups", groups); %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("searchtype")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("searchtype"),null).equals(context.getFormattedValue("advanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><input type="submit" name="findAdvanced" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.input",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox searchbox w e s" id="pageletEntryPointSearchMask">
<tr>
<td class="infobox_title" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointSearchMask.AdvancedPageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletEntryPointSearchMask.AdvancedIncludeSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td align="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-SwitchSimpleAdvanced",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>"
class="switch_link"><% {out.write(localizeISText("PageletEntryPointSearchMask.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="4">
<table width="100%">
<colgroup>
<col width="15%"/>
<col width="32%"/>
<col width="21%"/>
<col width="32%"/>
</colgroup>
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("PageletEntryPointSearchMask.GeneralAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_Name")); getPipelineDictionary().put("PageletName", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_NameOrID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_NameOrID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_NameOrID")); getPipelineDictionary().put("PageletName", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("PageletName", temp_obj);} %><% }} %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_Name"><% {out.write(localizeISText("PageletEntryPointSearchMask.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="PageletSearch_Name" id="PageletSearch_Name" class="inputfield_en w100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_ID"><% {out.write(localizeISText("PageletEntryPointSearchMask.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="PageletSearch_ID" id="PageletSearch_ID" class="inputfield_en w100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td colspan="2">&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("PageletEntryPointSearchMask.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 96); %></td>
<td colspan="2">&nbsp;</td>
</tr><% } %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_Pagelet_Group"><% {out.write(localizeISText("PageletEntryPointSearchMask.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_PageletGroup" id="PageletSearch_Pagelet_Group" class="select inputfield_en" style="width:225px;" data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-GetPageletEntryPointDefinitionsForGroupAdvancedSearch",null)))),null)%>">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("groups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><% while (loop("groups","group",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("group"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="label_radio label_top" nowrap="nowrap"><label class="label label_radio label_top label_light label_indent" for=""><% {out.write(localizeISText("PageletEntryPointSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="3">
<table id="PageletSearch_TypeSelectionTable" border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="input_radio">
<input type="radio" name="PageletSearch_TypeSelection" id="PageletSearch_TypeSelection_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_TypeSelection")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_TypeSelection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_TypeSelection_All"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("SearchMaskValues:SystemPageletEntryPointDefinitions")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearchResultDict:PageletSearch_SelectedSystemPageletEntryPointDefinition")),
new TagParameter("SelectType","system"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearchResultDict:PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedSystemPageletEntryPointDefinition")}, 137); %><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("SearchMaskValues:ProductPageletEntryPointDefinitions")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearchResultDict:PageletSearch_SelectedProductPageletEntryPointDefinition")),
new TagParameter("SelectType","product"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearchResultDict:PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedProductPageletEntryPointDefinition")}, 149); %><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("SearchMaskValues:CategoryPageletEntryPointDefinitions")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearchResultDict:PageletSearch_SelectedCategoryPageletEntryPointDefinition")),
new TagParameter("SelectType","category"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearchResultDict:PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedCategoryPageletEntryPointDefinition")}, 161); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("SearchMaskValues:NonSystemPageletEntryPointDefinitions")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearchResultDict:PageletSearch_SelectedContentPageletEntryPointDefinition")),
new TagParameter("SelectType","content"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearchResultDict:PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedContentPageletEntryPointDefinition")}, 174); %><% } %></table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_LabelID"><% {out.write(localizeISText("PageletEntryPointSearchMask.Labels.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_LabelID" id="PageletSearch_LabelID" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:Labels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:Labels","Label",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_LabelID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Label:DisplayName(locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName(locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %><% } %></select>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside label_light label_indent" for="PageletSearch_LastModifiedDateFrom"><% {out.write(localizeISText("PageletEntryPointSearchMask.LastModified.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_LastModifiedDateFrom"),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass","label_date label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_LastModifiedDateFrom")),
new TagParameter("Invalid","")}, 215); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_LastModifiedDateTo"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletEntryPointSearchMask.To.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass","label_date label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_LastModifiedDateTo")),
new TagParameter("Invalid","")}, 221); %></tr></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SearchMaskValues:SharingContentDomains:isEmpty")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent"><% {out.write(localizeISText("PageletEntryPointSearchMask.Sharing.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td></label> 
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_All"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_Local" value="local" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("local",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_Local"><% {out.write(localizeISText("PageletEntryPointSearchMask.Local.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_Shared" value="sharedFromRepository" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("sharedFromRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_Shared"><% {out.write(localizeISText("PageletEntryPointSearchMask.SharedFrom.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<select name="PageletSearch_SharedRepositoryDomainID" class="select inputfield_en" style="width:200;">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("SearchMaskValues:SharingContentDomains","sharingDomain",null)) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","sharingDomainDisplayName"),
new TagParameter("contentDomain",getObject("sharingDomain"))}, 251); %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {252}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sharingDomain:UUID"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharedRepositoryDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",253,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomainDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td> 
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",264,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_ParentPageNameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.ParentPage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4"><table><tr>
<td><input size="40" type="text" name="PageletSearch_ParentPageNameOrID" id="PageletSearch_ParentPageNameOrID" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ParentPageNameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td class="input_checkbox">
<input type="checkbox" name="PageletSearch_ParentPageIncludeSubsequentPages" id="PageletSearch_ParentPageIncludeSubsequentPages" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ParentPageIncludeSubsequentPages"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="PageletSearch_ParentPageIncludeSubsequentPages"><% {out.write(localizeISText("PageletEntryPointSearchMask.IncludeSubsequentPages.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr></table></td>
</tr><% } %><tr><td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("PageletEntryPointSearchMask.Parameters.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td nowrap="nowrap" class="label_select" ><label class="label label_select label_light label_indent" for="PageletSearch_ConfigParamType"><% {out.write(localizeISText("PageletEntryPointSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="3">
<table>
<tr>
<td>
<select name="PageletSearch_ConfigParamType" id="PageletSearch_ConfigParamType" class="select inputfield_en" style="width:200;">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:PageletDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletModelUtils:OrderedNameableAndReferencableElements(PageletModelUtils:ConfigurationParameterDefinitions(SearchMaskValues:PageletDefinitions))")); getPipelineDictionary().put("ConfigurationParameterDefinitions", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { %><% while (loop("ConfigurationParameterDefinitions","ConfigParamDef",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigParamDef:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ConfigParamType"),null).equals(context.getFormattedValue(getObject("ConfigParamDef:QualifiedName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ConfigParamDef:ConfigurationParameterDefinitionCtnr,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ConfigParamDef,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select>
</td>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_ConfigParamValue"><% {out.write(localizeISText("PageletEntryPointSearchMask.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><input type="text" name="PageletSearch_ConfigParamValue" id="PageletSearch_ConfigParamValue" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ConfigParamValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {299}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
</table>
</td>
</tr>
<tr><td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("PageletEntryPointSearchMask.Publishing.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td class="label_radio label_indent" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletEntryPointSearchMask.Publishing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_Publishing" id="PageletSearch_Publishing_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Publishing")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Publishing"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",312,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_Publishing_All"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_Publishing" id="PageletSearch_Publishing_NotPublished" value="notPublished" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Publishing"),null).equals(context.getFormattedValue("notPublished",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",315,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_Publishing_NotPublished"><% {out.write(localizeISText("PageletEntryPointSearchMask.NotPublished.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio label_fix1" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletEntryPointSearchMask.PublishedFromDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio label_fix1"><input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",327,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_All"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio label_fix1"> <input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_NoDateDefined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",330,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_NoDateDefined"><% {out.write(localizeISText("PageletEntryPointSearchMask.NoDateDefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio label_fix1"><input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",333,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_between"><% {out.write(localizeISText("PageletEntryPointSearchMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedFromSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedFromSinceDate")),
new TagParameter("Invalid","")}, 337); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedFromTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletEntryPointSearchMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass","label_date label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedFromTillDate")),
new TagParameter("Invalid","")}, 342); %></tr></table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio label_fix1" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletEntryPointSearchMask.PublishedToDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio label_fix1"><input type="radio" name="PageletSearch_PublishedTo" id="PageletSearch_PublishedTo_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_PublishedTo")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",361,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedTo_All"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio label_fix1"><input type="radio" name="PageletSearch_PublishedTo" id="PageletSearch_PublishedTo_No_Date_Defined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",364,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedTo_No_Date_Defined"><% {out.write(localizeISText("PageletEntryPointSearchMask.NoDateDefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio label_fix1"><input type="radio" name="PageletSearch_PublishedTo" id="PageletSearch_PublishedTo_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",367,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text label_light" for="PageletSearch_PublishedTo_between"><% {out.write(localizeISText("PageletEntryPointSearchMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedToSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedToSinceDate")),
new TagParameter("Invalid","")}, 371); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedToTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletEntryPointSearchMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass","label_date label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedToTillDate")),
new TagParameter("Invalid","")}, 376); %></tr></table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="5" align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null)%>" class="button" name="findAdvanced"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<script language="JavaScript" type="text/javascript">
(function() {
function adaptSearchParameter (changedElement, adaptedElement, pipelineParams) {
$.post(changedElement.attr('data-url'), pipelineParams, function(data){
adaptedElement.replaceWith(data);
});
};
var $body = $('body');
$body.on('change keyup', '<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group', function(ev) {
if (ev.keyCode === 13 || ev.keyCode === 0 || ev.keyCode === undefined) {
var params = $('select#PageletSearch_Pagelet_Group').serialize()
+'&page=' +<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("page"),null),(String)("javascript")),null)%> +'&'
+ $('input[type="radio"][name="PageletSearch_TypeSelection"]').serialize()+'&'
+ $('select#PageletSearch_SelectedSystemPageletEntryPointDefinition').serialize()+'&'
+ $('select#PageletSearch_SelectedProductPageletEntryPointDefinition').serialize()+'&'
+ $('select#PageletSearch_SelectedCategoryPageletEntryPointDefinition').serialize()+'&'
+ $('select#PageletSearch_SelectedContentPageletEntryPointDefinition').serialize();
adaptSearchParameter ($('select#PageletSearch_Pagelet_Group'), $('table#PageletSearch_TypeSelectionTable'), params);
}
});
})();
</script><% } else { %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s" id="pageletEntryPointSearchMask">
<colgroup>
<col width="60%"/>
<col width="40%"/>
</colgroup>
<tr>
<td class="infobox_title"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",442,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointSearchMask.SimplePageSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletEntryPointSearchMask.SimpleIncludeSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td align="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-SwitchSimpleAdvanced",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("advanced",null))).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>"
class="switch_link"><% {out.write(localizeISText("PageletEntryPointSearchMask.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="2">
<table border="0" cellpadding="5" cellspacing="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="PageletSearch_NameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_NameOrID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_NameOrID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",455,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_NameOrID")); getPipelineDictionary().put("NameOrID", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",457,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_Name")); getPipelineDictionary().put("NameOrID", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("NameOrID", temp_obj);} %><% }} %><input type="text" name="PageletSearch_NameOrID" id="PageletSearch_NameOrID" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {463}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="width:225px;" />
<!--[if IE]><input type="text" style="display: none;" disabled="disabled"/><![endif]-->
</td>
<tr>
</tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="PageletSearch_Pagelet_Group"><% {out.write(localizeISText("PageletEntryPointSearchMask.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<select name="PageletSearch_PageletGroup" id="PageletSearch_Pagelet_Group" data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-GetPageletEntryPointDefinitionsForGroupSimpleSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),null)%>" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("groups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",476,e);}if (_boolean_result) { %><% while (loop("groups","group",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {478}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("group"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",479,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {482}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_horizontal_align" for="PageletSearch_Pagelet_Type"><% {out.write(localizeISText("PageletEntryPointSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_PageletType" id="PageletSearch_Pagelet_Type" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:PageletDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",492,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:PageletDefinitions","PageletDefinition",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {494}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",495,e);}if (_boolean_result) { %>
selected="selected"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletDefinition:SystemManaged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",498,e);}if (_boolean_result) { %>
class="systemmanaged"
<% } %> ><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletDefinition:SystemManaged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",501,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletDefinition,locale)"),null) + context.getFormattedValue(" (S)",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {502}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletDefinition,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {504}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %><% } %></select>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",511,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_horizontal_align" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("ContentPageTreeInc.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 514); %></td><% } %><td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null)%>" class="button" name="find"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<script language="JavaScript" type="text/javascript">
(function() {
function adaptSearchParameter (changedElement, adaptedElement, pipelineParams) {
$.post(changedElement.attr('data-url'), pipelineParams, function(data){
adaptedElement.replaceWith(data);
});
};
var $body = $('body');
$body.on('change keyup', '<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group', function(ev) {
if (ev.keyCode == 13 || ev.keyCode == 0 || ev.keyCode == undefined) {
var params = $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group').serialize()+'&'+ $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Type').serialize();
adaptSearchParameter($('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group'), $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Type'), params);
}
}); 
})();
</script><% } %><% printFooter(out); %>