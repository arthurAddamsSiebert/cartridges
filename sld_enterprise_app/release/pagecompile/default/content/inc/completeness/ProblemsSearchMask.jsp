<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/completeness/ProblemsSearchMessages", null, "6");} %><% processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 9); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContextPipeline"),
new TagParameter("key2","ContextPipeline_"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value2",getObject("ContextPipelineMap")),
new TagParameter("value1",getObject("ContextPipeline")),
new TagParameter("value0",getObject("ContentRepository:UUID")),
new TagParameter("mapname","URLParameters")}, 10); %> 
<% URLPipelineAction action367 = new URLPipelineAction(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentProblemStatistic-Update\",URLParameters)"),null));String site367 = null;String serverGroup367 = null;String actionValue367 = context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentProblemStatistic-Update\",URLParameters)"),null);if (site367 == null){  site367 = action367.getDomain();  if (site367 == null)  {      site367 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup367 == null){  serverGroup367 = action367.getServerGroup();  if (serverGroup367 == null)  {      serverGroup367 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentProblemStatistic-Update\",URLParameters)"),null));out.print("\"");out.print(" name=\"");out.print("update");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue367, site367, serverGroup367,true)); %><table class="infobox w e" border="0" cellspacing="0" cellpadding="0" width="100%">
<tr><td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ContentCompletenessSearch:missingMandatory:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><input type="checkbox" name="<%=context.getFormattedValue(getObject("ContentCompletenessSearch:missingMandatory:QualifiedName"),null)%>" id="missingMandatory" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/> 
<% } else { %><input type="checkbox" name="<%=context.getFormattedValue(getObject("ContentCompletenessSearch:missingMandatory:QualifiedName"),null)%>" id="missingMandatory" value="true" 
checked="checked" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/> 
<% } %></td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text" for="missingMandatory"><% {out.write(localizeISText("ProblemsSearchMask.CheckForMissingMandatoryParameters.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td><label class="label label_select label_light paramLanguage" for="language"><% {out.write(localizeISText("ProblemsSearchMask.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td colspan="4">
<select name="<%=context.getFormattedValue(getObject("ContentCompletenessSearch:locale:QualifiedName"),null)%>" id="Language" class="select inputfield_en paramLanguage" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
<option value="all"><% {out.write(localizeISText("ProblemsSearchMask.AllLanguages.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Locales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("ContentCompletenessSearch:locale:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</option><% } %></select> 
</td>
</tr>
<tr><td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox label_fix5"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ContentCompletenessSearch:checkEmptySlots:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><input type="checkbox" name="<%=context.getFormattedValue(getObject("ContentCompletenessSearch:checkEmptySlots:QualifiedName"),null)%>" id="checkEmptySlots" value="true" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/> 
<% } else { %><input type="checkbox" name="<%=context.getFormattedValue(getObject("ContentCompletenessSearch:checkEmptySlots:QualifiedName"),null)%>" id="checkEmptySlots" value="true" 
checked="checked" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/> 
<% } %></td>
<td class="label_checkbox_text label_fix5">
<label class="label label_checkbox_text" for="checkEmptySlots"><% {out.write(localizeISText("ProblemsSearchMask.CheckForEmptySlotsPlaceholders.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td> 
<% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeInputFieldEditClass",""),
new TagParameter("TimeString",getObject("ContentCompletenessSearch:startdate:time:Value")),
new TagParameter("DateInputFieldName",getObject("ContentCompletenessSearch:startdate:day:QualifiedName")),
new TagParameter("TimeInputFieldLabel",""),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateInputFieldLabelClass","label label_date label_light"),
new TagParameter("Readonly",getObject("DisableInput")),
new TagParameter("Required","true"),
new TagParameter("DateString",getObject("ContentCompletenessSearch:startdate:day:Value")),
new TagParameter("TimeInputFieldName",getObject("ContentCompletenessSearch:startdate:time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ProblemsSearchMask.StartTime.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("ContentCompletenessSearch:startdate:Value")),
new TagParameter("Invalid",getObject("ContentCompletenessSearch:startdate:isInvalid"))}, 64); %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeInputFieldEditClass",""),
new TagParameter("TimeString",getObject("ContentCompletenessSearch:enddate:time:Value")),
new TagParameter("DateInputFieldName",getObject("ContentCompletenessSearch:enddate:day:QualifiedName")),
new TagParameter("TimeInputFieldLabel",""),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateInputFieldLabelClass","label label_date label_light label_horizontal_align"),
new TagParameter("Readonly",getObject("DisableInput")),
new TagParameter("Required","true"),
new TagParameter("DateString",getObject("ContentCompletenessSearch:enddate:day:FormattedValue")),
new TagParameter("TimeInputFieldName",getObject("ContentCompletenessSearch:enddate:time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ProblemsSearchMask.EndTime.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("ContentCompletenessSearch:enddate:Value")),
new TagParameter("Invalid",getObject("ContentCompletenessSearch:enddate:isInvalid"))}, 80); %> 
<td width="100%">&nbsp;</td>
</tr>
</table>
<table class="infobox w s e" cellspacing="0" cellpadding="0" align="right" width="100%" class="w e s">
<tr>
<td>
<table cellspacing="5" cellpadding="0" border="0" align="right">
<tr>
<td class=""button>
<input type="submit" class="button" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProblemsSearchMask.Apply.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisableInput")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisableInput"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>