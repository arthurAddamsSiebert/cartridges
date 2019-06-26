<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Validate",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration.ImageViewsImageTypesAndImageSetsExport.text",null)))}, 3); %>

<% URLPipelineAction action634 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null));String site634 = null;String serverGroup634 = null;String actionValue634 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null);if (site634 == null){  site634 = action634.getDomain();  if (site634 == null)  {      site634 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup634 == null){  serverGroup634 = action634.getServerGroup();  if (serverGroup634 == null)  {      serverGroup634 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageMetadataExportConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue634, site634, serverGroup634,true)); %>	
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
		<tr>
			<td width="100%" class="table_title"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ImageViewsImageTypesAndImageSetsExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr>
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%"><% {out.write(localizeISText("BMEcatExportSelectCatalog.ExportCouldNotBeExecutedValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:ImageViews:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageTypes:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageSets:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr>
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
			<% {Object temp_obj = (getObject("ImageMetadataExportConfiguration:SelectedFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "28");} %>
		<% }}} %>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_title_description"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ExportImageViewsImageTypesAndImageSets.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
					<td nowrap="nowrap" class="label" width="1%"><label class="label label_error" for="ImageMetadataExportConfiguration_SelectedFile"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% } else { %>
					<td nowrap="nowrap" class="label" width="1%"><label class="label" for="ImageMetadataExportConfiguration_SelectedFile"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% } %>
				<td class="table_detail"><input type="text" name="ImageMetadataExportConfiguration_SelectedFile" id="ImageMetadataExportConfiguration_SelectedFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageMetadataExportConfiguration:SelectedFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
			<% } else { %>
				<td nowrap="nowrap" class="label" width="1%"><label class="label" for="ImageMetadataExportConfiguration_SelectedFile"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<td class="table_detail"><input type="text" name="ImageMetadataExportConfiguration_SelectedFile" id="ImageMetadataExportConfiguration_SelectedFile" size="40" class="inputfield_en"/></td>
			<% } %>
		</tr>
		
		<tr>
			<td class="">&nbsp;</td>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" class="">
					<tr>
						<td class="input_checkbox" >
							<input type="checkbox" name="ImageMetadataExportConfiguration_ImageViews" id="ImageMetadataExportConfiguration_ImageViews" value="true"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageViews:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
						</td>
						<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ImageMetadataExportConfiguration_ImageViews"><% {out.write(localizeISText("sld_enterprise_app.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td class="">&nbsp;</td>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" class="">
					<tr>
						<td  class="input_checkbox" >
							<input type="checkbox" name="ImageMetadataExportConfiguration_ImageTypes" id="ImageMetadataExportConfiguration_ImageTypes" value="true"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageTypes:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
						</td>
						<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ImageMetadataExportConfiguration_ImageTypes"><% {out.write(localizeISText("sld_enterprise_app.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td class="">&nbsp;</td>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" class="">
					<tr>
						<td  class="input_checkbox" >
							<input type="checkbox" name="ImageMetadataExportConfiguration_ImageSets" id="ImageMetadataExportConfiguration_ImageSets" value="true"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageSets:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
						</td>
						<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="ImageMetadataExportConfiguration_ImageSets"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ImageSet.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					</tr>
				</table>
			</td>
		</tr>
		
	</table>
	<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="JobDescription" value="Export Image Views, Image Types and Image Sets"/>
							<input type="hidden" name="ExportDirectory" value="catalog"/>
							<input type="hidden" name="DefaultButton" value="Export"/>
							<input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>" class="button"/>
						</td>
						<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
<% out.print("</form>"); %>

<% printFooter(out); %>