<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ApplicationNew.NewApplication.text",null)))}, 4); %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/AppTabs.isml", null, "7");} %><table cellpadding="0" cellspacing="0" border="0" width="100%" data-testing-id="bo-new-application-page">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ApplicationNew.NewApplication.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_AppGeneral")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Iterator")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ApplicationNew.ApplicationCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_AppGeneral"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ERROR_AppGeneral"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Iterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ERROR_Iterator"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Apps"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {String value = null;try{value=context.getFormattedValue(getObject("ERROR_Apps"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b><br/></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("ApplicationForm:Invalid"))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ERROR_UrlIdentifier"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="middle">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ApplicationNew.ApplicationCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:DisplayName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("ApplicationNew.ApplicationNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:UrlIdentifier:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {out.write(localizeISText("ApplicationNew.ApplicationURLIdentifierMustContainAlphanumeric.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:UrlIdentifier:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {out.write(localizeISText("ApplicationNew.ApplicationURLIdentifierIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_UrlIdentifier"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ERROR_UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% }}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDefaultSetting"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Application.subject",null))),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ApplicationNew.SettingThisApplicationAsDefaultOverwrite.message",null)))}, 73); %></table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ApplicationNew.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action337 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApp-Dispatch",null)))),null));String site337 = null;String serverGroup337 = null;String actionValue337 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApp-Dispatch",null)))),null);if (site337 == null){  site337 = action337.getDomain();  if (site337 == null)  {      site337 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup337 == null){  serverGroup337 = action337.getServerGroup();  if (serverGroup337 == null)  {      serverGroup337 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApp-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AppGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue337, site337, serverGroup337,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:AppID:AppIDs:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail">
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:AppID:AppIDs:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:AppID:AppIDs:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en"><% while (loop("ApplicationForm:AppID:AppIDs:FormFieldValues","AppIdValue",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AppIdValue:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AppIdValue:Selected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("AppIdValue:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
<td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:DisplayName:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.ApplicationName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.ApplicationName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail"><input type="text" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
</tr>
<tr>
<td class="label_checkbox"><label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.Enabled.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:Enabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
</tr>
<tr>
<td class="label_checkbox"><label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Default:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.Default.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox">
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Default:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Default:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:Default:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><% {String value = null;try{value=context.getFormattedValue(getObject("Application:Default"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ApplicationForm:UrlIdentifier:Invalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_UrlIdentifier")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:UrlIdentifier:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.URLIdentifier.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:UrlIdentifier:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.URLIdentifier.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %> 
<td class="table_detail"><input type="text" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:UrlIdentifier:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:UrlIdentifier:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:UrlIdentifier:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" >
<textarea class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" cols="69" rows="5"><% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea> 
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("ApplicationNew.RegionalSettings.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ApplicationNew.UseTheFollowingPreferencesToDefineRegionalSettingsBehavior.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_header n w e s"><% {out.write(localizeISText("ApplicationNew.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ApplicationNew.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ApplicationNew.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select e s w"><label class="label label_select" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {233}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.DefaultUnitOfMass.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %> 
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {236}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {236}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en"><% while (loop("UnitsOfMass",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {238}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfMass"),null).equals(context.getFormattedValue(getObject("UnitsOfMass"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {242}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } else { %><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {247}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {247}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" disabled="disabled"><% while (loop("UnitsOfMass",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfMass"),null).equals(context.getFormattedValue(getObject("UnitsOfMass"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",250,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {253}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ApplicationNew.DefinesTheDefaultUnitOfMass.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select e s w"><label class="label label_select" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {263}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ApplicationNew.DefaultUnitOfLength.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",265,e);}if (_boolean_result) { %> 
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {266}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {266}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en"><% while (loop("UnitsOfLength",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfLength"),null).equals(context.getFormattedValue(getObject("UnitsOfLength"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {272}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></select><% } else { %><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" disabled="disabled"><% while (loop("UnitsOfLength",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {278}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfLength"),null).equals(context.getFormattedValue(getObject("UnitsOfLength"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {282}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></select><% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ApplicationNew.DefinesTheDefaultUnitOfLength.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferredTimeZoneBO"),
new TagParameter("key2","name"),
new TagParameter("key0","TimeZoneBOs"),
new TagParameter("value2",getObject("ApplicationForm:DefaultTimeZone:QualifiedName")),
new TagParameter("value1",getObject("PreferredTimeZoneBO")),
new TagParameter("value0",getObject("TimeZoneBOs")),
new TagParameter("mapname","params")}, 290); %><tr>
<td class="catalog_description e s w" nowrap="nowrap"><% {out.write(localizeISText("ApplicationNew.DefaultTimeZone.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_REGIONALSETTINGS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",297,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","app/TimeZoneDropDown.isml"),
new TagParameter("classes","regionalsettings-select-timezones"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("ApplicationNew.SelectTimeZone.noneselectedtext",null))),
new TagParameter("id","select-timezones"),
new TagParameter("position","below"),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1")}, 298); %><% } else { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mode","add"),
new TagParameter("key3","Disabled"),
new TagParameter("value3","true"),
new TagParameter("mapname","params")}, 304); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","app/TimeZoneDropDown.isml"),
new TagParameter("classes","regionalsettings-select-timezones"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("ApplicationNew.SelectTimeZone.noneselectedtext",null))),
new TagParameter("id","select-timezones"),
new TagParameter("position","below"),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1")}, 305); %><% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ApplicationNew.DefinesTheDefaultTimeZone.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="e w"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/ApplicationCurrencies.isml", null, "320");} %></td>
</tr>
<tr>
<td class="e w" colspan="2"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/ApplicationLocales.isml", null, "327");} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AddressValidatorServiceExists"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",332,e);}if (_boolean_result) { %><tr>
<td colspan="2"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/ApplicationPreferenceAddressValidation.isml", null, "335");} %></td>
</tr><% } %> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %><tr>
<td align="right" colspan="2" class="e s w">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationNew.Apply.button",null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Apps"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",348,e);}if (_boolean_result) { %>
disabled="true"
<% } %>
/>
</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationNew.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %> 
</td>
</tr>
</table><% printFooter(out); %>