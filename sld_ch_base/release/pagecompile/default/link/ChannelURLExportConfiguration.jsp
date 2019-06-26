<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Working Area -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-SelectConfiguration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelURLExportConfiguration.URLExportStep2Configuration.text",null)))}, 4); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
	<tr>
		<td width="100%" class="table_title"><% {out.write(localizeISText("ChannelURLExportConfiguration.URLExportConfiguration.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("URLExport")))).booleanValue() && ((Boolean) getObject("URLExportForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("URLExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("URLExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			<tr>
				<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
				<td class="error top" width="100%">
					<% {out.write(localizeISText("ChannelURLExportConfiguration.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } %>
<% } %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title_description"><% {out.write(localizeISText("ChannelURLExportConfiguration.Step2Of2ConfigureTheExport.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% URLPipelineAction action57 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null));String site57 = null;String serverGroup57 = null;String actionValue57 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null);if (site57 == null){  site57 = action57.getDomain();  if (site57 == null)  {      site57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup57 == null){  serverGroup57 = action57.getServerGroup();  if (serverGroup57 == null)  {      serverGroup57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelURLExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("URLExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue57, site57, serverGroup57,true)); %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
		<tr>
			<td colspan="2" width="100%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="table_detail center s" width="1%">
							<input type="checkbox" name="URLExportForm_ExportProductURLs" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("URLExportForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("URLExportForm:ExportProductURLs:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>checked="checked"<% } %> />
						</td>
						<td class="table_detail w s" nowrap="nowrap"><% {out.write(localizeISText("ChannelURLExportConfiguration.ExportURLsOfAssignedProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<tr>
						<td class="table_detail center s" width="1%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("URLExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("URLExportForm:ExportRecursive:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
									<input type="checkbox" name="URLExportForm_ExportRecursive" value="true" checked="checked"/>
								<% } else { %> 
									<input type="checkbox" name="URLExportForm_ExportRecursive" value="true" />
								<% } %>
							<% } else { %>
									<input type="checkbox" name="URLExportForm_ExportRecursive" value="true" checked="checked"/> 
							<% } %> 
						</td>
						<td class="table_detail w s" nowrap="nowrap"><% {out.write(localizeISText("ChannelURLExportConfiguration.ExportSelectedCategoriesRecursively.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("URLExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("URLExport")))).booleanValue() && ((Boolean) (((((Boolean) getObject("URLExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("URLExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
					<td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ChannelURLExportConfiguration.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<% } else { %>
					<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelURLExportConfiguration.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<% } %>
				<td class="fielditem2" width="100%">
					<input type="text" name="URLExportForm_ExportFile" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("URLExportForm:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				</td>
			<% } else { %>
				<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelURLExportConfiguration.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<td class="fielditem2" width="100%">
					<input type="text" name="URLExportForm_ExportFile" size="40" class="inputfield_en"/>
				</td>
			<% } %>
		</tr>
	</table>
	<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="left">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectConfigurationCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
								<input type="hidden" name="selectConfigurationCategory" value="selectConfigurationCategory" />
								<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="BackSelectCategory" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelURLExportConfiguration.Previous.button",null)),null)%>" class="button"/>
							<% } else { %>
								<input type="submit" name="Back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelURLExportConfiguration.Previous.button",null)),null)%>" class="button"/>
							<% } %>
						</td>
					</tr>
				</table>
			</td>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_base.ExportsUrls.input",null)),null)%>"/>
							<input type="hidden" name="ExportDirectory" value="shortlink"/>
							<input type="hidden" name="DefaultButton" value="Export"/>
							<input type="submit" name="URLExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelURLExportConfiguration.Finish.button",null)),null)%>" class="button"/>
						</td>
						<td class="button">
							<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelURLExportConfiguration.Cancel.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>	
<% out.print("</form>"); %>
<% printFooter(out); %>