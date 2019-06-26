<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title><% {out.write(localizeISText("PromotionBudgetPercentageNotificationMail.BudgetNotificationEmailFor0BudgetDropped.title","",null,getObject("AppliedRebateBO:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),getObject("AppliedRebateBO:RebateBO:PromotionBO:BudgetNotificationThreshold"),null,null,null,null,null,null,null,null));} %></title> 
</head>
<body>
<p><% {out.write(localizeISText("PromotionBudgetPercentageNotificationMail.ThisEmailWasSendToYouToInformYouThatTheB","",null,getObject("AppliedRebateBO:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),getObject("AppliedRebateBO:RebateBO:PromotionBO:BudgetNotificationThreshold"),getObject("AppliedRebateBO:RebateBO:PromotionBO:BudgetAmount"),getObject("AppliedRebateBO:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),getObject("AppliedRebateBO:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null,null,null,null));} %><p/>
<br/><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDomain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% {out.write(localizeISText("PromotionBudgetPercentageNotificationMail.ThisIsAPredefinedSystemNotificationEmail","",null,null,null,null,null,null,null,null,null,null,null));} %></body>
</html><% printFooter(out); %>