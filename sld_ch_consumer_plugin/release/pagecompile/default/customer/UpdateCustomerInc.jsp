<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("Profile"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
		<td class="table_title w e s"><% {out.write(localizeISText("UpdateCustomerInc.CreateNewUser.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<% } else { %>
		<td class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("UpdateCustomerInc.General.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<% } %>
</tr>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MailResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MailResult"),null).equals(context.getFormattedValue("ok",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="info_box">
						<tr>
							<td class="fielditem2" width="100%" style="color: #40A040;">
								<% {out.write(localizeISText("UpdateCustomerInc.AnEmailWithAPasswordRetrievalLinkHasBeenGenerated.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td class="w e s">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
						<tr>
							<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error" width="100%">
								<% {out.write(localizeISText("UpdateCustomerInc.NotSentToTheCustomerSLogin.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_UserEmailUndefined"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
		<tr>
			<td class="w e s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
					<tr>
						<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% {out.write(localizeISText("UpdateCustomerInc.ToSendPasswordRetrievalEmailPleaseUpdateTheLoginOf.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("RegForm:UserID:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:UserID:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() || ((Boolean) getObject("RegForm:FirstName:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:LastName:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Login:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Login:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:Password:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Password:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Password:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:PasswordConfirmation:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:PasswordConfirmation:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Birthday")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("noErrorMessages"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
		<tr>
			<td class="w e s">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
					<tr>
						<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NewUser"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("UpdateCustomerInc.CustomerCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
							<% } else { %>
								<% {out.write(localizeISText("UpdateCustomerInc.CustomerCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("BusinessPartnerNoNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.TheProvidedUserIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.TheProvidedLoginIsAlreadyInUse.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("PasswordConfirmationDoesNotMatchWithPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.PasswordConfirmationDoesNotMatchWithPassword.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginWithoutPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.YouHaveToProvideAPasswordIfYouWantToSetTheLogin.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% }}}} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %> 
								<br/><% {out.write(localizeISText("UpdateCustomerInc.TheLoginIsInvalidLoginMustBeAnEmailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Birthday"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Birthday"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
									<br/>- <% {out.write(localizeISText("UpdateCustomerInc.BirthdayHasAWrongFormatSeeFormatBelowTheBirthday.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Birthday"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
									<br/>- <% {out.write(localizeISText("customer.PleaseProvideAValidBirthday.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Birthday"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
									<br/>- <% {out.write(localizeISText("customer.PleaseProvideAValidBirthday.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:UserID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.UserIDIsMandatoryPleaseProvideAUserID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:UserID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.UserIDIsInvalidLoginNamesMustBeAtLeast5Characters.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:FirstName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.FirstNameIsMandatoryPleaseProvideAFirstName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:LastName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.LastNameIsMandatoryPleaseProvideALastName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Login:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.LoginIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Login:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.LoginIsMandatoryPleaseProvideALogin.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Password:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.PasswordIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:Password:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.PasswordIsMandatoryPleaseProvideAPassword.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:PasswordConfirmation:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.PasswordConfirmationIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:PasswordConfirmation:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
									<br/><% {out.write(localizeISText("UpdateCustomerInc.PasswordConfirmationIsMandatoryPleaseProvideAPassword.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							<% }}} %>
							<br/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CredentialMessage", null, "134");} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>

	<!-- delete confirmation-->
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","user"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 144); %>
	<% } %>

	<tr>
		<td class="table_title_description w e s"><% {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
<% } %>

<tr>
	<td>
		<table border="0" cellspacing="0" cellpadding="0" width="100%" class="form_bg w e">
			<tr>
				<td class="table_title2 left s" colspan="5"><% {out.write(localizeISText("UpdateCustomerInc.PersonalInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
			</tr>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"customer/CustomerPersonalInfoInc", null, "161");} %>

			<tr>
				<td class="table_title2 left s n" colspan="5"><% {out.write(localizeISText("UpdateCustomerInc.UsernamePassword.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
			</tr>

			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
					<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_UserID"><% {out.write(localizeISText("customer.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:UserID:isMissing")).booleanValue() || ((Boolean) getObject("RegForm:UserID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
					<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_UserID"><% {out.write(localizeISText("customer.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% } else { %>
					<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_UserID"><% {out.write(localizeISText("customer.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% }} %>
				<td class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>
						<input type="text" name="RegForm_UserID" id="RegForm_UserID" maxlength="35" size="30" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:UserID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:DataSheet:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
					<% } else { %>
						<input type="text" name="RegForm_UserID" id="RegForm_UserID" maxlength="35" size="30" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:UserID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:DataSheet:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" disabled="disabled"/>
					<% } %>
				</td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("UpdateCustomerInc.LastTimeLoggedIn.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Profile:Credentials:LastLoggedIn"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Credentials:LastLoggedIn"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Credentials:LastLoggedIn"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>
				</td>
			</tr>
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>
					<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_Login"><% {out.write(localizeISText("customer.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:Login:isInvalid")).booleanValue() || ((Boolean) getObject("RegForm:Login:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginAlreadyInUse",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %>
					<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_Login"><% {out.write(localizeISText("customer.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% } else { %>
					<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_Login"><% {out.write(localizeISText("customer.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
				<% }} %>
				<td class="table_detail" colspan="4">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>
						<input autocomplete="off" type="text" name="RegForm_Login" id="RegForm_Login" maxlength="35" size="30" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Login:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
					<% } else { %>
						<input autocomplete="off" type="text" name="RegForm_Login" id="RegForm_Login" maxlength="35" size="30" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Login:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" disabled="disabled"/>
					<% } %>
				</td>
			</tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:Password:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginWithoutPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>
						<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_Password"><% {out.write(localizeISText("customer.Password.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } else { %>
						<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_Password"><% {out.write(localizeISText("customer.Password.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } %>
					<td class="table_detail" colspan="4"><input autocomplete="off" type="password" name="RegForm_Password" id="RegForm_Password" maxlength="35" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Password:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
				</tr>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegForm:PasswordConfirmation:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("LoginWithoutPassword",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %>
						<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_PasswordConfirmation"><% {out.write(localizeISText("customer.ConfirmPassword.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } else { %>
						<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_PasswordConfirmation"><% {out.write(localizeISText("customer.ConfirmPassword.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
					<% } %>
					<td class="table_detail" colspan="4"><input autocomplete="off" type="password" id="RegForm_PasswordConfirmation" name="RegForm_PasswordConfirmation" maxlength="35" size="30" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:PasswordConfirmation:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
				</tr>
			<% } %>
		</table>
	</td>
</tr>
<tr>
	<td class="form_bg w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="5" height="6" alt="" border="0"/></td>
</tr>
<% printFooter(out); %>