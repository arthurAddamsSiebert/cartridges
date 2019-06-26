<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>auditIntoContentExport.js<% out.print("</waplacement>"); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ViewContextExportHeader.ExportViewContexts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value0",getObject("TargetViewPipelineParams:ContentRepositoryUUID")),
new TagParameter("mapname","FormValueParameters")}, 10); %>
<% {try{executePipeline("ViewViewContextExport-GetFormValues",((java.util.Map)(getObject("FormValueParameters"))),"FormValues");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 13.",e);}} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameInvalid")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameNotDefined")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error middle" width="100%">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("ViewContextExportHeader.YouHaveNotProvidedAValidExportFileNameEnterAValidF.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% {out.write(localizeISText("ViewContextExportHeader.YouHaveNotProvidedAValidExportFileNameEnterAValidF.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts")))).booleanValue() && !((Boolean) ((hasLoopElements("FormValues:ViewContextClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
		<tr>
			<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			<td class="error middle" width="100%">
				<% {out.write(localizeISText("ViewContextExportHeader.YouHaveNotSelectedAnyViewContextsUseTheCheckBoxesT.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% }} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/viewcontext/ViewContextSearchMessagesAndErrors", null, "37");} %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td class="table_title_description">
			<% {out.write(localizeISText("ViewContextExportHeader.SpecifyAnExportFileAndCheckTheViewContextsYouWantT.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" height="66px">
				<tr>
					<!-- Input for file name -->
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportAllViewContexts")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportSelectedViewContexts")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("FormValues:ExportFileNameNotDefined")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ExportFileNameInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
						<td nowrap="nowrap" class="label"><label class="label label_error" for="ExportFileName"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } else { %>
						<td nowrap="nowrap" class="label"><label class="label" for="ExportFileName"><% {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } %>
					<td class="table_detail">
						<input type="text" name="ExportFileName" size="40" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FormValues:ExportFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					</td>
					<!-- Selection for file type/extension -->
					<td class="label" nowrap="nowrap">
						<label class="label label_select label_horizontal_align" for="ExportFileExtension"><% {out.write(localizeISText("ViewContextExportHeader.Format.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
					</td>
					<td class="table_detail">
						<select name="ExportFileExtension" size="1" class="select inputfield_en">
							<option value="xml" selected="selected"><% {out.write(localizeISText("PageletExportHeader.XML.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="zip" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FormValues:ExportFileExtension"),null).equals(context.getFormattedValue("zip",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PageletExportHeader.Zip.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						</select>
					</td>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentDomain:Configuration:getBoolean(\"intershop.auditing.enable\",\"(Boolean)false\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
						<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="15" height="1" alt="" border="0"></td>
						<td>
							
							<input type="checkbox" id="SelectIncludeAuditIntoExportCheckbox" name="SelectIncludeAuditIntoExportCheckbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %> checked="checked"<% } %>/>
							<input type="hidden" id="SelectIncludeAuditIntoExport" name="SelectIncludeAuditIntoExport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("InsertIntoExport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						</td>
						<td>
							<label class="label label_light" for="SelectIncludeAuditIntoExportCheckbox"><% {out.write(localizeISText("PageletExportHeader.audit.insertSelect","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
						</td>
						<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="15" height="1" alt="" border="0"></td>
						<td style="padding-top: 13px">
							<table class="js-startDateIncludeAuditIntoExport" cellpadding="0" cellspacing="0" border="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("InsertIntoExport"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %> style="display:none;"<% } %>>
								<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateIncludeAuditIntoExport"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletExportHeader.audit.startDate",null))),
new TagParameter("DateObject",getObject("StartDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect"))))}, 83); %>
								</tr>
							</table>
						</td>
					<% } %>
					<td class="w100">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table><% printFooter(out); %>