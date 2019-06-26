<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserCloseRefresh.OperationCompleted.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
        <link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
        <script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
        <script type="text/javascript">
function dispose() {
    var refresh = window.tinyMCEPopup.getWindowArg('refresh');
    if (refresh) {
        refresh();
    }
    window.tinyMCEPopup.close();
}
        </script>
    </head>
    <body onload="window.setTimeout(dispose, 100)">
        <% {out.write(localizeISText("ServerBrowserCloseRefresh.PleaseWait",null,null,null,null,null,null,null,null,null,null,null,null));} %>...
    </body>
</html>
<% printFooter(out); %>