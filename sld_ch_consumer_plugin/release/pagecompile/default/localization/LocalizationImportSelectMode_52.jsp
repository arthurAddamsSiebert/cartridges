<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","import"),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationImportSelectMode_52.LocalizationImportStep3SelectImportMode.text",null)))}, 3); %>

<% URLPipelineAction action270 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null));String site270 = null;String serverGroup270 = null;String actionValue270 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null);if (site270 == null){  site270 = action270.getDomain();  if (site270 == null)  {      site270 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup270 == null){  serverGroup270 = action270.getServerGroup();  if (serverGroup270 == null)  {      serverGroup270 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationImportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue270, site270, serverGroup270,true)); %>	
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="aldi">
		<tr>
			<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.LocalizationImportStep3SelectImportMode.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="s e w">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorLocales"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="errorbox s">
						<tr>
							<td class="error_icon top e"><img
								src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
								border="0" /></td>
							<td class="error top" width="100%"><% {out.write(localizeISText("LocalizationImportSelectMode_52.ImportCouldNotBeExecutedPleaseSelectAtLeast.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<tr>
			<td class="table_title_description" width="100%"><% {out.write(localizeISText("LocalizationImportSelectMode_52.Step3Of3SelectImportModeAndLocales.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
		<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
		<tr>
			<td class="fielditem2" width="1%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.ImportMode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
			<td class="table_detail">
				<select name="LocalizationImportForm_ImportMode" class="select inputfield_en">
					<option value="INSERT" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LocalizationImportForm:ImportMode:Value"),null).equals(context.getFormattedValue("INSERT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationImportSelectMode_52.INSERT.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="UPDATE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LocalizationImportForm:ImportMode:Value"),null).equals(context.getFormattedValue("UPDATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationImportSelectMode_52.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="REPLACE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LocalizationImportForm:ImportMode:Value"),null).equals(context.getFormattedValue("REPLACE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationImportSelectMode_52.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="DELETE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LocalizationImportForm:ImportMode:Value"),null).equals(context.getFormattedValue("DELETE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationImportSelectMode_52.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="fielditem2" width="1%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.Application.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
			<td class="table_detail">
				<select name="LocalizationImportForm_ApplicationUUID" class="select inputfield_en">
					<% while (loop("Applications","Application",null)) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Application:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Application:AppID"),null).equals(context.getFormattedValue(getObject("VerifycationResult:AppId"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>selected="selected"<% } %>>
								<% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						 </option>
					<% } %>
				</select>
			</td>
		</tr>
		<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
	</table>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w e">
		<tr>
			<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.LocalesToBeImported.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="table_header aldi center" nowrap="nowrap" width="80">
			<div id="A">
			<table border="0" cellspacing="0" cellpadding="0"
				class="table_header center" width="80">
				<tr>
					<td nowrap="nowrap"><a
						href="javascript:selectAll('LocalizationImportForm','SelectedObjectUUID','A','B');"
						class="tableheader"><% {out.write(localizeISText("LocalizationImportSelectMode_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
			</table>
			</div>
			<div id="B" style="display: none">
			<table border="0" cellspacing="0" cellpadding="0"
				class="table_header center" width="80">
				<tr>
					<td nowrap="nowrap"><a
						href="javascript:selectAll('LocalizationImportForm','SelectedObjectUUID','A','B');"
						class="tableheader"><% {out.write(localizeISText("LocalizationImportSelectMode_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
			</table>
			</div>
			</td>
			<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.ImportLocale.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("LocalizationImportSelectMode_52.TargetLocales.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% while (loop("LocaleHolders","LocaleHolder",null)) { %>
			<tr>
				<td class="table_bg w e s center"><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleHolder:ModifiedTargetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
					<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleHolder:ModifiedTargetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(LocaleHolder:ModifiedTargetID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %> checked="checked"<% } %> />
				</td>
				<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("LocaleHolder:ModifiedTargetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td class="table_detail e s">
					<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleHolder:ModifiedTargetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ModifiedLocaleID" class="select inputfield_en">
						<option value="">&nbsp;</option>
						<% while (loop("Locales","Locales",null)) { %>
							<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("LocaleHolder:TargetLocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
						<% } %>
					</select>
				</td>
			</tr>
		<% } %>	
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td>
				<table cellpadding="0" cellspacing="4" border="0">
					<tr>
						<td class="button"><input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSelectMode_52.Previous.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
			<td align="right">
				<table cellpadding="0" cellspacing="4" border="0">
					<tr>
						<td class="button">
							<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<input type="hidden" name="JobDescription" value="Import Localizations"/>
							<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSelectMode_52.Import.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Locales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
						<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationImportSelectMode_52.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>