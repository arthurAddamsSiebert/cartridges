<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%!
    private static String getURIPath(final Object o) {
        final String isfileURI = String.valueOf(o);
        final String prefix = "isfile://";
        if (!isfileURI.startsWith(prefix)) {
            return isfileURI;
        }
        final int unitStart = isfileURI.indexOf('/', prefix.length());
        final int unitEnd = isfileURI.indexOf('/', unitStart + 1);
        final int localeEnd = isfileURI.indexOf('/', unitEnd + 1);
        if (unitStart == -1 || unitEnd == -1 || localeEnd == -1) {
            // No unit found.
            return isfileURI;
        } else {
            return isfileURI.substring(localeEnd + 1);
        }
    }
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserCreateFolder.NewFolder.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
        <link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
        <script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
        <script type="text/javascript"><!--
function initPage() {
    var node = document.getElementById("FolderName");
    if (node && node.focus) {
        node.focus();
    }
}
   //--></script>
   		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "33");} %>
    </head>
    <body onload="window.setTimeout(initPage, 100)">
        <% URLPipelineAction action211 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-CreateFolder",null)))),null));String site211 = null;String serverGroup211 = null;String actionValue211 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-CreateFolder",null)))),null);if (site211 == null){  site211 = action211.getDomain();  if (site211 == null)  {      site211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup211 == null){  serverGroup211 = action211.getServerGroup();  if (serverGroup211 == null)  {      serverGroup211 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-CreateFolder",null)))),null));out.print("\"");out.print(" name=\"");out.print("CreateFolderForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue211, site211, serverGroup211,true)); %>
	        <div class="server-dialog-content">
	            <div class="dialog-input">
	                <input type="hidden" name="ContextURI" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	                <label for="FolderName"><% {out.write(localizeISText("ServerBrowserCreateFolder.FolderName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
	                <input type="text" id="FolderName" name="FolderName" size="40">
	            </div>
	            <div class="dialog-input">
	                <label><% {out.write(localizeISText("ServerBrowserCreateFolder.CreateIn",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label>
	                <span class="label_output"><%=stringToHtml(getURIPath(getObject("ContextURI")))%></span>
	            </div>
	        </div>
            <div class="bottom_panel">
                <input id="submit" type="submit" class="button dialog-button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserCreateFolder.Create.button",null)),null)%>"/>
            	<input type="reset" class="button dialog-button secondary-button" onclick="tinyMCEPopup.close();" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserCreateFolder.Cancel.button",null)),null)%>">
            </div>
        
        <% out.print("</form>"); %>
        <script type="text/javascript">
   			CSRFGuard.injectTokens(document['CreateFolderForm']);
   		</script>
    </body>
</html>
<% printFooter(out); %>