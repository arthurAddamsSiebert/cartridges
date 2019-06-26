<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="java.util.ArrayList"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessPromotionActivationCondition-GetPromotion",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("RebateID",getObject("ContextObjectID"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><% {Object temp_obj = (getObject("resultDict:Promotion")); getPipelineDictionary().put("Promotion", temp_obj);} %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:PromotionUUID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:UsePromotionTimeFrame:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue((( ((Number) new Double(1)).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("ActivationTimeCondition.PromotionPeriod.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail w100" colspan="2"> <% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:StartDate"),new Integer(DATE_TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:EndDate"),new Integer(DATE_TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("ActivationTimeCondition.Frequency.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><input type="radio" id="allDays" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:DaysActive:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="all" checked="checked"/></td>
<td class="table_detail w100"><% {out.write(localizeISText("ActivationTimeCondition.AllDaysDuringPeriodS.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><input type="radio" id="dayofweek" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:DaysActive:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="dayofweek"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DaysActive:Value"),null).equals(context.getFormattedValue("dayofweek",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
checked="checked"
<% } %>/>
</td>
<td class="fielditem">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:DayOfWeek:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><span class="fielditem2_error"><% {out.write(localizeISText("ActivationTimeCondition.OnlyOn","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else { %><% {out.write(localizeISText("ActivationTimeCondition.OnlyOn1","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td>
&nbsp;<select id="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:DayOfWeek:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:DayOfWeek:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en">
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Sundays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Mondays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Tuesdays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="4" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Wednesdays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="5" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Thursdays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="6" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Fridays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="7" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DayOfWeek:Value"),null).equals(context.getFormattedValue("7",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ActivationTimeCondition.Saturdays.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<input type="radio" id="dayofmonth" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:DaysActive:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="dayofmonth" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConditionForm:DaysActive:Value"),null).equals(context.getFormattedValue("dayofmonth",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
checked="checked"
<% } %>/>
</td>
<td class="fielditem">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:DayOfMonth:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><span class="fielditem2_error"><% {out.write(localizeISText("ActivationTimeCondition.OnlyOn2","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else { %><% {out.write(localizeISText("ActivationTimeCondition.OnlyOn3","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td><%
									ArrayList<String> days = new ArrayList<String>();
									for (int i=1; i < 32; i++) {
										days.add(String.valueOf(i));
									}  
									getPipelineDictionary().put("DaysOfMonth", days.iterator());
								%>
&nbsp;<% {out.write("<");out.write("SELECT class=\"inputfield_en\" NAME=\""+context.getFormattedValue(getObject("ConditionForm:DayOfMonth:QualifiedName"),null)+"\">");String value, description;while (loop("DaysOfMonth",null)){out.write("<");out.write("OPTION ");_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DaysOfMonth"),null).equals(context.getFormattedValue(getObject("ConditionForm:DayOfMonth:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) {out.write("SELECTED ");}out.print("VALUE =\"");value = context.getFormattedValue(getObject("DaysOfMonth"),null);description = context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("condition.DaysOfMonth.Name",null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("DaysOfMonth"),null),null);value = encodeString(value);description = encodeString(description);out.write(value + "\">");out.write(description + "</OPTION>");}out.write("</SELECT>");} %></td>
<td>
&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:DayOfMonth:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><span class="fielditem2_error"><% {out.write(localizeISText("ActivationTimeCondition.OfMonth","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% } else { %><% {out.write(localizeISText("ActivationTimeCondition.OfMonth1","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:ConditionStartDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="7" alt="" border="0"/><br/><% {out.write(localizeISText("ActivationTimeCondition.StartDate","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Condition:ConditionStartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("ConditionForm:ConditionStartDate:ConditionStartDate_Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("ConditionForm:ConditionStartDate:ConditionStartDate_Time:QualifiedName")),
new TagParameter("DateObject",getObject("Condition:ConditionStartDate"))}, 101); %><% } else { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("ConditionForm:ConditionStartDate:ConditionStartDate_Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("ConditionForm:ConditionStartDate:ConditionStartDate_Time:QualifiedName")),
new TagParameter("DateObject",getObject("Promotion:StartDate"))}, 108); %><% } %></tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:ConditionEndDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="7" alt="" border="0"/><br/><% {out.write(localizeISText("ActivationTimeCondition.EndDate","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Condition:ConditionEndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("ConditionForm:ConditionEndDate:ConditionEndDate_Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("ConditionForm:ConditionEndDate:ConditionEndDate_Time:QualifiedName")),
new TagParameter("DateObject",getObject("Condition:ConditionEndDate"))}, 122); %><% } else { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("ConditionForm:ConditionEndDate:ConditionEndDate_Day:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("ConditionForm:ConditionEndDate:ConditionEndDate_Time:QualifiedName")),
new TagParameter("DateObject",getObject("Promotion:EndDate"))}, 129); %><% } %></tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap "<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ConditionForm:ConditionIntraDayStartTime:isInvalid")).booleanValue() || ((Boolean) getObject("ConditionForm:ConditionIntraDayEndTime:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="7" alt="" border="0"/><br/><% {out.write(localizeISText("ActivationTimeCondition.IntradayPeriodFrom","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="20%">
<tr><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("ConditionForm:ConditionIntraDayStartTime:QualifiedName")),
new TagParameter("TimeString",getObject("ConditionForm:ConditionIntraDayStartTime:FormattedValue")),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("Invalid",getObject("ConditionForm:ConditionIntraDayStartTime:isInvalid"))}, 146); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("ConditionForm:ConditionIntraDayEndTime:QualifiedName")),
new TagParameter("TimeString",getObject("ConditionForm:ConditionIntraDayEndTime:FormattedValue")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ActivationTimeCondition.to",null))),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("InputFieldLabelClass","fielditem2"),
new TagParameter("Invalid",getObject("ConditionForm:ConditionIntraDayEndTime:isInvalid"))}, 152); %></tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>