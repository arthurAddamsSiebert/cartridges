<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- BrandingPackage_32 -->
<!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",getObject("BrandingPackage:DisplayName"))}, 5); %><% URLPipelineAction action164 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage_32-Dispatch",null)))),null));String site164 = null;String serverGroup164 = null;String actionValue164 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage_32-Dispatch",null)))),null);if (site164 == null){  site164 = action164.getDomain();  if (site164 == null)  {      site164 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup164 == null){  serverGroup164 = action164.getServerGroup();  if (serverGroup164 == null)  {      serverGroup164 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("BrandingPackageDetail");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue164, site164, serverGroup164,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BrandingPackageForm:Name:isMissing")).booleanValue() || ((Boolean) getObject("BrandingPackageForm:Name:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("BrandingPackage_32.PackageUpdateFailedPleaseProvideAValidName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","Branding Package"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 25); %><% }} %><!-- end error handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("BrandingPackage_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("BrandingPackage_32.ClickApplyToSaveTheDetailsClickResetToDiscard.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BrandingPackageForm:isSubmitted")).booleanValue() && ((Boolean) getObject("BrandingPackageForm:Name:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="BrandingPackageForm_Name"><% {out.write(localizeISText("BrandingPackage_32.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="BrandingPackageForm_Name"><% {out.write(localizeISText("BrandingPackage_32.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" width="100%">
<input type="text" name="BrandingPackageForm_Name" id="BrandingPackageForm_Name" class="inputfield_en" size="70" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BrandingPackageForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("BrandingPackageForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("BrandingPackage:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="BrandingPackageForm_Description"><% {out.write(localizeISText("BrandingPackage_32.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
<td class="table_detail">
<textarea name="BrandingPackageForm_Description" id="BrandingPackageForm_Description" rows="5" cols="70" class="inputfield_en" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BrandingPackageForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("BrandingPackageForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("BrandingPackage:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("BrandingPackage_32.ContentSize.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("BrandingPackage:ArchiveSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("BrandingPackage_32.Bytes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("BrandingPackage_32.Preview.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BrandingPackage:isPreviewAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("BrandingPackage:PreviewRef"),null)),null)%>" target="_blank"><img src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("BrandingPackage:PreviewRef"),null)),null)%>" width="150" height="150" alt="" border="0"/></a><% } else { %><% {out.write(localizeISText("BrandingPackage_32.NoPreviewImageAvailable.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
<!-- button bar --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DefaultButton" value="applyUpdatePackage"/>
<input name="ChannelID" type="hidden" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input name="OrganizationType" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="OrganizationUUID" type="hidden" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<input name="BrandingPackageUUID" type="hidden" value="<%=context.getFormattedValue(getObject("BrandingPackage:UUID"),null)%>"/>
<input name="webform_id" type="hidden" value="BrandingPackageForm"/>
<input type="submit" name="applyUpdatePackage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackage_32.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="reset" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackage_32.Reset.button",null)),null)%>" name="reset" />
</td>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackage_32.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "108");} %><!-- EO Working Area --><% printFooter(out); %>