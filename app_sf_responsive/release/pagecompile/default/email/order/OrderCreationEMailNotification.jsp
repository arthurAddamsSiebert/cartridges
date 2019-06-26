<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title><% {out.write(localizeISText("email.order_creation.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title> 
</head>
<body>
<p>
<b><% {out.write(localizeISText("email.order_creation.text","",null,null,null,null,null,null,null,null,null,null,null));} %></b>
<p><% {out.write(localizeISText("email.order_creation.customer","",null,getObject("BasketBO:UserBO:FirstName"),getObject("BasketBO:UserBO:LastName"),null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("email.order_creation.subscription","",null,getObject("RecOrderNo"),null,null,null,null,null,null,null,null,null));} %><p/>
<p/>
<p>
<i><% {out.write(localizeISText("email.order_creation.details","",null,null,null,null,null,null,null,null,null,null,null));} %></i>
<p><% {out.write(localizeISText("email.order_creation.recurringorder","",null,getObject("RecOrderID"),null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("email.order_creation.basket","",null,getObject("BasketBO:ID"),null,null,null,null,null,null,null,null,null));} %><p/>
<p/>
<p><% {out.write(localizeISText("email.order_creation.errorcodes","",null,null,null,null,null,null,null,null,null,null,null));} %><ul><% while (loop("ErrorCodes","ErrorCode",null)) { %><li><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } %></ul> 
<p/>
<p><% {out.write(localizeISText("email.order_creation.system","",null,null,null,null,null,null,null,null,null,null,null));} %></p> 
</body>
</html><% printFooter(out); %>