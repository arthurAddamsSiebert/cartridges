<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.user.User"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.GregorianCalendar"%><%@page import="java.util.Date"%><%@page import="com.intershop.beehive.core.internal.environment.ServerEnvironment"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><subject><% {out.write(localizeISText("user.InactiveUserNotificationMail.AccountExpirationNotification","",null,null,null,null,null,null,null,null,null,null,null));} %></subject><%
    PipelineDictionary dict = getPipelineDictionary();
    Date disablingDate = (java.util.Date)dict.get("DisablingDate");
    Date currentDate = (java.util.Date)dict.get("CurrentDate");
    Date notificationDate = (java.util.Date)dict.get("NotificationDate");
    
    GregorianCalendar disablingDateCalendar = new GregorianCalendar(disablingDate.getYear(), disablingDate
                    .getMonth(), disablingDate.getDate());
    GregorianCalendar currentDateCalendar = new GregorianCalendar(currentDate.getYear(), currentDate
                    .getMonth(), currentDate.getDate());
    long disablingDateMillis = disablingDateCalendar.getTimeInMillis();
    long currentDateMillis = currentDateCalendar.getTimeInMillis();
    long difMillis = disablingDateMillis - currentDateMillis;
    long millisPerDay = 1000 * 60 * 60 * 24;
    long days = difMillis / millisPerDay;
    dict.put("DaysToDisabling", new Long(days));
%><%
	ServerEnvironment env = ServerEnvironment.getInstance();
	String url = env.getProperty("intershop.WebServerSecureURL");
	if (url != null && !("".equals(url))) {
		dict.put("ServerURL", url);
	}
	String newMapping = env.getProperty("intershop.urlmapping.pipeline");
		if (newMapping != null && !("".equals(newMapping))) {
		dict.put("NewMapping", newMapping);
	}	
 %><% {Object temp_obj = (getObject("User:Profile:Domain:Site:DomainName")); getPipelineDictionary().put("SiteName", temp_obj);} %><% {out.write(localizeISText("user.InactiveUserNotificationMail.DearYouHaveNotBeenLoggedIn1Days",null,null,encodeString(context.getFormattedValue(getObject("User:Profile:FirstName"),null)),(new Double( ((Number) getObject("InactivityPeriod")).doubleValue() -((Number) getObject("DaysToDisabling")).doubleValue())),null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("DaysToDisabling")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("user.InactiveUserNotificationMail.DuringNextCheckingTomorrow1","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("user.InactiveUserNotificationMail.Details","",null,getObject("DaysToDisabling"),null,null,null,null,null,null,null,null,null));} %><% } %><br><br>
<u><b><% {out.write(localizeISText("user.InactiveUserNotificationMail.Details1","",null,null,null,null,null,null,null,null,null,null,null));} %></b></u> <br><% {out.write(localizeISText("user.InactiveUserNotificationMail.DaysToDisabling0InactivityPeriod1Days",null,null,encodeString(context.getFormattedValue(getObject("DaysToDisabling"),null)),encodeString(context.getFormattedValue(getObject("InactivityPeriod"),null)),null,null,null,null,null,null,null,null));} %><% {String value = null;try{value=context.getFormattedValue(getObject("LastActivityDate"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br><% {out.write(localizeISText("user.InactiveUserNotificationMail.DisablingDate",null,null,context.getFormattedValue(getObject("DisablingDate"),new Integer(DATE_LONG)),null,null,null,null,null,null,null,null,null));} %><br>
<br><% {out.write(localizeISText("user.InactiveUserNotificationMail.BestRegardsTheITTeam",null,null,null,null,null,null,null,null,null,null,null,null));} %><% printFooter(out); %>