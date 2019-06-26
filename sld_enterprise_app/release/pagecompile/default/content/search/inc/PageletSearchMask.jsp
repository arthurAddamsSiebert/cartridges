<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletSearchMask.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.TreeSet"%><%@page import="java.text.Collator"%><%@page import="com.intershop.beehive.emf.core.GroupableElement"%><%@page import="com.intershop.sellside.pmc.capi.PageletModelUtils"%><% {try{executePipeline("ProcessPageletSearch-GetPageletDefinitions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PageFlag",getObject("page")))).addParameter(new ParameterEntry("PageletModelRepository",getObject("PageletSearchResultDict:PageletModelRepository")))))),"GetPageletDefinitions");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetPageletDefinitions:PageletDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% TreeSet<String> groups = new TreeSet<String>(Collator.getInstance(getRequest().getLocale().getJavaLocale())); %><% while (loop("GetPageletDefinitions:PageletDefinitions","PageletDefinition",null)) { %><% 
			String g = PageletModelUtils.INSTANCE.getDisplayGroup((GroupableElement)getObject("PageletDefinition"),getRequest().getLocale());
			if (g != null)
			{
				groups.add(g);
			}
		%><% } %><% getPipelineDictionary().put("groups", groups); %><% } %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "23");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("searchtype")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("searchtype"),null).equals(context.getFormattedValue("advanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><input type="submit" name="findAdvanced" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchMask.Find.input",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox searchbox w e s">
<tr>
<td class="infobox_title" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSearchMask.AdvancedPageVariantSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSearchMask.AdvancedComponentSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td align="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-SwitchSimpleAdvanced",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>"
class="switch_link"><% {out.write(localizeISText("PageletSearchMask.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="4">
<table width="100%">
<colgroup>
<col width="18%"/>
<col width="32%"/>
<col width="10%"/>
<col width="32%"/>
</colgroup>
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("PageletSearchMask.GeneralAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_Name")); getPipelineDictionary().put("PageletName", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_NameOrContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_NameOrContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_NameOrContent")); getPipelineDictionary().put("PageletName", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("PageletName", temp_obj);} %><% }} %><td nowrap="nowrap" class="label">
<label class="label label_light label_indent" for="PageletSearch_Name"><% {out.write(localizeISText("PageletSearchMask.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" name="PageletSearch_Name" id="PageletSearch_Name" class="inputfield_en w100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label label_light label_indent" for="PageletSearch_PageletID"><% {out.write(localizeISText("PageletSearchMask.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" name="PageletSearch_PageletID" id="PageletSearch_PageletID" class="inputfield_en w100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_Application_Type"><% {out.write(localizeISText("PageletSearchMask.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 77); %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_Pagelet_Group"><% {out.write(localizeISText("PageletSearchMask.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_PageletGroup" id="PageletSearch_Pagelet_Group" class="select inputfield_en" data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-GetPageletDefinitionsForGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),null)%>">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("groups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% while (loop("groups","group",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("group"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_Pagelet_Type"><% {out.write(localizeISText("PageletSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_PageletType" id="PageletSearch_Pagelet_Type" class="select inputfield_en" style="width:225px;">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:PageletDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:PageletDefinitions","PageletDefinition",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletDefinition,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_LabelID"><% {out.write(localizeISText("PageletSearchMask.Labels.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_LabelID" id="PageletSearch_LabelID" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:Labels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:Labels","Label",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_LabelID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Label:DisplayName(locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName(locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_LastModifiedDateFrom"><% {out.write(localizeISText("PageletSearchMask.LastModified.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_LastModifiedDateFrom"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_LastModifiedDateFrom")),
new TagParameter("Invalid","")}, 145); %><td> &nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_LastModifiedDateTo"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchMask.To.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_LastModifiedDateTo")),
new TagParameter("Invalid","")}, 151); %></tr></table>
</td>
<td>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SearchMaskValues:SharingContentDomains:isEmpty")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent"><% {out.write(localizeISText("PageletSearchMask.Sharing.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_All"><% {out.write(localizeISText("PageletSearchMask.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_Local" value="local" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("local",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_Local"><% {out.write(localizeISText("PageletSearchMask.Local.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_SharingSearchType" id="PageletSearch_SharingSearchType_Shared" value="sharedFromRepository" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharingSearchType"),null).equals(context.getFormattedValue("sharedFromRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text" for="PageletSearch_SharingSearchType_Shared"><% {out.write(localizeISText("PageletSearchMask.SharedFrom.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<select name="PageletSearch_SharedRepositoryDomainID" class="select inputfield_en" style="width:200;">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("SearchMaskValues:SharingContentDomains","sharingDomain",null)) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","sharingDomainDisplayName"),
new TagParameter("contentDomain",getObject("sharingDomain"))}, 183); %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sharingDomain:UUID"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SharedRepositoryDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("sharingDomainDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td> 
</tr>
</table>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr><% } %><tr><td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("PageletSearchMask.Parameters.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="PageletSearch_ConfigParamType"><% {out.write(localizeISText("PageletSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="2">
<table>
<tr>
<td class="infobox_item">
<select name="PageletSearch_ConfigParamType" id="PageletSearch_ConfigParamType" class="select inputfield_en" style="width:200;">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:ConfigurationParameterDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:ConfigurationParameterDefinitions","ConfigParamDef",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigParamDef:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ConfigParamType"),null).equals(context.getFormattedValue(getObject("ConfigParamDef:QualifiedName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ConfigParamDef:ConfigurationParameterDefinitionCtnr,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ConfigParamDef,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_ConfigParamValue"><% {out.write(localizeISText("PageletSearchMask.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><input type="text" name="PageletSearch_ConfigParamValue" id="PageletSearch_ConfigParamValue" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_ConfigParamValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr>
<tr>
<td class="infobox_subtitle"><% {out.write(localizeISText("PageletSearchMask.Slots.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="3"><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_checkbox" nowrap="nowrap">
<input type="checkbox" name="PageletSearch_SearchForEmptySlots" id="PageletSearch_SearchForEmptySlots" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_SearchForEmptySlots"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %> checked="checked" <% } %>/>
</td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="PageletSearch_SearchForEmptySlots"><% {out.write(localizeISText("PageletSearchMask.WithEmptySlotsBetween.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> &nbsp;</label></td>
<td align="left">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_EmptySlotsFromDate"),
new TagParameter("InputFieldEditClass","infobox_item"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_EmptySlotsFromDate")),
new TagParameter("Invalid","")}, 235); %><td> &nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_EmptySlotsToDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchMask.And.InputFieldLabel",null))),
new TagParameter("InputFieldEditClass","infobox_item"),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_EmptySlotsToDate")),
new TagParameter("Invalid","")}, 242); %></tr>
</table>
</td>
<td class="input_checkbox" nowrap="nowrap" valign="middle">
<input type="checkbox" name="PageletSearch_MandatorySlotsOnly" id="PageletSearch_MandatorySlotsOnly" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_MandatorySlotsOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",255,e);}if (_boolean_result) { %> checked="checked" <% } %>/>
</td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="PageletSearch_MandatorySlotsOnly"><% {out.write(localizeISText("PageletSearchMask.MandatorySlotsOnly.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table></td>
</tr>
<tr><td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("PageletSearchMask.Author.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_AuthorFirstName"><% {out.write(localizeISText("PageletSearchMask.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="PageletSearch_AuthorFirstName" id="PageletSearch_AuthorFirstName" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AuthorFirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {267}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en w100"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="PageletSearch_AuthorLastName"><% {out.write(localizeISText("PageletSearchMask.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="PageletSearch_AuthorLastName" id="PageletSearch_AuthorLastName" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_AuthorLastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en w100"/>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr><td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("PageletSearchMask.Publishing.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchMask.Publishing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_Publishing" id="PageletSearch_Publishing_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Publishing")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Publishing"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_Publishing_All"><% {out.write(localizeISText("PageletSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_Publishing" id="PageletSearch_Publishing_Not Published" value="notPublished" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Publishing"),null).equals(context.getFormattedValue("notPublished",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_Publishing_Not Published"><% {out.write(localizeISText("PageletSearchMask.NotPublished.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchMask.PublishedFromDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",300,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_All"><% {out.write(localizeISText("PageletSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_NoDateDefined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_NoDateDefined"><% {out.write(localizeISText("PageletSearchMask.NoDateDefined.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedFrom" id="PageletSearch_PublishedFrom_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedFrom"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PublishedFrom_between"><% {out.write(localizeISText("PageletSearchMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>&nbsp;&nbsp;</td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedFromSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedFromSinceDate")),
new TagParameter("Invalid","")}, 312); %><td>&nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedFromTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedFromTillDate")),
new TagParameter("Invalid","")}, 318); %></tr></table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("PageletSearchMask.PublishedToDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedTo" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_PublishedTo")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_Publishing_All"><% {out.write(localizeISText("PageletSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedTo" id="PageletSearch_PublishedTo_NoDateDefined" value="noDateDefined" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("noDateDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",340,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PublishedTo_NoDateDefined"><% {out.write(localizeISText("PageletSearchMask.NoDateDefined.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="PageletSearch_PublishedTo" id="PageletSearch_PublishedTo_between" value="datePeriod" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PublishedTo"),null).equals(context.getFormattedValue("datePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",343,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_PublishedTo_between"><% {out.write(localizeISText("PageletSearchMask.Between.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>&nbsp;&nbsp;</td>
<td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0"><tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedToSinceDate"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedToSinceDate")),
new TagParameter("Invalid","")}, 348); %><td>&nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PageletSearch_PublishedToTillDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletSearchMask.And.InputFieldLabel",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("PageletSearchResultDict:PageletSearch_PublishedToTillDate")),
new TagParameter("Invalid","")}, 354); %></tr></table>
</td>
</tr>
</table>
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchAssignmentsMask", null, "368");} %><tr>
<td colspan="5" align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchMask.Find.button",null)),null)%>" class="button" name="findAdvanced"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",389,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",390,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSearchMask.PageTemplateSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSearchMask.SimplePageVariantSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",396,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletSearchMask.ComponentTemplateSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletSearchMask.SimpleComponentSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",403,e);}if (_boolean_result) { %><td align="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-SwitchSimpleAdvanced",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("advanced",null))).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>"
class="switch_link"><% {out.write(localizeISText("PageletSearchMask.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %></tr>
<tr>
<td colspan="2">
<table border="0" cellpadding="5" cellspacing="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="PageletSearch_NameOrContent"><% {out.write(localizeISText("PageletSearchMask.NameOrContent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_NameOrContent")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_NameOrContent"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",416,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_NameOrContent")); getPipelineDictionary().put("NameOrContent", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:PageletSearch_Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",418,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletSearchResultDict:PageletSearch_Name")); getPipelineDictionary().put("NameOrContent", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("NameOrContent", temp_obj);} %><% }} %><input type="text" name="PageletSearch_NameOrContent" id="PageletSearch_NameOrContent" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NameOrContent"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {424}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="width:225px;" />
<!--[if IE]><input type="text" style="display: none;" disabled="disabled"/><![endif]-->
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="PageletSearch_Pagelet_Group"><% {out.write(localizeISText("PageletSearchMask.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<select name="PageletSearch_PageletGroup" id="PageletSearch_Pagelet_Group" class="select inputfield_en" data-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-GetPageletDefinitionsForGroup",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null)))),null)%>">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("groups"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",437,e);}if (_boolean_result) { %><% while (loop("groups","group",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {439}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("group"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",440,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {443}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
<td/>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_horizontal_align" for="PageletSearch_Pagelet_Type"><% {out.write(localizeISText("PageletSearchMask.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="PageletSearch_PageletType" id="PageletSearch_Pagelet_Type" class="select inputfield_en">
<option value="all"><% {out.write(localizeISText("PageletSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchMaskValues:PageletDefinitions"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",453,e);}if (_boolean_result) { %><% while (loop("SearchMaskValues:PageletDefinitions","PageletDefinition",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {455}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletDefinition:QualifiedName"),null).equals(context.getFormattedValue(getObject("PageletSearchResultDict:PageletSearch_PageletType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",456,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletDefinition,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {459}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
<td/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",465,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_horizontal_align" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("PageletEntryPointSearchMask.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 468); %></td><% } %><td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchMask.Find.button",null)),null)%>" class="button" name="find"/>
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
</table><% } %><script language="JavaScript" type="text/javascript">
(function() {
function adaptSearchParameter(changedElement, adaptedElement, pipelineParams) {
$.post(changedElement.attr('data-url'), pipelineParams)
.done(function(data) {
adaptedElement.replaceWith(data);
})
.fail(function(xhr) {
if (xhr.status === 401) {
window.location.reload();
}
});
}
var $body = $('body');
$body.on('change keyup', '<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group', function(ev) {
var params = $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group').serialize()+'&'+ $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Type').serialize();
if (ev.keyCode == 13 || ev.keyCode == 0 || ev.keyCode == undefined) {
adaptSearchParameter($('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Group'), $('<%=context.getFormattedValue("#",null)%>PageletSearch_Pagelet_Type'), params);
}
}); 
})();
</script>
<!-- END: PageletSearchMask.isml --><% printFooter(out); %>