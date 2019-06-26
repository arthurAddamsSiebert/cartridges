<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><input type="hidden" name="webform-id" value="CampaignSearch" /><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "3");} %><script type="text/javascript">
/* if the checkbox is deselected, then the appropriate input field will be cleared */
function clearInputfield (checkboxfield, inputfieldid) 
{
if (checkboxfield.checked==false)
{
inputfield = document.getElementById (inputfieldid);
if (inputfield != '') 
{
inputfield.value='';
}
}
return false;
}
</script><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("CampaignSearch_52.TheSearchCouldNotBeExecutedSuccessfullyPleaseRefine.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("CampaignSearch_52.SimpleCampaignSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null),context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:FormattedValue"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("CampaignSearch_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;</td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap">
<label class="label label_light label_indent label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td><% } else { %><td class="infobox_item" nowrap="nowrap">
<label class="label label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td><% } %><td><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="55" class="inputfield_en"/></td>
<td class="label_select" nowrap="nowrap">
<label class="label label_select label_light label_horizontal_align" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class=class="infobox_item">
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en">
<option value=""><% {out.write(localizeISText("CampaignSearch_52.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignSearchForm:Type:FormattedValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CampaignSearch_52.Component.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignSearchForm:Type:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CampaignSearch_52.Promotion.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignSearchForm:Type:FormattedValue"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CampaignSearch_52.PageVariants.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="w100">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="simple"/><input type="submit" name="searchSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CampaignSearchMessages_52.isml", null, "85");} %></table>
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("CampaignSearch_52.AdvancedCampaignSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null),context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:FormattedValue"),null)).addURLParameter(context.getFormattedValue("search_CampaignName",null),context.getFormattedValue(getObject("CampaignName"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)).addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("SearchTerm"),null))),null)%>" class="switch_link"
><% {out.write(localizeISText("CampaignSearch_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
&nbsp;
</td>
</tr>
<tr><td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox searchbox">
<colgroup>
<col width="10%"/>
<col width="10"/>
<col width="40%"/>
<col width="50%"/>
</colgroup>
<tr>
<td>
<input type="submit" name="search" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Find.input",null)),null)%>" style="position: absolute; top: -50000px;"/>
</td>
</tr>
<tr><td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("CampaignSearch_52.GeneralAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignSearchForm:CampaignName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><td class="label">
<label class="label label_light label_indent label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td><% } else { %><td class="label" nowrap="nowrap">
<label class="label label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td><% } %><td colspan="2" class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearchForm:CampaignName:FormattedValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><input 
type="text" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
maxlength="255" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
class="inputfield_en w100"
/><% } else { %><input 
type="text" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:CampaignName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
maxlength="255"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_CampaignName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearch_CampaignName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("WFCampaignSimpleSearch_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
class="inputfield_en w100"
/><% } %></td>
<td>&#160;</td>
</tr>
<tr>
<td class="label_select" nowrap="nowrap">
<label class="label label_select label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Status:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="table_detail" colspan="3">
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Status:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Status:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"class="inputfield_en">
<option value=""><% {out.write(localizeISText("CampaignSearch_52.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CampaignSearchForm:Status:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CampaignSearch_Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignSearch_Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {out.write(localizeISText("CampaignSearch_52.Enabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CampaignSearchForm:Status:FormattedValue"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CampaignSearch_Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignSearch_Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {out.write(localizeISText("CampaignSearch_52.Disabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr><td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("CampaignSearch_52.Duration.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
<tr>
<td class="label_date" nowrap="nowrap">
<label class="label label_light label_indent label_date_outside" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:StartDate:Day:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.StartDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td align="left" class="table_detail" colspan="3">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<!-- get latest value of start date input field --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_StartDate_Day"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CampaignSearch_StartDate_Day")); getPipelineDictionary().put("startDate_Day", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CampaignSearchForm:StartDate:Day:FormattedValue")); getPipelineDictionary().put("startDate_Day", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_StartDate_Time"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CampaignSearch_StartDate_Time")); getPipelineDictionary().put("startDate_Time", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CampaignSearchForm:StartDate:Time:FormattedValue")); getPipelineDictionary().put("startDate_Time", temp_obj);} %><% } %><!-- use the latest value of start date input field --><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("startDate_Time")),
new TagParameter("DateInputFieldName",getObject("CampaignSearchForm:StartDate:Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("CampaignSearchForm:StartDate:Time:QualifiedName")),
new TagParameter("DateString",getObject("startDate_Day")),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("CampaignSearch_52.Time.TimeInputFieldLabel",null))),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("CampaignSearchForm:StartDate:Value"))}, 213); %></tr>
</table>
</td>
</tr>
<tr>
<td class="label_date" nowrap="nowrap">
<label class="label label_light label_indent label_date_outside" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:EndDate:Day:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.EndDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td> 
<td align="left" class="table_detail" colspan="3">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<!-- get latest value of end date input field --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_EndDate_Day"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",234,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CampaignSearch_EndDate_Day")); getPipelineDictionary().put("endDate_Day", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CampaignSearchForm:EndDate:Day:FormattedValue")); getPipelineDictionary().put("endDate_Day", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_EndDate_Time"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CampaignSearch_EndDate_Time")); getPipelineDictionary().put("endDate_Time", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CampaignSearchForm:EndDate:Time:FormattedValue")); getPipelineDictionary().put("endDate_Time", temp_obj);} %><% } %><!-- use the latest value of end date input field --><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("endDate_Time")),
new TagParameter("DateInputFieldName",getObject("CampaignSearchForm:EndDate:Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("CampaignSearchForm:EndDate:Time:QualifiedName")),
new TagParameter("DateString",getObject("endDate_Day")),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("CampaignSearch_52.Time.TimeInputFieldLabel1",null))),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("CampaignSearchForm:EndDate:Value"))}, 246); %> 
</tr>
</table>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="infobox_subtitle" colspan="4"><% {out.write(localizeISText("CampaignSearch_52.CampaignContent.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap">
<label class="label label_checkbox label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Page:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.PageVariants.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="input_checkbox">
<input 
type="checkbox" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Page:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Page:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="1" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CampaignSearchForm:Page:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("PageNames"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CampaignSearch_Page")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignSearch_Page"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %>
checked="checked" 
<% } %> 
onchange="return clearInputfield(this, 'searchform_pagename');"
/>
</td>
<td class="infobox_item_before_button">
<input 
type="text" 
id="searchform_pagename" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:PageName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
maxlength="350" 
class="inputfield_en w100" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageNames"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",293,e);}if (_boolean_result) { %><% while (loop("PageNames","PageName","PageCounter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PageCounter"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %>
,&nbsp;
<% } %><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("PageName")),
new TagParameter("Locale",getObject("CurrentSession:Locale"))}, 298); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_PageName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CampaignSearch_PageName"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {302}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:PageName:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {304}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>" 
readonly="readonly" 
/>
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectPageVariants" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Select.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap">
<label class="label label_checkbox label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Component:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {320}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Components.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="input_checkbox">
<input 
type="checkbox" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Component:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {327}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Component:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {328}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="1" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CampaignSearchForm:Component:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("ComponentNames"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CampaignSearch_Component")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignSearch_Component"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",330,e);}if (_boolean_result) { %>
checked="checked"
<% } %> 
onchange="return clearInputfield(this, 'searchform_componentname');"
/>
</td>
<td class="infobox_item_before_button">
<input 
type="text" 
id="searchform_componentname" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:ComponentName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {342}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
maxlength="350" 
class="inputfield_en w100" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ComponentNames"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",345,e);}if (_boolean_result) { %><% while (loop("ComponentNames","ComponentName","ComponentCounter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ComponentCounter"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %>
,&nbsp;
<% } %><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("ComponentName")),
new TagParameter("Locale",getObject("CurrentSession:Locale"))}, 350); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_ComponentName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",353,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CampaignSearch_ComponentName"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {354}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:ComponentName:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {356}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>" 
readonly="readonly"
/>
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectComponents" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Select.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap">
<label class="label label_checkbox label_light label_indent" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Promotion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {372}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CampaignSearch_52.Promotions.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="input_checkbox">
<input 
type="checkbox" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Promotion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:Promotion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {380}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="1" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CampaignSearchForm:Promotion:FormattedValue"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("PromotionNames"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CampaignSearch_Promotion")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignSearch_Promotion"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",382,e);}if (_boolean_result) { %>
checked="checked"
<% } %> 
onchange="return clearInputfield(this, 'searchform_promotionname');"
/>
</td>
<td class="infobox_item_before_button">
<input 
type="text" 
id="searchform_promotionname" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:PromotionName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {395}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
maxlength="350" 
class="inputfield_en w100" 
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionNames"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",398,e);}if (_boolean_result) { %><% while (loop("PromotionNames","PromotionName","PromotionCounter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PromotionCounter"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",400,e);}if (_boolean_result) { %>
,&nbsp;
<% } %><% processOpenTag(response, pageContext, "marketingobjectdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Object",getObject("PromotionName"))}, 403); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignSearch_PromotionName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",406,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("CampaignSearch_PromotionName"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {407}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignSearchForm:PromotionName:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {409}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>" 
readonly="readonly"
/>
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectPromotions" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Select.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchFormSubmitted" value="true"/>
<input type="hidden" name="SearchType" value="parametric"/>
<input type="submit" name="search" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CampaignSearch_52.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td> 
</tr>
</table><% } %><% printFooter(out); %>