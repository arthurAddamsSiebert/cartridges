<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserRenameImage.RenameImage.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
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
        <% URLPipelineAction action203 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null));String site203 = null;String serverGroup203 = null;String actionValue203 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null);if (site203 == null){  site203 = action203.getDomain();  if (site203 == null)  {      site203 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup203 == null){  serverGroup203 = action203.getServerGroup();  if (serverGroup203 == null)  {      serverGroup203 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameSubmit",null)))),null));out.print("\"");out.print(" name=\"");out.print("RenameImageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue203, site203, serverGroup203,true)); %>
	         
	         <div class="server-dialog-content">
	            <div class="dialog-input">
	                <input type="hidden" name="ContextURI" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	                <input type="hidden" name="OldName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	                <label for="NewName"><% {out.write(localizeISText("ServerBrowserRenameImage.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
	                <input type="text" id="NewName" name="NewName" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	            </div>
	            <div class="label_output">
	                <% {out.write(localizeISText("ServerBrowserRenameImage.AttentionRenamingTheImageMayResultInInvalidReferen",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
	            </div>
	        </div>
            <div class="bottom_panel">
                <input id="submit" type="submit" class="button dialog-button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserRenameImage.Rename.button",null)),null)%>"/>
                <input type="reset" class="button dialog-button secondary-button" onclick="tinyMCEPopup.close();" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserRenameImage.Cancel.button",null)),null)%>">
            </div>
        <% out.print("</form>"); %>
        <script type="text/javascript">
   			CSRFGuard.injectTokens(document['RenameImageForm']);
   		</script>
    </body>
</html>
<% printFooter(out); %>