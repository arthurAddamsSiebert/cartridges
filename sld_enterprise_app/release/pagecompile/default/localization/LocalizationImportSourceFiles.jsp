<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-BrowseDirectory",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ImportFiles.text",null)))}, 4); %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e n">
	<tr>
		<td class="table_title s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.UploadImportFiles.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<% URLPipelineAction action306 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));String site306 = null;String serverGroup306 = null;String actionValue306 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null);if (site306 == null){  site306 = action306.getDomain();  if (site306 == null)  {      site306 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup306 == null){  serverGroup306 = action306.getServerGroup();  if (serverGroup306 == null)  {      serverGroup306 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("OverwriteConfirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue306, site306, serverGroup306,true)); %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
				<tr>
					<td colspan="3">
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
							<tr>
								<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
								<td class="confirm" width="100%">
									<% {out.write(localizeISText("sld_enterprise_app.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
									<% while (loop("ExistingFiles",null,null)) { %>
										- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
									<% } %>
									<% {out.write(localizeISText("sld_enterprise_app.OverwriteAll.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								</td>
								<td valign="bottom">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td class="button">
												<input type="hidden" name="FileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
											</td>
											<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
											<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
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
			<% URLPipelineAction action307 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));String site307 = null;String serverGroup307 = null;String actionValue307 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null);if (site307 == null){  site307 = action307.getDomain();  if (site307 == null)  {      site307 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup307 == null){  serverGroup307 = action307.getServerGroup();  if (serverGroup307 == null)  {      serverGroup307 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue307, site307, serverGroup307,true)); %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
					<tr>
						<td colspan="3">
							<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
								<tr>
									<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
									<td class="confirm" width="100%"><% {out.write(localizeISText("sld_enterprise_app.DeleteAllSelectedFiles.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
									<td>
										<table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="button"><input type="submit" name="DeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/></td>
												<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
												<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
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
								<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnyItemsToBeDeletedUseTheCheckbo.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
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
		<td class="table_title_description" width="100%"><% {out.write(localizeISText("sld_enterprise_app.TheTableBelowShowsTheLocalizationImportFiles.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Files.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("sld_enterprise_app.TheSizeOfTheSelectedFileExceedsTheAllowedFileUploa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("sld_enterprise_app.TheSelectedFileCouldNotBeUploadedThisMayBeCausedBy.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AcquisitionFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("sld_enterprise_app.CannotDeleteThisObject0ItIsUsedByTheFollowingProce.error",null,null,encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionResource:Name"),null)),encodeString(context.getFormattedValue(getObject("AcquisitionResult:ContentionProcess:Name"),null)),null,null,null,null,null,null,null,null));} %>.
				</td>
			</tr>
		</table>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAFileToUploadSelectAFileAndThenC.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% }}}} %>
	<% URLPipelineAction action308 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Upload",null)))),null));String site308 = null;String serverGroup308 = null;String actionValue308 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Upload",null)))),null);if (site308 == null){  site308 = action308.getDomain();  if (site308 == null)  {      site308 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup308 == null){  serverGroup308 = action308.getServerGroup();  if (serverGroup308 == null)  {      serverGroup308 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ImportFileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue308, site308, serverGroup308,true)); %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e s">	
			<tr>
				<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
			</tr>	
			<tr>
				<td nowrap="nowrap" class="label"><label for="File" class="label"><% {out.write(localizeISText("sld_enterprise_app.UploadFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="left"><input type="file" size="60" name="File" id="File" value="" class="inputfield_en"/></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0"/></td>
				<td>
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Upload.button",null)),null)%>" class="button"/></td>
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
<% URLPipelineAction action309 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));String site309 = null;String serverGroup309 = null;String actionValue309 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null);if (site309 == null){  site309 = action309.getDomain();  if (site309 == null)  {      site309 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup309 == null){  serverGroup309 = action309.getServerGroup();  if (serverGroup309 == null)  {      serverGroup309 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImportFiles-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportFilesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue309, site309, serverGroup309,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
					<td class="e s" nowrap="nowrap" width="80">
						<div id="A">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
						<div id="B" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('ImportFilesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>	
					</td>
				<% } %>
				<td class="table_header s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header w s"><% {out.write(localizeISText("sld_enterprise_app.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>	
			<% while (loop("Files","File",null)) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
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
				<td class="table_detail s"><% {out.write(localizeISText("sld_enterprise_app.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% } %>
	</table>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_IMPEX_LOCALIZATION"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
		<table class="w e s" width="100%" border="0" cellspacing="0">
			<tr>
				<td align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
	<!-- Start Page Cursor -->

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
		<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
		<% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 223); %>
	<% } %>
<% out.print("</form>"); %>



<% printFooter(out); %>