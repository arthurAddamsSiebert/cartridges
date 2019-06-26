<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% URLPipelineAction action472 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Dispatch",null)))),null));String site472 = null;String serverGroup472 = null;String actionValue472 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Dispatch",null)))),null);if (site472 == null){  site472 = action472.getDomain();  if (site472 == null)  {      site472 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup472 == null){  serverGroup472 = action472.getServerGroup();  if (serverGroup472 == null)  {      serverGroup472 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue472, site472, serverGroup472,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewUser.CreateNewUserGeneral.text",null)))}, 8); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<input type="hidden" name="webform-id" value="RegForm"/>
<input type="hidden" name="JumpTo" value="Standard"/><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/UserTabs", null, "15");} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s"><% {out.write(localizeISText("NewUser.CreateNewUser.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:UserID:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:UserID:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() || ((Boolean) getObject("RegForm:FirstName:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:LastName:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Email:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Login:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Login:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue() || ((Boolean) getObject("RegForm:IPRange:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_IPRangeInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewUser.UserCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:UserID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUser.UserIDNameIsMandatoryPleaseProvideAUserID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:UserID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUser.UserIDIsInvalidLoginNamesMustBeAtLeast5CharactersL.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("BusinessPartnerNoNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.TheProvidedUserIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.TheProvidedLoginIsAlreadyInUse.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_IPRangeInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUser.TheIPRangeIsInvalidExamples100008IPv4Fe8064IPv6.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUser.TheEmailIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:FirstName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.FirstNameIsMandatoryPleaseProvideAFirstName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:LastName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.LastNameIsMandatoryPleaseProvideALastName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Email:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.EmailIsMandatoryPleaseProvideAValidEMailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Login:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.LoginNameIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Login:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.LoginNameIsMandatoryPleaseProvideALogin.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CredentialMessage", null, "76");} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end errors-->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewUser.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_Title"><% {out.write(localizeISText("sld_enterprise_app.Title.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_Title" id="RegForm_Title" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Title:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td colspan="2" width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><input type="checkbox" name="RegForm_Active" id="RegForm_Active" maxlength="35" size="45" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm:Active:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% } else { %><input type="checkbox" name="RegForm_Active" id="RegForm_Active" maxlength="35" size="45" value="true" checked="checked" /><% } %></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text" for="RegForm_Active"><% {out.write(localizeISText("NewUser.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
<script language="JavaScript" type="text/javascript">
<!--
document.formMask.RegForm_Title.focus();
-->
</script>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:FirstName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_FirstName"><% {out.write(localizeISText("sld_enterprise_app.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_FirstName"><% {out.write(localizeISText("sld_enterprise_app.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<input type="text" name="RegForm_FirstName" id="RegForm_FirstName" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:LastName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_LastName"><% {out.write(localizeISText("sld_enterprise_app.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_LastName"><% {out.write(localizeISText("sld_enterprise_app.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" width="100%"><input type="text" name="RegForm_LastName" id="RegForm_LastName" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_Location"><% {out.write(localizeISText("sld_enterprise_app.Location.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td> 
<td class="table_detail">
<input type="text" name="RegForm_Location" id="RegForm_Location" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Location:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_RoomNo"><% {out.write(localizeISText("NewUser.RoomNo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_RoomNo" id="RegForm_RoomNo" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:RoomNo:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_PhoneBusiness"><% {out.write(localizeISText("sld_enterprise_app.PhoneBusiness.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_PhoneBusiness" id="RegForm_PhoneBusiness" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:PhoneBusiness:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_PhoneHome"><% {out.write(localizeISText("NewUser.PhoneHome.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_PhoneHome" id="RegForm_PhoneHome" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:PhoneHome:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_PhoneMobile"><% {out.write(localizeISText("sld_enterprise_app.PhoneMobile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_PhoneMobile" id="RegForm_PhoneMobile" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:PhoneMobile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_Fax"><% {out.write(localizeISText("sld_enterprise_app.Fax.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="RegForm_Fax" id="RegForm_Fax" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Fax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:Email:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_Email"><% {out.write(localizeISText("sld_enterprise_app.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_Email"><% {out.write(localizeISText("sld_enterprise_app.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<input type="text" name="RegForm_Email" id="RegForm_Email" maxlength="256" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Email:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label"><label class="label" for="RegForm_JobTitle"><% {out.write(localizeISText("sld_enterprise_app.JobTitle.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%">
<input type="text" name="RegForm_JobTitle" id="RegForm_JobTitle" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:JobTitle:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="5" class="n"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:UserID:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:UserID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_UserID"><% {out.write(localizeISText("sld_enterprise_app.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_UserID"><% {out.write(localizeISText("sld_enterprise_app.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" nowrap="nowrap" colspan="4"><input type="text" name="RegForm_UserID" id="RegForm_UserID" maxlength="35" size="25" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("RegForm:UserID")))).booleanValue() && ((Boolean) ((((Boolean) getObject("RegForm:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SeriesId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:UserID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:Login:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Login:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_Login"><% {out.write(localizeISText("sld_enterprise_app.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_Login"><% {out.write(localizeISText("sld_enterprise_app.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" colspan="4">
<input type="text" name="RegForm_Login" id="RegForm_Login" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Login:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap"></td>
<td class="table_detail"></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:IPRange:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_IPRange"><% {out.write(localizeISText("sld_enterprise_app.IPRange.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegForm_IPRange"><% {out.write(localizeISText("sld_enterprise_app.IPRange.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="table_detail">
<input type="text" name="RegForm_IPRange" id="RegForm_IPRange" maxlength="256" size="20" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:IPRange:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Credentials:IPRange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap"></td>
<td class="table_detail"></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="RegForm_LocaleID"><% {out.write(localizeISText("NewUser.PreferredLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select name="RegForm_LocaleID" id="RegForm_LocaleID" class="select inputfield_en">
<option value=""><% {out.write(localizeISText("sld_enterprise_app.NoneOrganizationDefault.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Locales","loc",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("loc:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("loc:LocaleID"),null).equals(context.getFormattedValue(getObject("RegForm:LocaleID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("loc:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="5" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>