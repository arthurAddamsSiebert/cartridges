<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Back",null))))),
new TagParameter("id","export"),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationExportConfiguration_52.LocalizationExportStep3ConfigureExport.text",null)))}, 3); %>

<% URLPipelineAction action259 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));String site259 = null;String serverGroup259 = null;String actionValue259 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null);if (site259 == null){  site259 = action259.getDomain();  if (site259 == null)  {      site259 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup259 == null){  serverGroup259 = action259.getServerGroup();  if (serverGroup259 == null)  {      serverGroup259 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue259, site259, serverGroup259,true)); %>
	<input type="hidden" name="ApplicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ExportFileFormat" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("LocalizationExportConfiguration_52.LocalizationExportStep3ConfigureExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LocalizationExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("LocalizationExportForm:ExportFileName:isMissing")).booleanValue() || ((Boolean) getObject("LocalizationExportForm:ExportFileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
			<tr>
				<td >
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
						<tr>
							<td class="error_icon top e"><img
								src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
								border="0" /></td>
							<td class="error top" width="100%"><% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportCouldNotBeExecutedPleaseProvideAFilename.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				</td>
			</tr>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LocalizationExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("LocalizationExportForm:CharacterSet:isMissing")).booleanValue() || ((Boolean) getObject("LocalizationExportForm:CharacterSet:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box s">
						<tr>
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0" /></td>
							<td class="error top" width="100%"><% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportCouldNotBeExecutedPleaseProvideACharacterSet.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				</td>
			</tr>
		<% }} %>
		<tr>
			<td class="table_title_description e w"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Step3Of3ConfigureExportIfYouWantToExport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("LocalizationExportConfiguration_52.TheXLIFFConfigurationParametersAreNeeded.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br />
				<% } %>
				<br /><% {out.write(localizeISText("LocalizationExportConfiguration_52.FieldsWithARedAsteriskSpanClassStarSpan.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
	
	<div class="table_title2 e n w s" style="line-height: 32px; white-space: nowrap">
		<% {out.write(localizeISText("LocalizationExportConfiguration_52.GeneralConfigurationParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
	</div>
	
	<div class="w e fielditem2">
		<% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportFilename.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
		<input type="text" size="28" maxlength="100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:ExportFileName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="LocalizationExportForm_ExportFileName" class="inputfield_en"/>
	</div>

	<div class="w e s fielditem2">
		<p>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
				<input type="checkbox" value="true" name="LocalizationExportForm_ExportFileForEachLocale" checked="checked" disabled="disabled"/>
			<% } else { %>
				<input type="checkbox" value="true" name="LocalizationExportForm_ExportFileForEachLocale"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportFileForEachLocale:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %> checked="checked" <% } %>
				/>
			<% } %>
			
			<% {out.write(localizeISText("LocalizationExportConfiguration_52.GenerateAnExportFileForEachLocale.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</p>

		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>
			<p>
				<input type="checkbox" value="true" name="LocalizationExportForm_ExportOnlyTranslatedKeys"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportOnlyTranslatedKeys:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>checked="checked"<% } %>
					/>
				<% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportOnlyTranslatedItemsSkipUntranslate.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</p>
		<% } else { %>
			<p>
				<input type="checkbox" value="true" name="LocalizationExportForm_ExportOnlyUntranslatedKeys"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportOnlyUntranslatedKeys:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %>
					/>
				<% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportOnlyUntranslatedItems.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</p>
			<p>
				<input type="checkbox" value="true" name="LocalizationExportForm_ExportItemDescription"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportItemDescription:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>checked="checked"<% } %>
					/>
				<% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportItemDescriptions.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</p>
		<% } %>
	</div>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
		<input type="hidden" name="LocalizationExportForm_CharacterSet" value="UTF-8"/>
		<input type="hidden" name="LocalizationExportForm_ExportSourceLanguage" value="en_US"/>
	<% } %>
	

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
		<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
			<tr>
				<td class="table_title2 s" colspan="5" style="white-space: nowrap; width: 100%"><% {out.write(localizeISText("LocalizationExportConfiguration_52.XLIFFConfigurationParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
			<tr>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.CharacterSet.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><input type="text" name="LocalizationExportForm_CharacterSet" size="28" maxlength="100"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:CharacterSet:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:CharacterSet:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
					<% } else { %>value="UTF-8"
					<% } %>
				class="inputfield_en" /></td>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NoteFrom.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td colspan="2" class="table_detail"><input type="text" size="28" maxlength="100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:NoteFrom:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="LocalizationExportForm_NoteFrom" class="inputfield_en" /></td>
			</tr>
			<tr>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.XLIFFVersion.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><select name="LocalizationExportForm_XLIFFVersion" class="select inputfield_en">
					<option value="1.2" selected>1.2</option>
				</select></td>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.TargetState.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td colspan="2" class="table_detail" width="100%"><select name="LocalizationExportForm_TargetState" class="select inputfield_en">
					<option value="new"><% {out.write(localizeISText("LocalizationExportConfiguration_52.New.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="final"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Final.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-adaptation"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NeedsAdaptation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-l10n"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Needs110n.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-review-adaptation"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NeedsReviewAdaptation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-review-l10n"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NeedsReview110n.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
		
					<option value="needs-review-translation"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NeedsReviewTranslation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-translation"><% {out.write(localizeISText("LocalizationExportConfiguration_52.NeedsTranslation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="signed-off"><% {out.write(localizeISText("LocalizationExportConfiguration_52.SignedOff.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="translated"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Translated.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select></td>
			</tr>
			<tr>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportDataType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail" nowrap="nowrap"><select name="LocalizationExportForm_ExportDataType" class="select inputfield_en">
					<option value="html"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Html.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="asp"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Asp.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="c"><% {out.write(localizeISText("LocalizationExportConfiguration_52.C.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="cdf"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Cdf.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="cfm"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Cfm.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="cpp"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Cpp.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="csharp"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Csharp.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="cstring"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Cstring.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="csv"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Csv.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="database"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Database.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="documentfooter"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Documentfooter.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="documentheader"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Documentheader.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="filedialog"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Filedialog.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="form"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Form.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="htmlbody"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Htmlbody.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="ini"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Ini.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="interleaf"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Interleaf.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="javaclass"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Javaclass.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="javapropertyresourcebundle"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Javapropertyresourcebundle.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="javalistresourcebundle"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Javalistresourcebundle.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="javascript"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Javascript.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="jscript"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Jscript.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="layout"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Layout.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="lisp"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Lisp.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="margin"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Margin.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="menufile"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Menufile.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="messagefile"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Messagefile.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="mif"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Mif.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="mimetype"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Mimetype.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="mo"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Mo.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="msglib"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Msglib.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="pagefooter"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Pagefooter.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="pageheader"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Pageheader.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="parameters"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Parameters.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="pascal"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Pascal.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="php"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Php.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="plaintext"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Plaintext.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="po"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Po.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="report"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Report.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="resources"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Resources.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="resx"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Resx.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="rtf"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Rtf.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sgml"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Sgml.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sgmldtd"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Sgmldtd.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="svg"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Svg.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="vbscript"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Vbscript.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="warning"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Warning.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="winres"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Winres.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="xhtml"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Xhtml.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="xml"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Xml.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="xmldtd"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Xmldtd.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="xsl"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Xsl.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="xul"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Xul.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class="fielditem2" style="white-space: nowrap"><% {out.write(localizeISText("LocalizationExportConfiguration_52.ExportApproved.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td colspan="2" class="table_detail"><select name="LocalizationExportForm_ExportApproved" class="select inputfield_en">
					<option value="yes"><% {out.write(localizeISText("LocalizationExportConfiguration_52.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="no"><% {out.write(localizeISText("LocalizationExportConfiguration_52.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select></td>
			</tr>
			<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
		</table>
	<% } %>
	

	
	<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
		<tr>
			<td>
				<table cellspacing="4" cellpadding="0" border="0">
					<tr>
						<td class="button"><input type="submit" class="button" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportConfiguration_52.Previous.button",null)),null)%>" name="SearchLocale" /></td>
					</tr>
				</table>
			</td>
			<td width="100%" align="right">
				<table cellspacing="4" cellpadding="0" border="0">
					<tr>
						<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportConfiguration_52.Export.button",null)),null)%>" name="LocalizationExport" />
							<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
						</td>
						<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportConfiguration_52.Cancel.button",null)),null)%>" name="Cancel" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>

<% printFooter(out); %>