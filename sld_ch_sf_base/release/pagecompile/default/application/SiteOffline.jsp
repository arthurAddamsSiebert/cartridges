<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("application.site_offline.label","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
<style type="text/css">
* { /* exclude browser incompatibilities */
margin: 0;
padding: 0;
}
body {
font: 70% Verdana, Arial, Helvetica, sans-serif;
color: #000;
background: #F0F0F0;
text-align: center; /* ie5: set to get centered layout */
}
h1 {
clear: both; /* always create a new line */
margin-bottom: 9px; 
font-size: 1.3em;
}
h2 {
padding: 0 8px 0 8px;
width: 256px;
background: #CCCCCA;
color: #666;
line-height: 1.5em;
font-size: 1em;
}
p {
padding-bottom: 8px;
font-size: 0.75em;
}
div p {
font-size: 100%;
}
<%=context.getFormattedValue("#",null)%>main {
margin: 30% auto; /* align center */
width: 640px;
text-align: left;
}
<%=context.getFormattedValue("#",null)%>errorMessage {
border: 1px solid #CCCCCA;
padding: 15px;
background: #FFF;
}
a, a:link, a:visited {
color: #000;
text-decoration: underline;
}
a:hover, a:active, a:focus {
background: #ccccca;
color: #000;
text-decoration: none;
}
</style>
</head>
<body>
<div>
<h2><% {out.write(localizeISText("application.we_are_sorry.message","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="ish-error">
<h1><% {out.write(localizeISText("application.system_not_available.error","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<p><% {out.write(localizeISText("application.check_again_soon.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
</div>
</body>
</html><% printFooter(out); %>