<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript" type="text/javascript">
// create script include for popcalendar
var e = document.createElement('script');
with (e) 
{
type = 'text/javascript';
language = 'JavaScript';
src = '<%=context.getFormattedValue(context.webRoot(),null)%>/js/popcalendar-1.6.js';
id = 'popCalendarInclude'
}
// add element to site's head section if not yet added
if (document.getElementById('popCalendarInclude') == null) 
{
document.getElementsByTagName("head")[0].appendChild(e);
}
// set css directory for popcalendar
var cssDir = "<%=context.getFormattedValue(context.webRoot(),null)%>/css/";
</script><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("inputfieldlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("invalid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("required")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("required"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><span class="star">*</span><% } %></td><% } else { %><td class="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("inputfieldlabelclass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldlabelclass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("required")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("required"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><span class="star">*</span><% } %></td><% } %></tr>
<tr>
<td class="fielditem_comment"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td><% } %><td class="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("inputfieldeditclass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldeditclass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("invalid")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("dateobject"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><td><input type="text" id="<% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("inputfieldsize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldsize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>12<% } %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("datestring"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="inputfield_en"/></td><% } else { %><td><input type="text" id="<% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("inputfieldsize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldsize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>12<% } %>" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("dateobject"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="inputfield_en"/></td><% } %></tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0">
<tr><% getPipelineDictionary().put("eUUID", UUIDMgr.getInstance().createUUIDString().replace(".","")); %><td id="<% {String value = null;try{value=context.getFormattedValue(getObject("eUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";out.write(value);} %>">
<script type="text/javascript">
var button;
button = '<table border="0" cellspacing="4" cellpadding="0">';
button+= '<tr>';
button+= '<td class="button"><input type="button" class="button" value="..."'; 
button+= 'onclick="popCalendar.show(this, \'<% {String value = null;try{value=context.getFormattedValue(getObject("inputfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>\', \'<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>\', \'<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>\')"/></td>';
button+= '</tr>';
button+= '</table>';
document.getElementById("<% {String value = null;try{value=context.getFormattedValue(getObject("eUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";out.write(value);} %>").innerHTML = button;
</script>
</td>
</tr>
<tr>
<td class="fielditem_comment">&nbsp;</td>
</tr>
</table><% } %></td>
<td>
&nbsp;&nbsp;
</td><% printFooter(out); %>