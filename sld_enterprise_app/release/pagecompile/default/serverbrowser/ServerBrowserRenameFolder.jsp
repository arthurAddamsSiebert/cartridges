<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserRenameFolder.RenameFolder.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
        <link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
        <script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
        <script type="text/javascript"><!--
function initPage() {
    var node = document.getElementById("NewName");
    if (node && node.focus) {
        node.focus();
        node.select();
    }
}
   //--></script>
   		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "17");} %>
    </head>
    <body onload="window.setTimeout(initPage, 100)">
        <% URLPipelineAction action205 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null));String site205 = null;String serverGroup205 = null;String actionValue205 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null);if (site205 == null){  site205 = action205.getDomain();  if (site205 == null)  {      site205 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup205 == null){  serverGroup205 = action205.getServerGroup();  if (serverGroup205 == null)  {      serverGroup205 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null));out.print("\"");out.print(" name=\"");out.print("RenameFolderForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue205, site205, serverGroup205,true)); %>
        	<div class="server-dialog-content">
	            <div class="dialog-input">
	                <input type="hidden" name="ContextURI" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	                <input type="hidden" name="OldName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	                <label for="NewName"><% {out.write(localizeISText("ServerBrowserRenameFolder.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
	                <input type="text" id="NewName" name="NewName" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	            </div>
	            <div class="label_output">
	                <% {out.write(localizeISText("ServerBrowserRenameFolder.AttentionRenamingTheFolderMayResultInInvalidRefere",null,null,null,null,null,null,null,null,null,null,null,null));} %>
	            </div>
            </div>
            <div class="bottom_panel">
            	<input type="submit" class="button dialog-button" id="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserRenameFolder.Rename.button",null)),null)%>"/>
          		<input type="reset" class="button dialog-button secondary-button" onclick="tinyMCEPopup.close();" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserRenameFolder.Cancel.button",null)),null)%>">
            </div>
        <% out.print("</form>"); %>
        <script type="text/javascript">
   			CSRFGuard.injectTokens(document['RenameFolderForm']);
   		</script>
    </body>
</html>
<% printFooter(out); %>