<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-SearchLocale",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ExportFileFormat",null),context.getFormattedValue(getObject("ExportFileFormat"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationExportSearchLocale_52.LocalizationExportStep2SelectLocales.text",null)))}, 3); %>
<% URLPipelineAction action261 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));String site261 = null;String serverGroup261 = null;String actionValue261 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null);if (site261 == null){  site261 = action261.getDomain();  if (site261 == null)  {      site261 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup261 == null){  serverGroup261 = action261.getServerGroup();  if (serverGroup261 == null)  {      serverGroup261 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue261, site261, serverGroup261,true)); %>
    <input type="hidden" name="ApplicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
    <input type="hidden" name="ExportFileFormat" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.LocalizationExportStep2SelectLocales.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UUIDIterator")))).booleanValue() && !((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
			<tr><td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr>
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.YouHaveNotSelectedALocaleToBeExported.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			</td></tr>
		<% } %>
		<tr>
			<td class="table_title_description e w"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.Step2Of3SelectLocalesNextStepConfigure.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br />
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("LocalizationExportSearchLocale_52.EnterAnAliasNameForTheLocaleIdentifier.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
		<tr>
			<td class="table_header w e s center" nowrap="nowrap" width="80">
				<div id="A">
					<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
						<tr>
							<td nowrap="nowrap"><a href="javascript:selectAll('LocalizationExportList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
						</tr>
					</table>
				</div>
				<div id="B" style="display: none">
					<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
						<tr>
							<td nowrap="nowrap"><a href="javascript:selectAll('LocalizationExportList','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
						</tr>
					</table>
				</div>
			</td>
			<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.ExportLocale.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.LocaleIdentifier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
				<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("LocalizationExportSearchLocale_52.ExportLocaleAliasOptional.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } %>
		</tr>
		<% while (loop("Locales","Locale",null)) { %>
			<tr>
				<td class="table_bg w e s center">
					<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Locale:LocaleID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %> checked="checked"<% } %> />
				</td>
				<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
				<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
					<td class="table_detail e s">
						<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ModifiedLocaleID" value="" size="30" maxlength="255" class="inputfield_en" />&nbsp;
					</td>
				<% } %>
			</tr>
		<% } %>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td nowrap="nowrap" class="label w s">
					<label class="label" for="ExportSourceLanguage"><% {out.write(localizeISText("LocalizationExportConfiguration_52.SourceLanguage.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
				</td>
				<td class="table_detail e s" width="100%">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportSourceLanguage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (getObject("ExportSourceLanguage")); getPipelineDictionary().put("SelectedSourceLocaleID", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = (getObject("CurrentRequest:Locale:LocaleID")); getPipelineDictionary().put("SelectedSourceLocaleID", temp_obj);} %>
					<% } %>
					<select name="ExportSourceLanguage" id="ExportSourceLanguage" class="select inputfield_en">
						<% while (loop("Locales","Locale",null)) { %>
							<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedSourceLocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
						<% } %>
					</select>
				</td>
			</tr>
		</table>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
            <td>
                <table cellspacing="4" cellpadding="0" border="0">
                    <tr>
                        <td class="button"><input type="submit" class="button" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportSearchLocale_52.Previous.button",null)),null)%>" name="SelectApplication" /></td>
                    </tr>
                </table>
            </td>
		
			<td align="right">
				<table cellpadding="0" cellspacing="4" border="0">
					<tr>
						<td class="button">
							<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="submit" name="SelectConfiguration" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportSearchLocale_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Locales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
						<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportSearchLocale_52.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>	
<% printFooter(out); %>