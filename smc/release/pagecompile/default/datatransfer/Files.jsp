<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
	<td class="form_bg w e">
		<!-- confirm settings -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Select"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" class="confirm_box">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("Files.LogFiles.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("Files.PleaseSelectAtLeastOneLogFile.message",null)))}, 7); %>
				<% } %>
			</table>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AttachmentMaxSizeError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td colspan="2" class="error" width="100%"><% {out.write(localizeISText("Files.TheEMailCouldNotBeCreatedTheSelectedFile.error",null,null,encodeString(context.getFormattedValue(getObject("MailAttachmentMaxSize"),null)),null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			<% } %>
		<% } %>

		<!-- message about the deleted and not deleted log files, if any -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DeletedFilesCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
					<tr>
						<td class="confirm" width="100%"><% {out.write(localizeISText("Files.FilesDeleted.confirm","",null,context.getFormattedValue(getObject("DeletedFilesCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NotDeletedFilesCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
					<tr>
						<td class="confirm" width="100%"><% {out.write(localizeISText("Files.FilesCouldNotBeDeleted.confirm","",null,context.getFormattedValue(getObject("NotDeletedFilesCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			<% } %>
		<% } %>

		<!-- delete confirmation if one or more are selected and error if nothing is selected -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" class="confirm_box">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("Files.LogFiles.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("Files.DeleteAllSelectedLogFiles.message",null)))}, 43); %>
				<% } else { %>
					<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("Files.LogFiles.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("Files.PleaseSelectAtLeastOneLogFile.message",null)))}, 45); %>
				<% } %>
			</table>
		<% } %>
		<!-- EO confirm settings -->

		<table cellspacing="0" cellpadding="0" border="0" width="100%">
			<tr>
				<td class="table_header e s" nowrap="nowrap">
					<div id="A">
						<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
							<tr>
								<td nowrap="nowrap"><a href="javascript:selectAllFiles('dataTransferForm','SelectedObjectUUID');" class="tableheader"><% {out.write(localizeISText("Files.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							</tr>
						</table>
					</div>
					<div id="B" style="display:none">
						<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
							<tr>
								<td nowrap="nowrap"><a href="javascript:selectAllFiles('dataTransferForm','SelectedObjectUUID');" class="tableheader"><% {out.write(localizeISText("Files.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
							</tr>
						</table>
					</div>
				</td>
				<td class="table_header e s" width="100%">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
						<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null)%>" ><% {out.write(localizeISText("Files.Name.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<% } else { %>
						<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null)%>" ><% {out.write(localizeISText("Files.Name.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<% } %>
				</td>
				<td class="table_header e s" width="100%">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
						<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("size",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null)%>" ><% {out.write(localizeISText("Files.Size.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<% } else { %>
						<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("size",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null)%>" ><% {out.write(localizeISText("Files.Size.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
					<% } %>
				</td>
				<td class="table_header e s" nowrap="nowrap" width="100%"><% {out.write(localizeISText("Files.ViewFile.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header s" nowrap="nowrap" width="100%"><% {out.write(localizeISText("Files.DownloadFile.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% while (loop("LogFilesPageable","File",null)) { %>
				<tr>
					<td class="table_detail center s e" width="75">
						<% {Object temp_obj = (getObject("File")); getPipelineDictionary().put("CurrentFile", temp_obj);} %>
						<%
							getPipelineDictionary().put("FileLength", ((java.io.File) getPipelineDictionary().get("CurrentFile")).length());
						%>
						<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:Name"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(File:Name)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>checked="checked"<% } %>
						/>
						<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					</td>
					<td class="table_detail top s e"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("File:Name"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
					<td class="table_detail top s e" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("FileLength")).doubleValue() <((Number)(((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("FileLength")).doubleValue() /((Number) new Double(1024)).doubleValue())),"#.##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;KB
					  	<% } else { %>
					  		<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("FileLength")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue())),"#.##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;MB
					  	<% } %>
					</td>
					<td class="table_detail top s e">
					  <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("FileLength")).doubleValue() >((Number)(((new Double( ((Number) new Double(1024)).doubleValue() * ((Number) new Double(1024)).doubleValue() *((Number) getObject("LogFileMaxSize")).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
					     <% {out.write(localizeISText("Files.SizeNA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					  <% } else { %>
					  	 <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-FileDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("File:Name"),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("Files.View.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;
					  <% } %>
					</td>
					<td class="table_detail top s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("File:Name"),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("Files.Download.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;</td>
				</tr>
		<% } %>
		</table>
	</td>
</tr><% printFooter(out); %>