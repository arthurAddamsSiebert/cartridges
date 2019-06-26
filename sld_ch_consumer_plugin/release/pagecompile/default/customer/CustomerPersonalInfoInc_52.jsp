<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
	<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_Title"><% {out.write(localizeISText("customer.Title.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail"><input type="text" name="RegForm_Title" id="RegForm_Title" maxlength="35" size="25" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:Title:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
	<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
	<td colspan="2">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				 <td class="input_checkbox">
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("CurrentUser:ID")),null).equals(context.getFormattedValue((getObject("Profile:UUID")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
						<input type="hidden" name="RegForm_Active" value="true"/>
						<input type="checkbox" disabled="disabled" checked="checked"/>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RegForm:Active:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
								<input type="checkbox" name="RegForm_Active" id="RegForm_Active" value="true" checked="checked"/>
							<% } else { %>
								<input type="checkbox" name="RegForm_Active" id="RegForm_Active" value="true"/>
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Profile:Credentials:isDisabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
									<input type="checkbox" name="RegForm_Active" id="RegForm_Active" value="true" checked="checked"/>
								<% } else { %>
									<input type="checkbox" name="RegForm_Active" id="RegForm_Active" value="true"/>
								<% } %>
							<% } else { %>
								<input type="checkbox" name="RegForm_Active" id="RegForm_Active" value="true" checked="checked"/>
							<% } %>
						<% } %>
					<% } %>
				</td>
				<td  class="label_checkbox_text"><label class="label label_checkbox_text" for="RegForm_Active"><% {out.write(localizeISText("customer.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:FirstName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail"><input type="text" name="RegForm_FirstName" id="RegForm_FirstName" maxlength="35" size="25" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
	<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
	<td nowrap="nowrap" class="label_select"><label class="label label_select" for="RegForm_LocaleID"><% {out.write(localizeISText("customer.PreferredLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<td class="table_detail" valign="top"  width="100%">
		<select name="RegForm_LocaleID" id="RegForm_LocaleID" class="select inputfield_en">
			<option value=""><% {out.write(localizeISText("customer.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
			<% while (loop("Locales","loc",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("loc:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("loc:LocaleID"),null).equals(context.getFormattedValue(getObject("RegForm:LocaleID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("loc:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
				<% } else { %>
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("loc:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("loc:LocaleID"),null).equals(context.getFormattedValue(getObject("Profile:PreferredLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("loc:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
				<% } %>
			<% } %>
		</select>
	</td>	
</tr>
<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:LastName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
		<td nowrap="nowrap"  class="label"><label class="label label_error" for="RegForm_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } else { %>
		<td nowrap="nowrap"  class="label"><label class="label" for="RegForm_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
	<% } %>
	<td class="table_detail"><input type="text" name="RegForm_LastName" id="RegForm_LastName" maxlength="35" size="25" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RegForm:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
	<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
	<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Birthday"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
		<td nowrap="nowrap" class="label"><label class="label label_error" for="RegForm_Birthday"><% {out.write(localizeISText("customer.Birthday.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } else { %>
		<td nowrap="nowrap" class="label"><label class="label" for="RegForm_Birthday"><% {out.write(localizeISText("customer.Birthday.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	<% } %>
	<td>
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>	
				<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","RegForm_Birthday"),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("DateString",getObject("RegForm_Birthday")),
new TagParameter("InputFieldSize","20"),
new TagParameter("DateObject",getObject("Profile:BirthdayDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ERROR_Birthday"))))}, 79); %>
			</tr>
		</table>	
	</td>
	<td colspan="2" nowrap="nowrap">&nbsp;</td>
</tr>
<tr>
	<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% printFooter(out); %>