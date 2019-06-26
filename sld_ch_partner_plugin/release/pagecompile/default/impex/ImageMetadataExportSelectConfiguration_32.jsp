<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport_32-Validate",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration_32.ImageViewsImageTypesAndImageSetsExportXML.text",null)))}, 4); %>

<% URLPipelineAction action254 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport_32-Dispatch",null)))),null));String site254 = null;String serverGroup254 = null;String actionValue254 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport_32-Dispatch",null)))),null);if (site254 == null){  site254 = action254.getDomain();  if (site254 == null)  {      site254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup254 == null){  serverGroup254 = action254.getServerGroup();  if (serverGroup254 == null)  {      serverGroup254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageMetadataExportConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue254, site254, serverGroup254,true)); %>	
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
		<tr>
			<td width="100%" class="table_title"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ImageViewsImageTypesAndImageSetsExportXML.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr>
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportCouldNotBeExecutedPleaseProvideAValidExport.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:ImageViews:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageTypes:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageSets:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr>
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportCouldNotBeExecutedPleaseCheckAtLeastOnce.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
			<% {Object temp_obj = (getObject("ImageMetadataExportConfiguration:SelectedFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "29");} %>
		<% }}} %>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_title_description"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportImageViewsImageTypesAndImageSetsOfTheOrg.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
					<td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<% } else { %>
					<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<% } %>
				<td class="fielditem2" width="100%"><input type="text" name="ImageMetadataExportConfiguration_SelectedFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageMetadataExportConfiguration:SelectedFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
			<% } else { %>
				<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<td class="fielditem2" width="100%"><input type="text" name="ImageMetadataExportConfiguration_SelectedFile" size="40" class="inputfield_en"/></td>
			<% } %>
		</tr>
		
		<tr>
			<td class="table_detail top center">
				&nbsp;
			</td>
			<td class="table_detail top">
				<input type="checkbox" name="ImageMetadataExportConfiguration_ImageViews" value="true"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageViews:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
				<% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ImageView.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td class="top center">
				&nbsp;						
			</td>
			<td class="table_detail top">
				<input type="checkbox" name="ImageMetadataExportConfiguration_ImageTypes" value="true"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageTypes:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
				<% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ImageType.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td class="top center">
				&nbsp;						
			</td>
			<td class="table_detail top">
				<input type="checkbox" name="ImageMetadataExportConfiguration_ImageSets" value="true"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageSets:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %>/>&nbsp;
				<% {out.write(localizeISText("ImageMetadataExportSelectConfiguration_32.ImageSet.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>						
			</td>
		</tr>
	</table>
	<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration_32.ExportImageViewsImageTypesAndImageSets",null)),null)%>"/>
							<input type="hidden" name="ExportDirectory" value="catalog"/>
							<input type="hidden" name="DefaultButton" value="Export"/>
							<input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration_32.Export.button",null)),null)%>" class="button"/>
						</td>
						<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration_32.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
<% out.print("</form>"); %>

<% printFooter(out); %>