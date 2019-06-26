<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><td class="label_date nowrap" width="1%">
<label class="label label_date label_indent label_light label_date_outside<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Field:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Field:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("Field:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Field:Field:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label>
</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("Time:FormattedValue")),
new TagParameter("DateInputFieldName",getObject("Date:QualifiedName")),
new TagParameter("TimeInputFieldName",getObject("Time:QualifiedName")),
new TagParameter("DateString",getObject("Date:FormattedValue")),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels",null) + context.getFormattedValue(getObject("Time:ID"),null),null))),
new TagParameter("DateInputFieldEditClass","")}, 12); %></tr>
</table>
</td><% printFooter(out); %>