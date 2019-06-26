<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-SelectApplication",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ExportFileFormat",null),context.getFormattedValue(getObject("ExportFileFormat"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationExportSelectApplication_52.LocalizationExportStep1SelectApplication.text",null)))}, 3); %>
<% URLPipelineAction action263 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));String site263 = null;String serverGroup263 = null;String actionValue263 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null);if (site263 == null){  site263 = action263.getDomain();  if (site263 == null)  {      site263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup263 == null){  serverGroup263 = action263.getServerGroup();  if (serverGroup263 == null)  {      serverGroup263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportSelectApplication");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue263, site263, serverGroup263,true)); %>
	<input type="hidden" name="ExportFileFormat" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("LocalizationExportSelectApplication_52.LocalizationExportStep1SelectApplication.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<tr>
			<td class="table_title_description e w"><% {out.write(localizeISText("LocalizationExportSelectApplication_52.Step1Of3SelectApplicationNextStepSelect.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
	<table border="0" cellpadding="5" cellspacing="0" class="infobox_locale w e s w100">
		<tr>
			<td nowrap="nowrap" class="infobox_item"><% {out.write(localizeISText("LocalizationExportSelectApplication_52.Application.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			<td><select name="ApplicationUUID" class="select inputfield_en">
				<% while (loop("Applications","Application",null)) { %>
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Application:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Application:UUID"),null).equals(context.getFormattedValue(getObject("ApplicationUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						</option>
				<% } %>
			</select>
			</td>		   
			<td width="90%" align="left">
			</td>
		</tr>
	</table>

	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td align="right">
				<table cellpadding="0" cellspacing="4" border="0">
					<tr>
						<td class="button">
							<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="submit" name="SearchLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportSelectApplication_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
						</td>
						<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationExportSelectApplication_52.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %> 
<% printFooter(out); %>