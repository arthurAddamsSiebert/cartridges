<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%!
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
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
        <title><% {out.write(localizeISText("ServerBrowserUploadPrompt.UploadFiles.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
        <link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser.css">
        <script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tiny_mce_popup.js"></script>
		<% out.print(context.prepareWAPlacement("JSWebLibraries")); %><% out.print("</waplacement>"); %>
		<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery.js"></script>
		<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery-migrate-1.2.1.js"></script>
        <script type="text/javascript">
		$(function () {
			var fieldsPanel = $('#uploadFileFields'),
				fieldId = 1;

	        function addField() {
				var fields = $('#uploadFileFields'),
					name = 'file' + (fieldId++),
					blueprint = $('#blueprint-folder').clone();
				
				blueprint.removeAttr('id');
				// set name of the fields
				blueprint.children('label').attr('for', name);
				blueprint.children('input[type="file"]').attr('name', name).attr('id', name).attr('class', 'dialog-fileinput');

				// add the blueprint to the form
				fields.append(blueprint);
			}

			function removeField(event) {
				event.preventDefault();
				
				$(this).parent().remove();

				// only add a new field if there are no fields left
				if (fieldsPanel.children().length === 0) {
					addField();
				}
			}

			// listen to all change events
			fieldsPanel.on('change', 'input[type="file"]', function() {
				if ($(this).parent().next().length == 0) {   // only if the last input field changed create an additional input field
					addField();
				}	
			});

			// listen to all remove buttons
			fieldsPanel.on('click', '.remove-btn', removeField);

			// add initial field
			addField();

			// focus fix for IE8
			window.setTimeout(function () {
				$('input[type="file"]:first').focus();
			}, 100);
			window.setTimeout(function () {
				$('input[type="file"]:first').focus();
			}, 500);
		});
   		</script>
        <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "81");} %>
    </head>
    <body>
		<% URLPipelineAction action206 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null));String site206 = null;String serverGroup206 = null;String actionValue206 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null);if (site206 == null){  site206 = action206.getDomain();  if (site206 == null)  {      site206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup206 == null){  serverGroup206 = action206.getServerGroup();  if (serverGroup206 == null)  {      serverGroup206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("FileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue206, site206, serverGroup206,true)); %>
        	<input type="hidden" name="ContextURI" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
        	<div class="server-dialog-content">
				<div>
	            	<label><% {out.write(localizeISText("ServerBrowserUploadPrompt.UploadTo",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label>
	            	<span class="label_output"><%=stringToHtml(getURIPath(getObject("ContextURI")))%></span>
	            </div>
	            <div id="uploadFileFields"></div>	           
	        </div>
            <div id="uploadFormControls" class="bottom_panel">
                <input id="submit" type="submit" class="button dialog-button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Upload.button",null)),null)%>"/>
                <input type="reset" class="button dialog-button secondary-button" onclick="tinyMCEPopup.close();" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Cancel.button",null)),null)%>">
            </div>
        <% out.print("</form>"); %>
        <script type="text/javascript">
			CSRFGuard.injectTokens(document['FileUploadForm']);
	   	</script>
        <div id="blueprint" style="display: none;">
            <div id="blueprint-folder">
                <label><% {out.write(localizeISText("ServerBrowserUploadPrompt.SelectFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
                <input type="file" size="40"/>
                <input type="reset" class="button remove-btn" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Delete.button",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.DoNotUploadThisFile.button",null)),null)%>">
            </div>
        </div>
    </body>
</html>
<% printFooter(out); %>