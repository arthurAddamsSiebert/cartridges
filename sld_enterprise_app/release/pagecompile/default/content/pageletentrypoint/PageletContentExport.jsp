<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>auditIntoContentExport.js<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("id","Pages"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletContentExport.Export.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("id","Pages"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletContentExport.Export.text1",null)))}, 8); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("PageletContentExport.ExportContent.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameInvalid")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameNotDefined")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("PageletContentExport.YouHaveNotProvidedAValidExportFileNameEnterAValidF.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("PageletContentExport.SpecifyAnExportFileAndStartTheExportByClickingOnEx.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action403 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Dispatch",null)))),null));String site403 = null;String serverGroup403 = null;String actionValue403 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Dispatch",null)))),null);if (site403 == null){  site403 = action403.getDomain();  if (site403 == null)  {      site403 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup403 == null){  serverGroup403 = action403.getServerGroup();  if (serverGroup403 == null)  {      serverGroup403 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContentExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentPageTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue403, site403, serverGroup403,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" height="66px">
<tr>
<!-- Input for file name --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ExportAllPageletEntryPoints")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ExportSelectedPageletEntryPoints")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameNotDefined")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="ExportFileName"><% {out.write(localizeISText("PageletContentExport.ExportFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="ExportFileName"><% {out.write(localizeISText("PageletContentExport.ExportFile.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<input type="text" name="ExportFileName" id="ExportFileName" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<!-- Selection for file type/extension -->
<td nowrap="nowrap" class="label"><label class="label label_select label_horizontal_align" for="ExportFileExtension"><% {out.write(localizeISText("PageletContentExport.Format.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail">
<select name="ExportFileExtension" id="ExportFileExtension" size="1" class="select inputfield_en">
<option value="xml" selected="selected"><% {out.write(localizeISText("PageletExportHeader.XML.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="zip" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileExtension"),null).equals(context.getFormattedValue("zip",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PageletExportHeader.Zip.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentDomain:Configuration:getBoolean(\"intershop.auditing.enable\",\"(Boolean)false\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="15" height="1" alt="" border="0"></td>
<td>
<input type="checkbox" id="SelectIncludeAuditIntoExportCheckbox" name="SelectIncludeAuditIntoExportCheckbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>checked="checked"<% } %> />
<input type="hidden" id="SelectIncludeAuditIntoExport" name="SelectIncludeAuditIntoExport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("InsertIntoExport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td>
<label class="label label_light" for="SelectIncludeAuditIntoExportCheckbox"><% {out.write(localizeISText("PageletExportHeader.audit.insertSelect","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="15" height="1" alt="" border="0"></td>
<td style="padding-top: 13px">
<table class="js-startDateIncludeAuditIntoExport" cellpadding="0" cellspacing="0" border="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %> style="display:none;"<% } %>>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateIncludeAuditIntoExport"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletExportHeader.audit.startDate",null))),
new TagParameter("DateObject",getObject("StartDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 71); %></tr>
</table>
</td><% } %><td class="w100">&nbsp;</td>
</tr>
</table>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("ContentRepository:UUID"),null)%>" />
<table border="0" cellspacing="0" cellpadding="0" class="e s w" width="100%">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>