<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessType",null),context.getFormattedValue(getObject("ProcessType"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.NewAttachment.text",null)))}, 7); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("sld_enterprise_app.NewAttachment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionCanceled")))).booleanValue() && ((Boolean) getObject("RegForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("RegForm:Location:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Location:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box e w s">
<tr valign="center">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("sld_enterprise_app.AdditionalContentCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("RegForm:Location:isMissing"))).booleanValue() || ((Boolean) (getObject("RegForm:Location:isInvalid"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.PleaseProvideAValidFileLocation.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.PleaseProvideADisplayNameForThisAttachment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("sld_enterprise_app.ClickSelectToAttachAFileFromTheSystemSContentDirec.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action129 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null));String site129 = null;String serverGroup129 = null;String actionValue129 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null);if (site129 == null){  site129 = action129.getDomain();  if (site129 == null)  {      site129 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup129 == null){  serverGroup129 = action129.getServerGroup();  if (serverGroup129 == null)  {      serverGroup129 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewACForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue129, site129, serverGroup129,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<input type="hidden" name="ProcessType" value="New"/>
<input type="hidden" name="Secure" value="true"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="webform-id" value="RegForm"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s n">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionCanceled")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LocationSelectionSubmitted")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RegForm:isSubmitted")).booleanValue() && ((Boolean) getObject("RegForm:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="fielditem3 error" nowrap="nowrap">
<label for="attachment-name" class="label_error"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td><% } else { %><td class="fielditem3" nowrap="nowrap">
<label for="attachment-name"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td><% } %><td class="fielditem2">
<input type="text" name="RegForm_DisplayName" id="attachment-name" maxlength="35" size="61" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="fielditem3 top" nowrap="nowrap">
<label for="attchment-description"><% {out.write(localizeISText("sld_enterprise_app.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="fielditem2" colspan="3">
<textarea rows="3" cols="59" name="RegForm_Description" id="attchment-description" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Language.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="fielditem2"><% while (loop("Locales","Locales",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="fielditem3" nowrap="nowrap">
<label for="attachment-type"><% {out.write(localizeISText("sld_enterprise_app.ContentType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td class="table_detail" width="100%">
<select name="RegForm_ContentType" id="attachment-type" class="select inputfield_en">
<option value="Information" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Information",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_enterprise_app.Information.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Contract" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Contract",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_enterprise_app.Contract.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Manual" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Manual",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_enterprise_app.Manual.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Other" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm_ContentType"),null).equals(context.getFormattedValue("Other",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("sld_enterprise_app.Other.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("LocationSelectionCanceled"))))).booleanValue() && ((Boolean) (getObject("RegForm:isSubmitted"))).booleanValue() && ((Boolean) (((((Boolean) (getObject("RegForm:Location:isMissing"))).booleanValue() || ((Boolean) (getObject("RegForm:Location:isInvalid"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorPath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><td class="fielditem3 error" nowrap="nowrap">
<label for="attachment-location" class="label_error"><% {out.write(localizeISText("sld_enterprise_app.ContentDirectory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td><% } else { %><td class="fielditem3" nowrap="nowrap">
<label for="attachment-location"><% {out.write(localizeISText("sld_enterprise_app.ContentDirectory.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td><% } %><td class="fielditem2">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="text" name="RegForm_Location" id="attachment-location" maxlength="350" size="51" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Location:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td class="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Select.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label_checkbox" nowrap="nowrap"><label class="label label_checkbox" for="attachment-type"><% {out.write(localizeISText("NewProductAttachment_52.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td width="100%">
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td class="input_checkbox">
<input type="hidden" name="fileSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("fileSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="RegForm_InEmail" id="attachment-onconfirmationemail" type="checkbox" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("RegForm:InEmail:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>checked<% } %>>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="attachment-onconfirmationemail"> <% {out.write(localizeISText("NewProductAttachment_52.Email.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>