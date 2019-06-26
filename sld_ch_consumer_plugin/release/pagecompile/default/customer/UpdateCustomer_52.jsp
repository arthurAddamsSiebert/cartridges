<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><% {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newCustomer"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",context.getFormattedValue(getObject("CustomerDetails:Name"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null)),null))}, 9); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "13");} %><% URLPipelineAction action331 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null));String site331 = null;String serverGroup331 = null;String actionValue331 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null);if (site331 == null){  site331 = action331.getDomain();  if (site331 == null)  {      site331 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup331 == null){  serverGroup331 = action331.getServerGroup();  if (serverGroup331 == null)  {      serverGroup331 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateCustomer");out.print("\"");out.print(" id=\"");out.print("kor-customer-updateForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue331, site331, serverGroup331,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="table_title s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>) - <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table>
<!-- delete confirmation--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e" rowspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("customer.details.label.delete",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right" class="top" rowspan="3">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.OK.button",null)),null)%>" class="button"/></td><td>&nbsp;</td>
<td class="button"><input type="submit" name="cancelDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
<tr><td class="confirm_subtitle"><% {out.write(localizeISText("customer.details.delete.info.text","",null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MailResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MailResult"),null).equals(context.getFormattedValue("ok",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><table border="0" cellspacing="4" cellpadding="0" width="100%" class="notification w e s">
<tr>
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" border="0"/></td>
<td width="100%"><% {out.write(localizeISText("customer.details.label.emailsent","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("customer.details.label.emailnotsent","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box e w s">
<tbody>
<tr>
<td class="error_icon e top" width="1%">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top"><% {out.write(localizeISText("customer.form.update.message.general","",null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("CustomerForm:InvalidParameters","InvalidParameter",null)) { %><br/><% while (loop("InvalidParameter:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.",null) + context.getFormattedValue(getObject("CustomerTypeID"),null) + context.getFormattedValue(".fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</tbody>
</table><% } %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("customer.details.label.mandatory.fields",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>class="js-form-disabled"<% } %>><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerForm", null, "98");} %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e left">
<tbody>
<tr>
<td class="s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CustomerID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="update" value="<% {out.write(localizeISText("customer.form.update.buttons.save","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO:Extension(\"PrivateCustomer\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="newpassword" value="<% {out.write(localizeISText("customer.form.new-password.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="confirmDelete" value="<% {out.write(localizeISText("customer.form.update.buttons.delete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerBO:Extension(\"Contract\")")))).booleanValue() && ((Boolean) ((((Boolean) getObject("CustomerBO:Extension(\"Contract\"):Erasable")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "136");} %><% printFooter(out); %>