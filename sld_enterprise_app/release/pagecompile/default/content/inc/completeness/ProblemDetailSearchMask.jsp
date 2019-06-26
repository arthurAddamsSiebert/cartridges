<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("ContentRepository:UUID"),null)%>" />
<input type="hidden" name="preselectedProblemType" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("preselectedProblemType"),null)),null)%>" />
<input type="hidden" name="preselectedLocale" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("preselectedLocale"),null)),null)%>" />
<table class="infobox w e" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="label" nowrap="nowrap">
<label class="label label_light" for="<%=context.getFormattedValue(getObject("ContentCompletenessDetailSearch:NameOrID:QualifiedName"),null)%>"><% {out.write(localizeISText("ProblemDetailSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td> 
<input type="text" 
name="<%=context.getFormattedValue(getObject("ContentCompletenessDetailSearch:NameOrID:QualifiedName"),null)%>" 
id="<%=context.getFormattedValue(getObject("ContentCompletenessDetailSearch:NameOrID:QualifiedName"),null)%>" 
class="inputfield_en"
value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ContentCompletenessDetailSearch:NameOrID:Value"),null)),null)%>" />
</td>
<td class="label" nowrap="nowrap">
<label class="label label_light label_horizontal_align" for="paramProblemType"><% {out.write(localizeISText("ProblemDetailSearchMask.ProblemType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","checkEmptySlots"),
new TagParameter("key0","missingMandatory"),
new TagParameter("value1","Empty slot / placeholder"),
new TagParameter("value0","Missing configuration parameter"),
new TagParameter("mapname","ProblemTypes")}, 23); %><td>
<select name="<%=context.getFormattedValue(getObject("ContentCompletenessDetailSearch:ProblemType:QualifiedName"),null)%>" id="paramProblemType" 
class="select inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("disableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("disableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("preselectedProblemType"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<option value="all"><% {out.write(localizeISText("ProblemDetailSearchMask.AllProblemTypes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProblemTypes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% while (loop("ProblemTypes:KeySet","ProblemType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProblemType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentCompletenessDetailSearch:ProblemType:Value"),null).equals(context.getFormattedValue(getObject("ProblemType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("ProblemTypes:get(ProblemType)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
<td class="label" nowrap="nowrap">
<label class="label label_light label_horizontal_align" for="paramLanguage"><% {out.write(localizeISText("ProblemDetailSearchMask.Language.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<select name="<%=context.getFormattedValue(getObject("ContentCompletenessDetailSearch:locale:QualifiedName"),null)%>" id="paramLanguage" 
class="select inputfield_en" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("disableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("disableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("preselectedLocale"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ContentCompletenessDetailSearch:ProblemType:Value"),null).equals(context.getFormattedValue("checkEmptySlots",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<option value="all"><% {out.write(localizeISText("ProblemDetailSearchMask.AllLanguages.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Locales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("ContentCompletenessDetailSearch:locale:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</option><% } %></select> 
</td>
<td width="100%">
<table border="0" cellspacing="5" cellpadding="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProblemDetailSearchMask.Find.button",null)),null)%>" class="button" name="find"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table class="infobox w e s" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="label_text"><label class="label label_text label_light"><% {out.write(localizeISText("ProblemDetailSearchMask.PresetStartTime.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("startdate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("startdate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="label_text"><label class="label label_text label_light label_horizontal_align"><% {out.write(localizeISText("ProblemDetailSearchMask.PresetEndTime.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" nowrap="nowrap" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("enddate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("enddate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
<script lang="JavaScript">
$(function() {
$('<%=context.getFormattedValue("#",null)%>paramProblemType').change(function() {
if ($('<%=context.getFormattedValue("#",null)%>paramProblemType option:selected').attr('value') === 'checkEmptySlots') {
$('<%=context.getFormattedValue("#",null)%>paramLanguage').attr('disabled','disabled');
}
else {
if ('<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("preselectedLocale"),null)),null)%>' === 'true') {}
else $('<%=context.getFormattedValue("#",null)%>paramLanguage').removeAttr('disabled');
}
}); 
});
</script><% printFooter(out); %>