<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("enablepast"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("enablepast", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dateinputfieldlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><td>
<table class="dateTimeInput" style="table-layout: fixed; border:none" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("invalid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><td class="label_date" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("dateinputfieldlabel"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><label for="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("dateinputfieldname"),null)),null)%>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dateinputfieldlabelclass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("dateinputfieldlabelclass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>label label_date<% } %> label_error"><% {String value = null;try{value=context.getFormattedValue(getObject("dateinputfieldlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("required")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("required"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label><% } %></td><% } else { %><td class="label_date" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("dateinputfieldlabel"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><label for="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("dateinputfieldname"),null)),null)%>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dateinputfieldlabelclass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("dateinputfieldlabelclass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>label label_date<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("dateinputfieldlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("required")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("required"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label><% } %></td><% } %></tr>
<tr>
<td class="fielditem_comment"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td><% } %><td>
<table class="dateTimeInput" style="table-layout: fixed; border:none" cellspacing="0" cellpadding="0">
<tr><%
				getPipelineDictionary().put("tmpinvalid", getObject("invalid"));
				getPipelineDictionary().put("tmpdateobject", getObject("dateobject"));
				getPipelineDictionary().put("tmprequired", getObject("required"));
				getPipelineDictionary().put("tmpreadonly", getObject("readonly"));
				String dateInputFieldEditClass = (String)getObject("dateinputfieldeditclass");
				if (dateInputFieldEditClass == null)
				{
					getPipelineDictionary().put("dateinputfieldeditclass", "table_detail");
				}
				String timeInputFieldEditClass = (String)getObject("timeinputfieldeditclass");
				if (timeInputFieldEditClass == null)
				{
					getPipelineDictionary().put("timeinputfieldeditclass", "table_detail");
				}
			%><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("dateinputfieldname")),
new TagParameter("Readonly",getObject("readonly")),
new TagParameter("Required",getObject("required")),
new TagParameter("InputFieldEditClass",getObject("dateinputfieldeditclass")),
new TagParameter("DateString",getObject("datestring")),
new TagParameter("DateButtonStyle",getObject("datebuttonstyle")),
new TagParameter("InputDateWidth",getObject("inputdatewidth")),
new TagParameter("DatePatternUserHint",getObject("datepatternuserhint")),
new TagParameter("EnablePast",getObject("enablepast")),
new TagParameter("DateObject",getObject("dateobject")),
new TagParameter("Invalid",getObject("invalid"))}, 57); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("timeinputfieldname")),
new TagParameter("Readonly",getObject("tmpreadonly")),
new TagParameter("InputTimeWidth",getObject("inputtimewidth")),
new TagParameter("TimeString",getObject("timestring")),
new TagParameter("Required",getObject("tmprequired")),
new TagParameter("InputFieldLabel",getObject("timeinputfieldlabel")),
new TagParameter("InputFieldEditClass",getObject("timeinputfieldeditclass")),
new TagParameter("InputFieldLabelClass",getObject("timeinputfieldlabelclass")),
new TagParameter("TimePatternUserHint",getObject("timepatternuserhint")),
new TagParameter("DateObject",getObject("tmpdateobject")),
new TagParameter("Invalid",getObject("tmpinvalid"))}, 71); %></tr>
</table>
</td><% printFooter(out); %>