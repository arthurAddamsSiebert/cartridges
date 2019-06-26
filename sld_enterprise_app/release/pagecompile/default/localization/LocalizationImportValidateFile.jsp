<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<script language="javascript" type="text/javascript">
		window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null)%>'", 10000)
	</script>		
<% } %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)))),
new TagParameter("id",getObject("SelectedFile")),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.LocalizationImportStep2ValidateFile.text",null)))}, 8); %>

<% URLPipelineAction action301 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-Dispatch",null)))),null));String site301 = null;String serverGroup301 = null;String actionValue301 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-Dispatch",null)))),null);if (site301 == null){  site301 = action301.getDomain();  if (site301 == null)  {      site301 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup301 == null){  serverGroup301 = action301.getServerGroup();  if (serverGroup301 == null)  {      serverGroup301 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue301, site301, serverGroup301,true)); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	class="aldi">
	<tr>
		<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LocalizationImportValidateFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	class="w e s">
	<tr>
		<td class="table_title_description" width="100%"><% {out.write(localizeISText("sld_enterprise_app.Step2Of3NextStepImportFileTheChosenFileWillBeValid.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <a
			href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationImport-ValidateFileRefresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfiguration:UUID"),null))),null)%>"
			class="selection_link"><% {out.write(localizeISText("sld_enterprise_app.Refresh.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>.</td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="w e s">
		<tr>
			<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%"
		class="w e">
		<tr>
			<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.CurrentAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
			<td class="table_detail s"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("JobConfiguration")),
new TagParameter("type","CurrentActivity")}, 37); %></td>
		</tr>
	</table>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		class="w e s">
		<tr>
			<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ValidatingImportFile.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%"
		class="w e">
		<tr>
			<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.CurrentAction.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
			<td class="table_detail s"><% {out.write(localizeISText("sld_enterprise_app.PreparingSourceFileValidation.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
		</tr>
	</table>
<% } else { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:ValidationError")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JobConfiguration:ValidationError"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr>
				<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImportFileContent.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
			<tr>
				<td class="table_detail s">
					<% {out.write(localizeISText("sld_enterprise_app.ThisFileDoesNotContainValidEnfinityLocalizationEnt.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
				</td>
			</tr>
		</table>
	<% } else { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			<tr>
				<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ImportFileContent.table_title21",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
			<tr>
				<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Locales.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:LocalesNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
			</tr>
			<tr>
				<td class="table_detail s e" width="1%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.TextEntries.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:EntriesNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>			
			</tr>		
		</table>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_title2" width="100%" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.ErrorMessage.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
		<tr>
			<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0" /></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:ValidationError")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JobConfiguration:ValidationError"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:ValidationError"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
			<% } else { %>
				<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoErrorMessages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<% } %>
		</tr>
	</table>
<% }} %>

<table class="w e s" width="100%" border="0" cellspacing="0">
	<tr>
		<td align="left">
		<table border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td class="button"><input type="submit" name="Paging"
					value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
				</td>
			</tr>
		</table>
		</td>
		<td align="right">
		<table border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td class="button"><input type="hidden" name="SelectedFile"
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> <input
					type="hidden" name="JobConfigurationUUID"
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> <input
					type="submit" name="SelectMode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Next.button",null)),null)%>&nbsp;&gt;&gt;"
					class="button"
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("JobConfiguration:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("JobConfiguration:ValidationError")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JobConfiguration:ValidationError"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
				</td>
				<td class="button"><input type="submit" name="Cancel"
					value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%">
	<tr>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6"
			alt="" border="0" /></td>
	</tr>
</table>
<% out.print("</form>"); %>
<% printFooter(out); %>