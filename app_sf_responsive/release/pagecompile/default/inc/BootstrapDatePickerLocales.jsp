<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script type="text/javascript">
(function(a) {a.fn.datepicker.dates.<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> = {days: ["<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.sunday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.monday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.tuesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.wednesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.thursday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.friday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.days.saturday",null)),null)%>"],daysShort: ["<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.sunday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.monday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.tuesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.wednesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.thursday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.friday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysShort.saturday",null)),null)%>"],daysMin: ["<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.sunday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.monday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.tuesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.wednesday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.thursday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.friday",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.daysMin.saturday",null)),null)%>"],months: ["<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.january",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.february",null)),null)%>","<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.march",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.april",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.may",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.june",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.july",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.august",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.september",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.october",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.november",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.months.december",null)),null)%>"],monthsShort: ["<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.january",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.february",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.march",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.april",null)),null)%>","<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.may",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.june",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.july",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.august",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.september",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.october",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.november",null)),null)%>", "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsShort.december",null)),null)%>"],today: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.today",null)),null)%>",monthsTitle: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.monthsTitle",null)),null)%>",clear: "<%=context.getFormattedValue(localizeText(context.getFormattedValue("bootstrapdatepicker.clear",null)),null)%>",weekStart: 1,format: "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",titleFormat:"MM yyyy"}})(jQuery);
</script><% printFooter(out); %>