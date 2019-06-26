<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {3}",e);}} %>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/captcha/Modules", null, "10");} %> 

<div class="marketing-area">
	<% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 13); %>
</div>

<h1><% {out.write(localizeISText("account.register.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>

<p><% {out.write(localizeISText("account.register.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p>

<div class="section" data-testing-id="account-create-full-page">
		<% URLPipelineAction action9 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Dispatch",null)))),null));String site9 = null;String serverGroup9 = null;String actionValue9 = context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Dispatch",null)))),null);if (site9 == null){  site9 = action9.getDomain();  if (site9 == null)  {      site9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup9 == null){  serverGroup9 = action9.getServerGroup();  if (serverGroup9 == null)  {      serverGroup9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RegisterUser");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue9, site9, serverGroup9,true)); %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:TargetPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
				<input type="hidden" name="TargetPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:TargetPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:Parameter1_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
					<input type="hidden" name="Parameter1_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter1_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<input type="hidden" name="Parameter1_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter1_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:Parameter2_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
					<input type="hidden" name="Parameter2_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter2_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<input type="hidden" name="Parameter2_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter2_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:Parameter3_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
					<input type="hidden" name="Parameter3_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter3_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<input type="hidden" name="Parameter3_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter3_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:Parameter3_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
					<input type="hidden" name="Parameter4_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter4_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<input type="hidden" name="Parameter4_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter4_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Dictionary:Parameter3_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
					<input type="hidden" name="Parameter5_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter5_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<input type="hidden" name="Parameter5_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Dictionary:Parameter5_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
				<% } %>
			<% } %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CommingFromSuggestedAddresses"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
				<h2><% {out.write(localizeISText("account.register.email_password.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
				
				<p><% {out.write(localizeISText("account.register.email_password.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
				
				<div class="section">
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/CreateFullLogin", null, "61");} %>
				</div>
			<% } %>
			
			<div class="row">
				<div class="col-md-6 col-sm-8">
					<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ContactInformationExtension", null, "67");} %>
				</div>
			</div>
			
			<h2><% {out.write(localizeISText("account.register.address.headding","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
			
			<div class="section">
				<p><% {out.write(localizeISText("account.register.address.message","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
				
				<div class="row">
					<div class="col-lg-6 col-md-8 col-sm-10">
						<% processOpenTag(response, pageContext, "addressform", new TagParameter[] {
new TagParameter("isRegistration",getObject("IsRegistration")),
new TagParameter("salutation_enumeration_provider",getObject("SalutationEnumerationKeyProvider")),
new TagParameter("webform",getObject("AddressForm")),
new TagParameter("countrylist",getObject("ShippingCountries")),
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("addresstemplate",context.getFormattedValue("modules/address/forms/",null) + context.getFormattedValue(getObject("AddressFormTemplate"),null))}, 78); %>
						
						<div class="form-group<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LoginForm:recaptcharesponsefield:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %> server-error<% } %>">
							<div class="col-sm-offset-4 col-sm-8">
								<% processOpenTag(response, pageContext, "captchaformfield", new TagParameter[] {
new TagParameter("fieldname","LoginForm:recaptcharesponsefield"),
new TagParameter("enablepreference","intershop.CaptchaPreferences.Register")}, 89); %>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-8">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CommingFromSuggestedAddresses"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
									<button class="btn btn-primary" type="submit" value="CreateAccount" name="CreateAccount"><% {out.write(localizeISText("account.create.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
								<% } else { %>
									<button class="btn btn-primary" type="submit" value="EditSuggestedAddress" name="EditSuggestedAddress"><% {out.write(localizeISText("account.create.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
								<% } %>
								<a class="btn btn-default" href="<% {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		<% out.print("</form>"); %>
</div>
<% printFooter(out); %>