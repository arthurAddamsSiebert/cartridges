<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-BrowseDirectory",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.ImportFiles.text",null)))}, 4); %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
	<tr>
		<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.UploadImportFiles.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<% URLPipelineAction action265 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));String site265 = null;String serverGroup265 = null;String actionValue265 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null);if (site265 == null){  site265 = action265.getDomain();  if (site265 == null)  {      site265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup265 == null){  serverGroup265 = action265.getServerGroup();  if (serverGroup265 == null)  {      serverGroup265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue265, site265, serverGroup265,true)); %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
				<tr>
					<td colspan="3">
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
							<tr>
								<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
								<td class="confirm" width="100%">
									<% {out.write(localizeISText("LocalizationImportSourceFiles_52.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
									<% while (loop("ExistingFiles",null,null)) { %>
										- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
									<% } %>
									<% {out.write(localizeISText("LocalizationImportSourceFiles_52.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								</td>
								<td valign="bottom">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td class="button">
												<input type="hidden" name="FileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.OK.button",null)),null)%>" class="button"/>
											</td>
											<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
											<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.Cancel.button",null)),null)%>" class="button"/></td>
										</tr>
									</table>
								</td>
							</tr>	
						</table>
					</td>
				</tr>
			</table>
		<% out.print("</form>"); %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
			<% URLPipelineAction action266 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));String site266 = null;String serverGroup266 = null;String actionValue266 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null);if (site266 == null){  site266 = action266.getDomain();  if (site266 == null)  {      site266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup266 == null){  serverGroup266 = action266.getServerGroup();  if (serverGroup266 == null)  {      serverGroup266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue266, site266, serverGroup266,true)); %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">					
					<tr>
						<td colspan="3">
							<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
								<tr>
									<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
									<td class="confirm" width="100%"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.DeleteAllSelectedFiles.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
									<td>
										<table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="button"><input type="submit" name="DeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.OK.button",null)),null)%>" class="button"/></td>
												<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
												<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.Cancel.button",null)),null)%>" class="button"/></td>
											</tr>
										</table>
									</td>
								</tr>	
							</table>
						</td>
					</tr>				
				</table>
			<% out.print("</form>"); %>
		<% } else { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
				<tr>
					<td colspan="3">
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
							<tr>
								<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
								<td class="error" width="100%"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.YouHaveNotSelectedAnyItemsToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							</tr>	
						</table>
					</td>
				</tr>
			</table>
		<% } %>
	<% } %>
<% } %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title_description" width="100%"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.TheTableBelowShowsTheLocalizationImportFiles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("LocalizationImportSourceFiles_52.TheSizeOfTheSelectedFileExceeds.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("LocalizationImportSourceFiles_52.TheSelectedFileCouldNotBeUploaded.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("LocalizationImportSourceFiles_52.CannotDeleteThisObject0ItIsUsedByProcess1.error",null,null,encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null)),encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null)),null,null,null,null,null,null,null,null));} %>.
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("LocalizationImportSourceFiles_52.YouHaveNotSelectedAFileToUpload.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% }}}} %>
	<% URLPipelineAction action267 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Upload",null)))),null));String site267 = null;String serverGroup267 = null;String actionValue267 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Upload",null)))),null);if (site267 == null){  site267 = action267.getDomain();  if (site267 == null)  {      site267 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup267 == null){  serverGroup267 = action267.getServerGroup();  if (serverGroup267 == null)  {      serverGroup267 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue267, site267, serverGroup267,true)); %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e s">	
			<tr>
				<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
			</tr>	
			<tr>
				<td class="infobox_title" width="1%" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("LocalizationImportSourceFiles_52.UploadFile.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
				<td class="left"><input type="file" name="File" value="" class="inputfield_en" size="60"/></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0"/></td>
				<td>
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.Upload.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
				<td width="100%">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
			</tr>
		</table>
	<% out.print("</form>"); %>
<% } %>
<% URLPipelineAction action268 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));String site268 = null;String serverGroup268 = null;String actionValue268 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null);if (site268 == null){  site268 = action268.getDomain();  if (site268 == null)  {      site268 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup268 == null){  serverGroup268 = action268.getServerGroup();  if (serverGroup268 == null)  {      serverGroup268 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportFilesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue268, site268, serverGroup268,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
					<td class="e s" nowrap="nowrap" width="80">
						<div id="A">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
						<div id="B" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>	
					</td>
				<% } %>
				<td class="table_header s"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header w s"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>	
			<% while (loop("Files","File",null)) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
						<td class="e s center" width="1%">
							<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
						</td>
					<% } %>
					<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
					<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 196); %></td>
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td class="table_detail s"><% {out.write(localizeISText("LocalizationImportSourceFiles_52.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% } %>
	</table>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_LOCALIZATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
		<table class="w e s" width="100%" border="0" cellspacing="0">
			<tr>
				<td align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSourceFiles_52.Delete.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
	<!-- Start Page Cursor -->
	<table border="0" cellpadding="0" cellspacing="0" width="100%">	
		<tr>
			<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 226); %>
	<% } %>
<% out.print("</form>"); %>



<% printFooter(out); %>