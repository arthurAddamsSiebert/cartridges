<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelCatalog",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageFileUpload_32.ChannelCatalogs.text",null)))}, 4); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.ImageUpload.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-BrowseDirectory",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ImageFileUpload_32.ImageManagement.text",null)))}, 5); %>

<!-- Working Area -->
<% {Object temp_obj = ("ImageUpload"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"image/ImageTabs_32", null, "9");} %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title e w s"><% {out.write(localizeISText("ImageFileUpload_32.ImageManagement.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="table_title_description w e">
			<% {out.write(localizeISText("ImageFileUpload_32.YouCanUploadAndManageFilesForOtherLanguagesWhen.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>
<% URLPipelineAction action93 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site93 = null;String serverGroup93 = null;String actionValue93 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site93 == null){  site93 = action93.getDomain();  if (site93 == null)  {      site93 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup93 == null){  serverGroup93 = action93.getServerGroup();  if (serverGroup93 == null)  {      serverGroup93 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SetLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue93, site93, serverGroup93,true)); %>
	<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
		<tr>
			<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td>
				<select name="LocaleId" class="dropdown inputfield_en">
					<% while (loop("Locales","Locales",null)) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>selected="selected"<% } %>>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						</option>
					<% } %>
				</select>
			</td>
			<td width="100%">
				<table border="0" cellspacing="2" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="submit" name="BrowseDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Apply.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
	<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td></tr>
</table>

<% URLPipelineAction action94 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site94 = null;String serverGroup94 = null;String actionValue94 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site94 == null){  site94 = action94.getDomain();  if (site94 == null)  {      site94 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup94 == null){  serverGroup94 = action94.getServerGroup();  if (serverGroup94 == null)  {      serverGroup94 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddDirFile");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue94, site94, serverGroup94,true)); %>
	<table class="aldi" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.Directories.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("StartsOrEndsWithDot",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ContainsInvalidCharacters",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("IsInvalidName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("StartsOrEndsWithWhiteSpace",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("ImageFileUpload_32.DirectoryCouldNotBeCreatedOrRenamedPleaseProvideAV.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
				</td>
			</tr>
		</table>
	<% } %>
	
	<table class="w e" width="100%" border="0" cellspacing="0" cellpadding="4">
		<tr>
			<td class="table_title_description s" colspan="3" width="100%">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("ImageFileUpload_32.TheTreeShowsTheProductImageDirectoryStructureToAdd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% {out.write(localizeISText("ImageFileUpload_32.TheTreeShowsTheProductImageDirectoryStructureThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
	<table class="infobox w e <% {String value = null;try{value=context.getFormattedValue(getObject("classS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" width="100%" border="0" cellspacing="0" cellpadding="4">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
			<tr>
				<td class="infobox_item s" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.NewDirectory.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="infobox_item s">
					<input type="text" name="DirectoryName" class="inputfield_en" maxlength="40" size="40" />
				</td>
				<td class="w100 s">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="submit" name="AddDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Add.button",null)),null)%>" class="button"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %>

<% URLPipelineAction action95 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site95 = null;String serverGroup95 = null;String actionValue95 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site95 == null){  site95 = action95.getDomain();  if (site95 == null)  {      site95 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup95 == null){  serverGroup95 = action95.getServerGroup();  if (serverGroup95 == null)  {      serverGroup95 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DirForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue95, site95, serverGroup95,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteDirectory")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedDirectoryPath")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
							<tr>
								<td colspan="3">
									<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
										<tr>
											<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
										<td class="error" width="100%"><% {out.write(localizeISText("ImageFileUpload_32.AreYouSureYouWantToDeleteTheSelectedDirectory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
											<td>
												<table border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td class="button">
															<input type="submit" name="DeleteDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.OK.button",null)),null)%>" class="button"/>
														</td>
														<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
														<td class="button">
															<input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Cancel.button",null)),null)%>" class="button"/>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteDirectory")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedDirectoryPath"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
							<tr>
								<td colspan="3">
									<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
										<tr>
											<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
											<td class="error" width="100%">
												<% {out.write(localizeISText("ImageFileUpload_32.YouHaveNotSelectedAValidDirectoryClickTheDirectory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% } %>
				<% } %>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="s w e">
					<tr>
						<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
					</tr>
					<tr>
						<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
						<td width="100%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EditDirectorySelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
								<% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Locale:LocaleID")),
new TagParameter("editDirectorySelection","yes"),
new TagParameter("handlerPipeline","ViewImageUpload_32"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue1",getObject("Secure")),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("directorySelection","yes")}, 159); %>
							<% } else { %>
								<% processOpenTag(response, pageContext, "contentdirectory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Locale:LocaleID")),
new TagParameter("handlerPipeline","ViewImageUpload_32"),
new TagParameter("parametername1","Secure"),
new TagParameter("parametervalue1",getObject("Secure")),
new TagParameter("parametername","LocaleId"),
new TagParameter("directory",getObject("RootDirectory")),
new TagParameter("rootdirectoryname",getObject("RootDirectoryName")),
new TagParameter("directorySelection","yes")}, 170); %>
							<% } %>
						</td>
					</tr>
					<tr>
						<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
					</tr>
				</table>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
					<table class="w e s" width="100%" border="0" cellspacing="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="submit" name="EditDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Rename.button",null)),null)%>" class="button"/>
											<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										</td>
										<td class="button">
											<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="submit" name="ConfirmDeleteDirectory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Delete.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
	<tr>
		<td class="table_title2" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.ProductImages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExistingFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>
<% URLPipelineAction action96 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site96 = null;String serverGroup96 = null;String actionValue96 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site96 == null){  site96 = action96.getDomain();  if (site96 == null)  {      site96 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup96 == null){  serverGroup96 = action96.getServerGroup();  if (serverGroup96 == null)  {      serverGroup96 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductImageCopyForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue96, site96, serverGroup96,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
					<tr>
						<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%"><% {out.write(localizeISText("ImageFileUpload_32.TheFollowingFilesExistAlreadyAtTheServer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
							<% while (loop("ExistingFiles",null,null)) { %>
								- <% {String value = null;try{value=context.getFormattedValue(getObject("ExistingFiles:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>							
							<% } %>
							<% {out.write(localizeISText("ImageFileUpload_32.OverwriteAll.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
							<% while (loop("FileNames","fileName",null)) { %>								
								<input type="hidden" name="FileName_<% {String value = null;try{value=context.getFormattedValue(getObject("fileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {232}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("fileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {232}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<% } %>
						</td>
						<td valign="bottom">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="CopyFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.OK.button",null)),null)%>" class="button"/>
										
										<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {241}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {242}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {243}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>											
										<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>											
									</td>
									<td><img height="0" border="0" width="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
									<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Cancel.button",null)),null)%>" class="button"/></td>
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
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",258,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%">
				<% {out.write(localizeISText("ImageFileUpload_32.TheSizeOfTheSelectedFileExceedsTheAllowedFileUpload.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
	<tr>
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%">
				<% {out.write(localizeISText("ImageFileUpload_32.TheSelectedFileCouldNotBeUploadedThisMayBeCausedBy.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ZeroFileLenght",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",276,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%">
				<% {out.write(localizeISText("ImageFileUpload_32.TheSelectedFileCouldNotBeUploadedBecauseTheFile.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error top" width="100%">
				<% {out.write(localizeISText("ImageFileUpload_32.YouHaveNotSelectedAFileToUploadSelectAFileAndThen.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% }}}} %>

<table border="0" cellpadding="5" cellspacing="0" width="100%" class="w e">
	<tr>
		<td class="table_title_description s" colspan="2" nowrap="nowrap">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",299,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("ImageFileUpload_32.ThePanelShowsThumbnailVersionsOfAllUploadedImagesToUpload.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else { %>
				<% {out.write(localizeISText("ImageFileUpload_32.ThePanelShowsThumbnailVersionsOfAllUploadedImagesUse.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %>
			<td class="infobox_item" width="40%">
				<% URLPipelineAction action97 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Upload",null)))),null));String site97 = null;String serverGroup97 = null;String actionValue97 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Upload",null)))),null);if (site97 == null){  site97 = action97.getDomain();  if (site97 == null)  {      site97 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup97 == null){  serverGroup97 = action97.getServerGroup();  if (serverGroup97 == null)  {      serverGroup97 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Upload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("ProductAttachmentsUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue97, site97, serverGroup97,true)); %>
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.UploadFile.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
							<td class="infobox_item">
								<input type="file" name="File" value="" class="inputfield_en" />
							</td>
							<td width="100%" align="left">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {322}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {323}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {324}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {325}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										
											<input type="submit" name="Upload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Upload.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% out.print("</form>"); %>
			</td>
		<% } %>
		<td class="infobox_item left" width="60%">
			<% URLPipelineAction action98 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-BrowseDirectory",null)))),null));String site98 = null;String serverGroup98 = null;String actionValue98 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-BrowseDirectory",null)))),null);if (site98 == null){  site98 = action98.getDomain();  if (site98 == null)  {      site98 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup98 == null){  serverGroup98 = action98.getServerGroup();  if (serverGroup98 == null)  {      serverGroup98 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-BrowseDirectory",null)))),null));out.print("\"");out.print(" name=\"");out.print("SearchForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue98, site98, serverGroup98,true)); %>
				<table border="0" cellspacing="0" cellpadding="0" width="80%">
					<tr>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ImageFileUpload_32.SearchFile.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
						<td class="infobox_item">
							<input type="text" name="Expression" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Expression"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {343}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
						</td>
						<td width="100%">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {349}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {350}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="submit" name="search" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Search.button",null)),null)%>" class="button"/>
										<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {352}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {353}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% out.print("</form>"); %>
		</td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",364,e);}if (_boolean_result) { %>
	<% URLPipelineAction action99 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site99 = null;String serverGroup99 = null;String actionValue99 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site99 == null){  site99 = action99.getDomain();  if (site99 == null)  {      site99 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup99 == null){  serverGroup99 = action99.getServerGroup();  if (serverGroup99 == null)  {      serverGroup99 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImgErrorForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue99, site99, serverGroup99,true)); %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles")))).booleanValue() && ((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",366,e);}if (_boolean_result) { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
				<tr>
					<td>
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
							<tr>
								<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
								<td class="error" width="100%"><% {out.write(localizeISText("ImageFileUpload_32.DeleteAllSelectedFiles.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
								<td>
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td class="button"><input type="submit" name="DeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.OK.button",null)),null)%>" class="button"/></td>
											<td>
												<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {379}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {380}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentPageNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {381}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
											</td>
											<td class="button">
												<input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Cancel.button",null)),null)%>" class="button"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% } else { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
				<tr>
					<td>
						<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box">		
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteFiles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",401,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",402,e);}if (_boolean_result) { %>
									<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productimage"),
new TagParameter("cancelbtnname","Cancel"),
new TagParameter("okbtnname","DeleteFiles"),
new TagParameter("type","mdc")}, 403); %>
								<% } else { %>
									<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","productimage"),
new TagParameter("type","mde")}, 405); %>
								<% } %>
							<% } %>		
							<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {408}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {409}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentPageNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {410}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>							
						</table>
					</td>
				</tr>
			</table>		
		<% } %>	
	<% out.print("</form>"); %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",418,e);}if (_boolean_result) { %>
	<% URLPipelineAction action100 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site100 = null;String serverGroup100 = null;String actionValue100 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site100 == null){  site100 = action100.getDomain();  if (site100 == null)  {      site100 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup100 == null){  serverGroup100 = action100.getServerGroup();  if (serverGroup100 == null)  {      serverGroup100 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue100, site100, serverGroup100,true)); %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",421,e);}if (_boolean_result) { %>
				<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",424,e);}if (_boolean_result) { %>
						<td class="e s" nowrap="nowrap" width="80">
							<div id="A">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
										<a href="javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ImageFileUpload_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							<div id="B" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
										<a href="javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ImageFileUpload_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
						</td>
					<% } %>
					<td class="table_header s"><% {out.write(localizeISText("ImageFileUpload_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header w s" width="100%"><% {out.write(localizeISText("ImageFileUpload_32.FileSize.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<% while (loop("Files","File",null)) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",451,e);}if (_boolean_result) { %>
							<td class="e s center">
								<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {453}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {454}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",454,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
							</td>
						<% } %>
						<td class="table_detail s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",458,e);}if (_boolean_result) { %>
								<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>" class="table_detail_link">
							<% } else { %>
								<a href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null)),null)%>" class="table_detail_link" target="_blank">
							<% } %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {463}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
						</td>
						<td class="table_detail w s"><% processOpenTag(response, pageContext, "displayfilesize", new TagParameter[] {
new TagParameter("value",getObject("File:Size"))}, 465); %></td>
					</tr>
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",469,e);}if (_boolean_result) { %>
					<tr>
						<td align="right" width="100%" colspan="3">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {475}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {476}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {477}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {478}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Delete.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				<% } %>
			<% } else { %>
				<tr>
					<td class="table_detail" colspan="3"><% {out.write(localizeISText("ImageFileUpload_32.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			<% } %>
		</table>
		<!-- Start Page Cursor -->
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
			</tr>
		</table>
		<% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Files"),
new TagParameter("variablepagesize","true")}, 498); %>
	<% out.print("</form>"); %>
<% } else { %>
	<% URLPipelineAction action101 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));String site101 = null;String serverGroup101 = null;String actionValue101 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null);if (site101 == null){  site101 = action101.getDomain();  if (site101 == null)  {      site101 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup101 == null){  serverGroup101 = action101.getServerGroup();  if (serverGroup101 == null)  {      serverGroup101 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageUpload_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FileDeletionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue101, site101, serverGroup101,true)); %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",505,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","checkbox"),
new TagParameter("ThumbnailTemplate","inc/ChannelProductThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 506); %>
					<% } else { %>
						<% processOpenTag(response, pageContext, "imagegallery", new TagParameter[] {
new TagParameter("InputType","none"),
new TagParameter("ThumbnailTemplate","inc/ChannelProductThumbnail"),
new TagParameter("FilesIterator",getObject("Files"))}, 511); %>
					<% } %>
					<!-- the functional buttons at the bottom -->
					<table class="w e s" width="100%" border="0" cellspacing="0">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",518,e);}if (_boolean_result) { %>
							<tr>
								<td class="table_detail"><% {out.write(localizeISText("ImageFileUpload_32.ThereAreCurrentlyNoFilesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							</tr>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",523,e);}if (_boolean_result) { %>
								<tr>
									<td align="left" class="n">
										<table border="0" cellspacing="4" cellpadding="0">
											<tr>
												<td nowrap="nowrap" class="button">
													<div id="A"><input onclick = "javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" type="button" name="selectrall" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.SelectAll.button",null)),null)%>" class="button"/></div>
													<div id="B" style="display:none"><input onclick = "javascript:selectAll('FileDeletionForm','SelectedObjectUUID','A','B');" type="button" name="selectrall" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.ClearAll.button",null)),null)%>" class="button"/></div>
												</td>
											</tr>
										</table>
									</td>
									<td align="right" class="n">
										<table border="0" cellspacing="4" cellpadding="0">
											<tr>
												<td class="button">
													<input type="hidden" name="Secure" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Secure"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {539}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
													<input type="hidden" name="DirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {540}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
													<input type="hidden" name="DisplayedDirectoryPath" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DirectoryPath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {541}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
													<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {542}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
													<input type="submit" name="ConfirmDeleteFiles" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageFileUpload_32.Delete.button",null)),null)%>" class="button"/>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							<% } else { %>
								
							    <tr>
							        <td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
							    </tr>
							<% } %>
						<% } %>
					</table>
					<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tr>
							<td colspan = "5">
								<% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("parametervalue",getObject("Expression")),
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","Files"),
new TagParameter("parametername","Expression"),
new TagParameter("variablepagesize","true")}, 561); %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% out.print("</form>"); %>
<% } %>
<% printFooter(out); %>