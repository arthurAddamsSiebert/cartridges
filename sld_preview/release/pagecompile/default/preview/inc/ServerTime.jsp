<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.localization.LocaleConstants"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%>
<%@page import="com.intershop.beehive.core.internal.localization.RegionalSettingsPO"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %> 
<%	
	Calendar calendar = new GregorianCalendar();
	int serverTimezoneOffset = (calendar.get(Calendar.ZONE_OFFSET) + calendar.get(Calendar.DST_OFFSET)) / (60*1000);
	getPipelineDictionary().put("ServerTimezoneOffset", serverTimezoneOffset);

	LocaleInformation locale = getPipelineDictionary().getOptional("locale");
	
	if (locale != null)
	{
		locale.getRegionalAttribute(LocaleConstants.LONGDATE_PATTERN);
		String longDatePattern = locale.getRegionalAttribute(LocaleConstants.SHORTDATE_PATTERN);
		
		if ((longDatePattern != null) && !longDatePattern.isEmpty())
		{
			getPipelineDictionary().put("DatePattern", longDatePattern.replace('M', 'm'));
		}
		
		String timePattern = locale.getRegionalAttribute(LocaleConstants.TIME_PATTERN);
		
		if ((timePattern != null) && !timePattern.isEmpty())
		{
			getPipelineDictionary().put("TimePattern", timePattern.replace('m', 'M'));
		}
	}
 %><span class="running-time"></span>
<script language="JavaScript">
var pattern = 'mm/dd/yy hh:MM:ss a';
</script><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DatePattern")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("TimePattern")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><script language="JavaScript">
pattern = '<% {String value = null;try{value=context.getFormattedValue(getObject("DatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("TimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>';
</script><% } %><script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/date.format/date.format.js"></script>
<script language="JavaScript">
var serverTimezoneOffset = parseInt(<% {String value = null;try{value=context.getFormattedValue(getObject("ServerTimezoneOffset"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>);
var clientTimezoneOffset = (new Date()).getTimezoneOffset();
var timeDiff = serverTimezoneOffset + clientTimezoneOffset;
$(function() {
var el = $('.running-time');
var updateClock = function() {
var currentTime = new Date(new Date().getTime() + timeDiff*60*1000);
el.html(currentTime.format(pattern));
window.setTimeout(updateClock, 1000);
};
updateClock();
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("EnablePastDateCheck"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnablePastDateCheck"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
// fixed time isn't set
if (typeof fixedTimeValue === 'undefined') {
return;
}
var isFullsitePreview = $('<%=context.getFormattedValue("#",null)%>sfe-fullsite-preview-bar').length === 1;
// preview and current date time is checked
if (!isFullsitePreview && $('<%=context.getFormattedValue("#",null)%>current_date_time_radio').is(':checked') === true) {
return;
}
var $body = $('body');
var checkFixedTime = function() {
// get current time
var currentTime = new Date(new Date().getTime() + timeDiff*60*1000);
// is fixed time in the past?
if (currentTime > fixedTimeValue) {
// normal preview
if (!isFullsitePreview) {
$('<%=context.getFormattedValue("#",null)%>current_date_time_radio').click();
delete window.fixedTimeValue;
var callback = function(html){
$('<%=context.getFormattedValue("#",null)%>design-preview').removeClass('active');
};
$body.trigger('submitPreviewForm', [ callback ]);
} else {
var url = document.getElementById('siteContent').contentWindow.location.href;
if (typeof url !== 'undefined') {
var href = window.location.href.replace(/([&\?]PreviewTargetUrl=)[^$&]*/i, '$1' + escape(url));
window.location.href = href;
}
}
} else {
// check again
window.setTimeout(checkFixedTime, 1000);
}
};
window.setTimeout(checkFixedTime, 2000);
<% } %>
});
</script> 
<% printFooter(out); %>