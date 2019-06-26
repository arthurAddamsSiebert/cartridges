<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Back",null))))),
new TagParameter("id","export"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.LocalizationExportStep3ConfigureExport.text",null)))}, 3); %>

<% URLPipelineAction action310 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));String site310 = null;String serverGroup310 = null;String actionValue310 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null);if (site310 == null){  site310 = action310.getDomain();  if (site310 == null)  {      site310 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup310 == null){  serverGroup310 = action310.getServerGroup();  if (serverGroup310 == null)  {      serverGroup310 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue310, site310, serverGroup310,true)); %>
    <input type="hidden" name="AppId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AppId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
    <input type="hidden" name="ExportFileFormat" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_enterprise_app.LocalizationExportStep3ConfigureExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LocalizationExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("LocalizationExportForm:ExportFileName:isMissing")).booleanValue() || ((Boolean) getObject("LocalizationExportForm:ExportFileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s">
					<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box">
						<tr>
							<td class="error_icon top e"><img
								src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
								border="0" /></td>
							<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.ExportCouldNotBeExecutedPleaseProvideAValidExportF.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
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
							<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.ExportCouldNotBeExecutedPleaseProvideAValidCharact.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				</td>
			</tr>
		<% }} %>
		<tr>
			<td class="table_title_description e w s"><% {out.write(localizeISText("sld_enterprise_app.Step3Of3ConfigureExportIfYouWantToExportMoreThenOn.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("sld_enterprise_app.TheXLIFFConfigurationParametersAreNeededAsAttribut.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
				<% } %>
				<br /><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
		<tr>
			<td class="table_title2 s" style="white-space: nowrap; width: 100%"><% {out.write(localizeISText("sld_enterprise_app.GeneralConfigurationParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<tr>
			<td>
			<table cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td nowrap="nowrap" class="label"><label class="label" for="LocalizationExportForm_ExportFileName"><% {out.write(localizeISText("sld_enterprise_app.ExportFilename.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<td class="table_detail"><input type="text" size="28" maxlength="100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:ExportFileName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="LocalizationExportForm_ExportFileName" name="LocalizationExportForm_ExportFileName" class="inputfield_en"/></td>
			</tr>
			</table>
			</td> 
		</tr> 
			<tr>
			<td>
				<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td class="input_checkbox">
					 <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
						<input type="checkbox" value="true" name="LocalizationExportForm_ExportFileForEachLocale" id="LocalizationExportForm_ExportFileForEachLocale" checked="checked" disabled="disabled"/>
					 <% } else { %>
						<input type="checkbox" value="true" name="LocalizationExportForm_ExportFileForEachLocale" id="LocalizationExportForm_ExportFileForEachLocale" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportFileForEachLocale:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> checked="checked" <% } %>/>
					 <% } %>
					</td>
					  <td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="LocalizationExportForm_ExportFileForEachLocale"><% {out.write(localizeISText("sld_enterprise_app.GenerateAnExportFileForEachLocale.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				</tr>
				<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
					<td class="input_checkbox">
						<input type="checkbox" value="true" name="LocalizationExportForm_ExportOnlyTranslatedKeys" id="LocalizationExportForm_ExportOnlyTranslatedKeys"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportOnlyTranslatedKeys:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
						
					</td>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="LocalizationExportForm_ExportOnlyTranslatedKeys"><% {out.write(localizeISText("sld_enterprise_app.ExportOnlyTranslatedItemsSkipUntranslated.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				<% } else { %>
					<tr>
					<td class="input_checkbox">
						<input type="checkbox" value="true" name="LocalizationExportForm_ExportOnlyUntranslatedKeys" id="LocalizationExportForm_ExportOnlyUntranslatedKeys"
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportOnlyUntranslatedKeys:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
					</td>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="LocalizationExportForm_ExportOnlyUntranslatedKeys"><% {out.write(localizeISText("sld_enterprise_app.ExportOnlyUntranslatedItems.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					</tr>
					<tr>
					<td class="input_checkbox">
						<input type="checkbox" value="true" name="LocalizationExportForm_ExportItemDescription" id="LocalizationExportForm_ExportItemDescription"
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:ExportItemDescription:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
					</td>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="LocalizationExportForm_ExportItemDescription"><% {out.write(localizeISText("sld_enterprise_app.ExportItemDescriptions.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					</tr>
				<% } %>
				</tr>
			   </table>
		  	</td>
		  	</tr>
			
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
		<input type="hidden" name="LocalizationExportForm_CharacterSet" value="UTF-8"/>
		<input type="hidden" name="LocalizationExportForm_ExportSourceLanguage" value="en_US"/>
	<% } %>
	

	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
		<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
			<tr>
				<td class="table_title2 s" colspan="5" style="white-space: nowrap; width: 100%"><% {out.write(localizeISText("sld_enterprise_app.XLIFFConfigurationParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
			<tr>
				<td nowrap="nowrap" class="label"><label class="label" for="LocalizationExportForm_CharacterSet"><% {out.write(localizeISText("sld_enterprise_app.CharacterSet.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="table_detail"><input type="text" name="LocalizationExportForm_CharacterSet" id="LocalizationExportForm_CharacterSet" size="28" maxlength="100"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LocalizationExportForm:CharacterSet:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:CharacterSet:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
					<% } else { %>value="UTF-8"
					<% } %>
				class="inputfield_en" /></td>
				<td nowrap="nowrap" class="label"><label class="label" for="LocalizationExportForm_NoteFrom"><% {out.write(localizeISText("sld_enterprise_app.NoteFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td colspan="2" class="table_detail"><input type="text" size="28" maxlength="100" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationExportForm:NoteFrom:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="LocalizationExportForm_NoteFrom" id="LocalizationExportForm_NoteFrom" class="inputfield_en" /></td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="label_select"><label class="label label_select" for="LocalizationExportForm_XLIFFVersion"><% {out.write(localizeISText("sld_enterprise_app.XLIFFVersion.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="table_detail"><select name="LocalizationExportForm_XLIFFVersion" id="LocalizationExportForm_XLIFFVersion" class="select inputfield_en">
					<option value="1.2" selected>1.2</option>
				</select></td>
				<td nowrap="nowrap" class="label_select"><label class="label label_select" for="LocalizationExportForm_TargetState"><% {out.write(localizeISText("sld_enterprise_app.TargetState.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td colspan="2" class="table_detail" width="100%"><select name="LocalizationExportForm_TargetState" id="LocalizationExportForm_TargetState" class="select inputfield_en">
					<option value="new"><% {out.write(localizeISText("sld_enterprise_app.New.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="final"><% {out.write(localizeISText("sld_enterprise_app.Final.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-adaptation"><% {out.write(localizeISText("sld_enterprise_app.NeedsAdaptation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-l10n"><% {out.write(localizeISText("sld_enterprise_app.Needs110n.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-review-adaptation"><% {out.write(localizeISText("sld_enterprise_app.NeedsReviewAdaptation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-review-l10n"><% {out.write(localizeISText("sld_enterprise_app.NeedsReview110n.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
		
					<option value="needs-review-translation"><% {out.write(localizeISText("sld_enterprise_app.NeedsReviewTranslation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="needs-translation"><% {out.write(localizeISText("sld_enterprise_app.NeedsTranslation.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="signed-off"><% {out.write(localizeISText("sld_enterprise_app.SignedOff.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="translated"><% {out.write(localizeISText("sld_enterprise_app.Translated.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select></td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="label_select"><label class="label label_select" for="LocalizationExportForm_ExportDataType"><% {out.write(localizeISText("sld_enterprise_app.ExportDataType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="table_detail" nowrap="nowrap"><select name="LocalizationExportForm_ExportDataType" id="LocalizationExportForm_ExportDataType" class="select inputfield_en">
					<option value="html">html</option>
					<option value="asp">asp</option>
					<option value="c">c</option>
					<option value="cdf">cdf</option>
					<option value="cfm">cfm</option>
					<option value="cpp">cpp</option>
					<option value="csharp">csharp</option>
					<option value="cstring">cstring</option>
					<option value="csv">csv</option>
					<option value="database">database</option>
					<option value="documentfooter">documentfooter</option>
					<option value="documentheader">documentheader</option>
					<option value="filedialog">filedialog</option>
					<option value="form">form</option>
					<option value="htmlbody">htmlbody</option>
					<option value="ini">ini</option>
					<option value="interleaf">interleaf</option>
					<option value="javaclass">javaclass</option>
					<option value="javapropertyresourcebundle">javapropertyresourcebundle</option>
					<option value="javalistresourcebundle">javalistresourcebundle</option>
					<option value="javascript">javascript</option>
					<option value="jscript">jscript</option>
					<option value="layout">layout</option>
					<option value="lisp">lisp</option>
					<option value="margin">margin</option>
					<option value="menufile">menufile</option>
					<option value="messagefile">messagefile</option>
					<option value="mif">mif</option>
					<option value="mimetype">mimetype</option>
					<option value="mo">mo</option>
					<option value="msglib">msglib</option>
					<option value="pagefooter">pagefooter</option>
					<option value="pageheader">pageheader</option>
					<option value="parameters">parameters</option>
					<option value="pascal">pascal</option>
					<option value="php">php</option>
					<option value="plaintext">plaintext</option>
					<option value="po">po</option>
					<option value="report">report</option>
					<option value="resources">resources</option>
					<option value="resx">resx</option>
					<option value="rtf">rtf</option>
					<option value="sgml">sgml</option>
					<option value="sgmldtd">sgmldtd</option>
					<option value="svg">svg</option>
					<option value="vbscript">vbscript</option>
					<option value="warning">warning</option>
					<option value="winres">winres</option>
					<option value="xhtml">xhtml</option>
					<option value="xml">xml</option>
					<option value="xmldtd">xmldtd</option>
					<option value="xsl">xsl</option>
					<option value="xul">xul</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td nowrap="nowrap" class="label_select"><label class="label label_select" for="LocalizationExportForm_ExportApproved"><% {out.write(localizeISText("sld_enterprise_app.ExportApproved.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td colspan="2" class="table_detail"><select name="LocalizationExportForm_ExportApproved" id="LocalizationExportForm_ExportApproved" class="select inputfield_en">
					<option value="yes"><% {out.write(localizeISText("sld_enterprise_app.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="no"><% {out.write(localizeISText("sld_enterprise_app.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
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
						<td class="button"><input type="submit" class="button" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" name="SearchLocale" /></td>
					</tr>
				</table>
			</td>
			<td width="100%" align="right">
				<table cellspacing="4" cellpadding="0" border="0">
					<tr>
						<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Export.button",null)),null)%>" name="LocalizationExport" />
							<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
						</td>
						<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" name="Cancel" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>

<% printFooter(out); %>