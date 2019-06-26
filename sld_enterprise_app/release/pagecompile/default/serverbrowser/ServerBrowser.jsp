<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?><html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title><% {out.write(localizeISText("ServerBrowser.ServerBrowser.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
<link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
<script type="text/javascript"><!-- 
function hov(loc,cls) { 
if ((loc.className) && (!loc.disabled == true)) {
loc.className=cls; 
} 
} 
--></script> 
</head>
<body onload="window.setTimeout(function(){tinyMCEPopup.getWindowArg('server_browser')._onload(window);}, 100);">
<div id="toolbar_area">
<div style="float: right;"><button class="btn" id="refreshButton" onmouseover="hov(this,'btnhov')" onmouseout="hov(this,'btn')" onclick="window.server_browser.command(event, 'Refresh', window);" title="<% {out.write(localizeISText("ServerBrowser.Refresh",null,null,null,null,null,null,null,null,null,null,null,null));} %>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_refresh.gif" alt="<% {out.write(localizeISText("ServerBrowser.Refresh",null,null,null,null,null,null,null,null,null,null,null,null));} %>" /></button><button class="btn" id="uploadButton" onmouseover="hov(this,'btnhov')" onmouseout="hov(this,'btn')" disabled="disabled" onclick="window.server_browser.command(event, 'Upload', window);" title="<% {out.write(localizeISText("ServerBrowser.Upload",null,null,null,null,null,null,null,null,null,null,null,null));} %>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_upload.gif" alt="<% {out.write(localizeISText("ServerBrowser.Upload",null,null,null,null,null,null,null,null,null,null,null,null));} %>" /></button><button class="btn" id="newFolderButton" onmouseover="hov(this,'btnhov')" onmouseout="hov(this,'btn')" disabled="disabled" onclick="window.server_browser.command(event, 'NewFolder', window);" title="<% {out.write(localizeISText("ServerBrowser.NewFolder",null,null,null,null,null,null,null,null,null,null,null,null));} %>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_folder_new.gif" alt="<% {out.write(localizeISText("ServerBrowser.NewFolder",null,null,null,null,null,null,null,null,null,null,null,null));} %>" /></button><button class="btn" id="renameButton" onmouseover="hov(this,'btnhov')" onmouseout="hov(this,'btn')" disabled="disabled" onclick="window.server_browser.command(event, 'Rename', window);" title="<% {out.write(localizeISText("ServerBrowser.Rename",null,null,null,null,null,null,null,null,null,null,null,null));} %>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_rename.gif" alt="<% {out.write(localizeISText("ServerBrowser.Rename",null,null,null,null,null,null,null,null,null,null,null,null));} %>" /></button><button class="btn" id="deleteButton" onmouseover="hov(this,'btnhov')" onmouseout="hov(this,'btn')" disabled="disabled" onclick="window.server_browser.command(event, 'Delete', window);" title="<% {out.write(localizeISText("ServerBrowser.Delete",null,null,null,null,null,null,null,null,null,null,null,null));} %>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_delete.gif" alt="<% {out.write(localizeISText("ServerBrowser.Delete",null,null,null,null,null,null,null,null,null,null,null,null));} %>" /></button></div>
<div><% URLPipelineAction action208 = new URLPipelineAction("javascript:;");String site208 = null;String serverGroup208 = null;String actionValue208 = "javascript:;";if (site208 == null){  site208 = action208.getDomain();  if (site208 == null)  {      site208 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup208 == null){  serverGroup208 = action208.getServerGroup();  if (serverGroup208 == null)  {      serverGroup208 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" name=\"");out.print("server_browser_toolbar");out.print("\"");out.print(" action=\"");out.print("javascript:;");out.print("\"");out.print(" onsubmit=\"");out.print("window.server_browser.command(event, 'Search', search_term.value, top.tinyMCE.activeEditor.windowManager.getParams().target_type);");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue208, site208, serverGroup208,false)); %><div style="display:inline;">
<label for="search_term"><% {out.write(localizeISText("ServerBrowser.Search.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label
><input name="search_term" id="search_term" type="text" size="12"/>
<button id="gobutton" ><% {out.write(localizeISText("ServerBrowser.Go.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %><% URLPipelineAction action209 = new URLPipelineAction("");String site209 = null;String serverGroup209 = null;String actionValue209 = "";if (site209 == null){  site209 = action209.getDomain();  if (site209 == null)  {      site209 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup209 == null){  serverGroup209 = action209.getServerGroup();  if (serverGroup209 == null)  {      serverGroup209 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" name=\"");out.print("server_browser_locale_toolbar");out.print("\"");out.print(" action=\"");out.print("");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue209, site209, serverGroup209,false)); %><div style="display:inline;">
<select name="SelectedLocaleId" class="select" onchange="this.form.submit()"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</div><% out.print("</form>"); %><div> 
</div>
<div id="folder_tree"><div class="server_browser_node closed" src="" uri="" description="Search Results" description2="Search Results" id="folder_searchresult"><div onclick="window.server_browser.toggleFolder(event, this.parentNode);"
ondblclick="window.server_browser.toggleFolder(event, this.parentNode);"
class="node_title"><span onclick="window.server_browser.selectFolder(event, this.parentNode.parentNode, true);"
ondblclick="window.server_browser.selectFolder(event, this.parentNode.parentNode, true);"
class="node_icon_search"><img class="spacer20x11" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"><% {out.write(localizeISText("ServerBrowser.SearchResults.spacer20x11",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></div><div class="subfolder_list" id="folder_searchresult_sublist"></div></div></div>
<div id="entry_list"></div>
<div id="control_area"><% URLPipelineAction action210 = new URLPipelineAction("javascript:;");String site210 = null;String serverGroup210 = null;String actionValue210 = "javascript:;";if (site210 == null){  site210 = action210.getDomain();  if (site210 == null)  {      site210 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup210 == null){  serverGroup210 = action210.getServerGroup();  if (serverGroup210 == null)  {      serverGroup210 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" name=\"");out.print("server_browser");out.print("\"");out.print(" action=\"");out.print("javascript:;");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue210, site210, serverGroup210,false)); %><div class="control_buttons">
<button class="button" onclick="window.server_browser.applyValue(window, selected_uri.value, selected_alt.value, selected_ssl.checked);"><% {out.write(localizeISText("ServerBrowser.Apply.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button class="button secondary-button" onclick="tinyMCEPopup.close();"><% {out.write(localizeISText("ServerBrowser.Cancel.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
<input name="selected_uri" id="selected_uri" type="hidden">
<label for="selected_alt"><% {out.write(localizeISText("ServerBrowser.Selected.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label
><input name="selected_alt" id="selected_alt" type="text" readonly="readonly" size="48"
><label id="selected_lb"></label>
<span>
<input name="selected_ssl" id="selected_ssl" type="checkbox"
><label for="selected_ssl" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowser.ForceSSLEncryptionByUsingHttpsProtocol.label",null)),null)%>"><% {out.write(localizeISText("ServerBrowser.ForceSSL.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</span><% out.print("</form>"); %></div>
<div id="blueprint" style="display: none;">
<div id="blueprint.folder"><div class="server_browser_node closed" src="@src@" uri="@uri@" description="@description@" description2="@description2@" readonly="@readonly@"><div onclick="window.server_browser.toggleFolder(event, this.parentNode);"
ondblclick="window.server_browser.toggleFolder(event, this.parentNode);"
class="node_title"><span onclick="window.server_browser.selectFolder(event, this.parentNode.parentNode, true);"
ondblclick="window.server_browser.selectFolder(event, this.parentNode.parentNode, true);"
class="node_icon" style="background-image:url(@icon@)"><img class="spacer20x11" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif">@title@</span></div><div class="subfolder_list" id="@id@"></div></div></div>
<div id="blueprint.leaf"><div class="server_browser_leaf" src="@src@" img="@preview@" encoded="@encoded@" description="@description@" description2="@description2@" readonly="@readonly@"><div class="leaf_frame" title="@description@"
onclick="window.server_browser.selectLeaf(event, window, this.parentNode);"
ondblclick="window.server_browser.selectLeaf(event, window, this.parentNode);">
<div style="margin:1px;background-image:url(@icon@);width:16px;height:17px;"></div>
<br></div><a class="leaf_title" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowser.ShowProduct.link",null)),null)%>" href="javascript:this.blur();"
onclick="window.server_browser.openLeaf(event, window, this.parentNode);">@title@</a></div></div>
<div id="blueprint.placeholder">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/no_image_available.gif">
</div>
<div id="params.server_browser"
uploadPipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadPrompt",null)))),null)%>"
folderPipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-FolderPrompt",null)))),null)%>"
renameFolderPipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameFolderPrompt",null)))),null)%>"
renameImagePipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-RenameImagePrompt",null)))),null)%>"
deleteFolderPipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteFolderPrompt",null)))),null)%>"
deleteImagePipeline="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteImagePrompt",null)))),null)%>">
</div>
<span id="title.file"><% {out.write(localizeISText("ServerBrowser.SelectLinkTarget1",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span id="title.image"><% {out.write(localizeISText("ServerBrowser.SelectImage1",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span id="title.media"><% {out.write(localizeISText("ServerBrowser.SelectImage1",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
</div>
<div id="prompt_layer" style="display: none"><div id="prompt" class="intershop"></div></div>
<div id="busy_shield"><div class="spinner"></div></div>
</body>
</html><% printFooter(out); %>