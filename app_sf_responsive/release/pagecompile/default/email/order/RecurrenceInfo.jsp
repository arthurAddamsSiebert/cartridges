<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RecurringBasket:Recurring"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("RecurringBasket:RecurrenceInformation")); getPipelineDictionary().put("recurrenceinformation", temp_obj);} %><tr><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr>
<td><% {out.write(localizeISText("subscription.display.recurrence.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% processOpenTag(response, pageContext, "perioddisplay", new TagParameter[] {
new TagParameter("period",getObject("recurrenceinformation:Interval"))}, 7); %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("subscription.display.start_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("recurrenceinformation:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("subscription.display.end_date.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("recurrenceinformation:EndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("recurrenceinformation:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("subscription.display.no_end_date","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr><% } %><% printFooter(out); %>