<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"customer/forms/CustomerFormModules", null, "2");} %><table border="0" cellspacing="0" cellpadding="0" class="form_bg w e s" width="100%">
<colgroup>
<col/>
<col/>
<col/>
<col/>
<col width="100%"/>
</colgroup>
<tbody>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:CustomerNo"))}, 17); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneHome"))}, 19); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Title"))}, 22); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneBusiness"))}, 24); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:FirstName"))}, 27); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:PhoneMobile"))}, 29); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:LastName"))}, 32); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Fax"))}, 34); %></tr>
<tr><% processOpenTag(response, pageContext, "customerfielddate", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Birthday")),
new TagParameter("CurrentRequest",getObject("CurrentRequest"))}, 37); %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Email")),
new TagParameter("Length","256")}, 39); %></tr>
<tr>
<td class="label nowrap" width="1%">
<label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerForm:PreferredLanguage:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %> label_error<% } %>" for="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.fields.labels.",null) + context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("CustomerForm:PreferredLanguage:Field:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label>
</td>
<td class="table_detail left" colspan="4">
<select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""><% {out.write(localizeISText("customer.form.fields.labels.please-select","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Locales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("CustomerForm:PreferredLanguage:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="4"> 
<% processOpenTag(response, pageContext, "customerfieldcheckbox", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Active"))}, 62); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerForm:CustomerApprovalStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr><% processOpenTag(response, pageContext, "customerfieldselection", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:CustomerApprovalStatus"))}, 67); %></tr><% } %><tr>
<td colspan="5" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerForm:Login")),
new TagParameter("Length","256")}, 74); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td class="table_detail nowrap">
<strong><% {out.write(localizeISText("customer.details.creation-date","",null,null,null,null,null,null,null,null,null,null,null));} %></strong>
</td>
<td class="table_detail nowrap"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:CreationDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:CreationDate"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td colspan="3">&nbsp</td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="3">&nbsp;</td>
<td class="table_detail nowrap">
<strong><% {out.write(localizeISText("customer.details.last-logged-in","",null,null,null,null,null,null,null,null,null,null,null));} %></strong>
</td>
<td class="table_detail nowrap" colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerDetails:UserBO:LastLoggedIn"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:LastLoggedIn"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CustomerDetails:UserBO:LastLoggedIn"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("customer.details.not-available","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</tbody>
</table><% printFooter(out); %>