<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserDeleteFolder.DeleteFolder.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
        <link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
        <script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
        <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "8");} %>
    </head>
    <body>
        <% URLPipelineAction action207 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null));String site207 = null;String serverGroup207 = null;String actionValue207 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null);if (site207 == null){  site207 = action207.getDomain();  if (site207 == null)  {      site207 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup207 == null){  serverGroup207 = action207.getServerGroup();  if (serverGroup207 == null)  {      serverGroup207 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeleteFolderForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue207, site207, serverGroup207,true)); %>
            <div class="server-dialog-content">  
	            <div class="label_output">
	                <% {out.write(localizeISText("ServerBrowserDeleteFolder.AreYouSureThatYouWantToDelete0AllImagesAndSubFolde",null,null,encodeString(context.getFormattedValue(getObject("OldName"),null)),null,null,null,null,null,null,null,null,null));} %>
	            </div>
            </div>
            <div class="bottom_panel">
                <input type="hidden" name="ContextURI" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
                <input id="submit" type="submit" class="button dialog-button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserDeleteFolder.Delete.button",null)),null)%>"/>
                <input type="reset" class="button dialog-button secondary-button" onclick="tinyMCEPopup.close();" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserDeleteFolder.Cancel.button",null)),null)%>">
            </div>
        <% out.print("</form>"); %>
        <script type="text/javascript">
   			CSRFGuard.injectTokens(document['DeleteFolderForm']);
   		</script>
    </body>
</html>
<% printFooter(out); %>