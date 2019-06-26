<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"transport/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",getObject("TransportProcessConfigBO:DisplayName"))}, 3); %><style>
.inputError{border:solid 1px red;}
</style><% URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewTransportProcessConfigurationDetail-Dispatch",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewTransportProcessConfigurationDetail-Dispatch",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewTransportProcessConfigurationDetail-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateTransportConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); %><input type="hidden" name="<%=context.getFormattedValue(getObject("TransportUpdateForm:DomainID:QualifiedName"),null)%>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TransportDomain:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";out.write(value);} %>"/>
<input type="hidden" name="DomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TransportDomain:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";out.write(value);} %>"/>
<input type="hidden" name="TransportProcessSearchForm_DomainID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TransportDomain:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";out.write(value);} %>"/>
<input type="hidden" name="ProcessID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:ProcessID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";out.write(value);} %>"/> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n e w">
<tr>
<td width="100%" class="table_title s"><% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<tr>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Head.Mandatory",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TransportProcessConfigBO:Valid"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon top">
<img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/error.gif" width="16" height="15" alt="" border="0"/> 
</td>
<td class="error top" width="100%"><% {out.write(localizeISText("TransportUpdateConfiguration.Head.Invalid","",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
</table> 
</td> 
</tr><% } %></table> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e"> 
<tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Settings.Common","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("errormessage","TransportUpdateConfiguration.Input.DisplayName.errormessage"),
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:DisplayName")),
new TagParameter("formparameter",getObject("TransportUpdateForm:DisplayName")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.DisplayName.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.DisplayName.label"),
new TagParameter("required","true")}, 51); %><tr valign="top">
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Type.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:ConfigType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</td>
<td class="table_title_description" />
</tr><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("errormessage","TransportUpdateConfiguration.Input.ProcessID.errormessage"),
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:ProcessID")),
new TagParameter("formparameter",getObject("TransportUpdateForm:ProcessID")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.ProcessID.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.ProcessID.label"),
new TagParameter("required","true")}, 61); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:FileIncludePattern")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.FileInclude.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:FileIncludePattern")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.FileInclude.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.FileInclude.label"),
new TagParameter("required","false")}, 64); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:FileExcludePattern")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.FileExclude.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:FileExcludePattern")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.FileExclude.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.FileExclude.label"),
new TagParameter("required","false")}, 68); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:LocalLocation")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.LocalFileLocation.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:LocalLocation")),
new TagParameter("size","50"),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.LocalFileLocation.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.LocalFileLocation.label"),
new TagParameter("required","true")}, 72); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO:EffectiveLocalLocation")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><tr valign="top">
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.LocalFileLocation.absolutepath","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><code><% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:EffectiveLocalLocation:AbsolutePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";out.write(value);} %></code></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.LocalFileLocation.absolutepath.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:LocalFileName")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.LocalFileName.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:LocalFileName")),
new TagParameter("size","50"),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.LocalFileName.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.LocalFileName.label"),
new TagParameter("required","true")}, 87); %><% } %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:Archive")),
new TagParameter("formparameter",getObject("TransportUpdateForm:Archive")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Archive.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Archive.label"),
new TagParameter("required","false")}, 92); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO:EffectiveArchive")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("TransportProcessConfigBO:EffectiveArchive"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><tr valign="top">
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Archive.absolute","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><code><% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:EffectiveArchive"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";out.write(value);} %></code></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Archive.absolute.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EmailTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Mail.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:MailFromAddress")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Mail.From.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:MailFrom")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.From.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.From.label"),
new TagParameter("required","true")}, 113); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:ReplyToAddress")),
new TagParameter("formparameter",getObject("TransportUpdateForm:ReplyTo")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.Reply.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.Reply.label"),
new TagParameter("required","false")}, 117); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:MailToString")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Mail.To.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:MailTo")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.To.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.To.label"),
new TagParameter("required","true")}, 121); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:CCString")),
new TagParameter("formparameter",getObject("TransportUpdateForm:CC")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.CC.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.CC.label"),
new TagParameter("required","false")}, 125); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:BCCString")),
new TagParameter("formparameter",getObject("TransportUpdateForm:BCC")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.CC.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.BCC.label"),
new TagParameter("required","false")}, 129); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:Subject")),
new TagParameter("formparameter",getObject("TransportUpdateForm:MailSubject")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.Subject.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.Subject.label"),
new TagParameter("required","false")}, 133); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("EmailTransportProcessConfigBO:Message")),
new TagParameter("formparameter",getObject("TransportUpdateForm:MailMessage")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Mail.Message.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Mail.Message.label"),
new TagParameter("required","false")}, 137); %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AzureTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Azure.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("AzureTransportProcessConfigBO:AccountName")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Azure.AccountName.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:AccountName")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Azure.AccountName.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Azure.AccountName.label"),
new TagParameter("required","true")}, 148); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("AzureTransportProcessConfigBO:AccountKey")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Azure.AccountKey.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:AccountKey")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Azure.AccountKey.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Azure.AccountKey.label"),
new TagParameter("type","password"),
new TagParameter("required","true")}, 152); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("AzureTransportProcessConfigBO:FileShare")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Azure.Share.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:FileShare")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Azure.Share.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Azure.Share.label"),
new TagParameter("required","true")}, 156); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("AzureTransportProcessConfigBO:RemoteLocation")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Remote.Location.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:RemoteLocation")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Remote.Location.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Remote.Location.label"),
new TagParameter("required","false")}, 160); %><% } else { %><tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("TransportProcessConfigBO:EffectiveURL")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><tr valign="top">
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.URL.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><code><% {String value = null;try{value=context.getFormattedValue(getObject("TransportProcessConfigBO:EffectiveURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";out.write(value);} %></code></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.URL.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr valign="top">
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <span class="star">*</span></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:Protocol:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("TransportProcessConfigBO:Protocol:Name")); getPipelineDictionary().put("SelectedProtocol", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("TransportUpdateForm:Protocol:Value")); getPipelineDictionary().put("SelectedProtocol", temp_obj);} %><% } %><select name="<%=context.getFormattedValue(getObject("TransportUpdateForm:Protocol:QualifiedName"),null)%>" class="select"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><option value="HTTP"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProtocol")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedProtocol"),null).equals(context.getFormattedValue("http",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.HTTP","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="HTTPS"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProtocol")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedProtocol"),null).equals(context.getFormattedValue("https",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.HTTPS","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %><option value="FTP"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProtocol")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedProtocol"),null).equals(context.getFormattedValue("ftp",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.FTP","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="FTPS"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProtocol")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedProtocol"),null).equals(context.getFormattedValue("ftps",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.FTPS","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><option value="SFTP" selected="selected"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.SFTP","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% }}} %></select>
</td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Remote.Protocol.description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:HostName")),
new TagParameter("formparameter",getObject("TransportUpdateForm:HostName")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Remote.Host.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Remote.Host.label"),
new TagParameter("required","true")}, 201); %> 
<% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:Port")),
new TagParameter("formparameter",getObject("TransportUpdateForm:Port")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Remote.Port.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Remote.Port.label"),
new TagParameter("required","false")}, 205); %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:RemoteLocation")),
new TagParameter("formparameter",getObject("TransportUpdateForm:RemoteLocation")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Remote.Location.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Remote.Location.label"),
new TagParameter("required",(((((Boolean) (disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))}, 209); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("HTTPTransportProcessConfigBO:URLParameterDisplayValue")),
new TagParameter("formparameter",getObject("TransportUpdateForm:URLParameterList")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("size","50"),
new TagParameter("description","TransportUpdateConfiguration.Input.URL.Parameters.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.URL.Parameters.label"),
new TagParameter("required","false")}, 215); %><% } %><tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><tr valign="top">
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %> <span class="star">*</span><% } %></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:AuthenticationMethod:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("TransportProcessConfigBO:AuthenticationMethod")); getPipelineDictionary().put("SelectedAuthenticationMethod", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("TransportUpdateForm:AuthenticationMethod:Value")); getPipelineDictionary().put("SelectedAuthenticationMethod", temp_obj);} %><% } %><select name="<%=context.getFormattedValue(getObject("TransportUpdateForm:AuthenticationMethod:QualifiedName"),null)%>" class="select <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("TransportUpdateForm:AuthenticationMethod:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %>inputError<% } %>">
<option value=""><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.None","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",234,e);}if (_boolean_result) { %><option value="BASIC"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAuthenticationMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAuthenticationMethod"),null).equals(context.getFormattedValue("BASIC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.Basic","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="NTLM"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAuthenticationMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAuthenticationMethod"),null).equals(context.getFormattedValue("NTLM",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.NTLM","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %><option value="PASSPHRASE"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAuthenticationMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAuthenticationMethod"),null).equals(context.getFormattedValue("PASSPHRASE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.PassPhrase","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="KEY"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAuthenticationMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAuthenticationMethod"),null).equals(context.getFormattedValue("KEY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.Key","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% }} %></select><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("TransportUpdateForm:AuthenticationMethod:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %><div class="error"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.errormessage","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.Option.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",250,e);}if (_boolean_result) { %><% {Object temp_obj = ("TransportUpdateConfiguration.Input.Authentication.Username.optional.description"); getPipelineDictionary().put("UsernameDescription", temp_obj);} %><% } else { %><% {Object temp_obj = ("TransportUpdateConfiguration.Input.Authentication.Username.required.description"); getPipelineDictionary().put("UsernameDescription", temp_obj);} %> 
<% } %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:UserName")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Authentication.Username.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:UserName")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description",getObject("UsernameDescription")),
new TagParameter("label","TransportUpdateConfiguration.Input.Authentication.Username.label"),
new TagParameter("required",((((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("HTTPTransportProcessConfigBO:AuthenticationMethod"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 256); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",260,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:Password")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Authentication.PassPhrase.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:Password")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Authentication.PassPhrase.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Authentication.PassPhrase.label"),
new TagParameter("type","password"),
new TagParameter("required","true")}, 261); %><% } else { %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:Password")),
new TagParameter("errormessage","TransportUpdateConfiguration.Input.Authentication.Password.errormessage"),
new TagParameter("formparameter",getObject("TransportUpdateForm:Password")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.Authentication.Password.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Authentication.Password.label"),
new TagParameter("type","password"),
new TagParameter("required","false")}, 265); %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:KeyFilePath")),
new TagParameter("formparameter",getObject("TransportUpdateForm:KeyFilePath")),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("size","50"),
new TagParameter("description","TransportUpdateConfiguration.Input.Authentication.KeyFilePath.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.Authentication.KeyFilePath.label"),
new TagParameter("required",((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAuthenticationMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAuthenticationMethod"),null).equals(context.getFormattedValue("Key",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 272); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO:EffectiveKeyFilePath")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SFTPTransportProcessConfigBO:EffectiveKeyFilePath"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %><tr valign="top">
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.KeyFilePath.Absolute.label","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><code><% {String value = null;try{value=context.getFormattedValue(getObject("SFTPTransportProcessConfigBO:EffectiveKeyFilePath"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";out.write(value);} %></code></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Authentication.KeyFilePath.Absolute.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% }} %><tr>
<td width="100%" colspan="3" class="table_title2 s n"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <span class="star">*</span></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("TransportProcessConfigBO:Push")).booleanValue() && ((Boolean) ((((Boolean) getObject("TransportProcessConfigBO:Pull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",296,e);}if (_boolean_result) { %><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.Only.Push","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("TransportProcessConfigBO:Push")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) getObject("TransportProcessConfigBO:Pull")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",298,e);}if (_boolean_result) { %><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.Only.Pull","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:TransportDirection:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("TransportProcessConfigBO:TransportDirection")); getPipelineDictionary().put("SelectedTransportDirection", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("TransportUpdateForm:TransportDirection:Value")); getPipelineDictionary().put("SelectedTransportDirection", temp_obj);} %><% } %><select name="<%=context.getFormattedValue(getObject("TransportUpdateForm:TransportDirection:QualifiedName"),null)%>" class="select">
<option<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTransportDirection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTransportDirection"),null).equals(context.getFormattedValue("PUSH",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.Push","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTransportDirection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTransportDirection"),null).equals(context.getFormattedValue("PULL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",304,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.Pull","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% }} %></td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Transfer.Direction.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("HTTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",312,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.HTTP.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:HTTPMethod:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("HTTPTransportProcessConfigBO:HTTPMethod")); getPipelineDictionary().put("SelectedHTTPMethod", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("TransportUpdateForm:HTTPMethod:Value")); getPipelineDictionary().put("SelectedHTTPMethod", temp_obj);} %><% } %><select name="<%=context.getFormattedValue(getObject("TransportUpdateForm:HTTPMethod:QualifiedName"),null)%>" class="select">
<option<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedHTTPMethod"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedHTTPMethod"),null).equals(context.getFormattedValue("GET",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",318,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.HTTP.GET","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedHTTPMethod")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedHTTPMethod"),null).equals(context.getFormattedValue("POST",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.HTTP.POST","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.HTTP.description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FTPTransportProcessConfigBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",326,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.FTP.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:FileTransferType:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",330,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("TransportProcessConfigBO:FileTransferType")); getPipelineDictionary().put("SelectedFileTransferType", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("TransportUpdateForm:FileTransferType:Value")); getPipelineDictionary().put("SelectedFileTransferType", temp_obj);} %><% } %><select name="FTPTransportConfiguration_FileTransferType" class="select">
<option value="AUTO"<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedFileTransferType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedFileTransferType"),null).equals(context.getFormattedValue("AUTO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",332,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.FTP.Auto","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ASCII"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedFileTransferType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedFileTransferType"),null).equals(context.getFormattedValue("ASCII",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",333,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.FTP.ASCII","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="BINARY"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedFileTransferType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedFileTransferType"),null).equals(context.getFormattedValue("BINARY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",334,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("TransportUpdateConfiguration.Input.FTP.Binary","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.FTP.description","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% }} %><% processOpenTag(response, pageContext, "transportinputfield", new TagParameter[] {
new TagParameter("configbofieldname",getObject("TransportProcessConfigBO:TransferLimitInMB")),
new TagParameter("formparameter",getObject("TransportUpdateForm:TransferLimitInMB")),
new TagParameter("size","13"),
new TagParameter("form",getObject("TransportUpdateForm")),
new TagParameter("description","TransportUpdateConfiguration.Input.TransferLimit.description"),
new TagParameter("label","TransportUpdateConfiguration.Input.TransferLimit.label"),
new TagParameter("required","false")}, 342); %> 
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Delete.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FTPTransportProcessConfigBO")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SFTPTransportProcessConfigBO")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %><span class="star">*</span><% } %></td>
<td class="fielditem">
<input type="radio" name="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>" id="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>_TRUE" class="inputfield_en" value="true"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm:Delete"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:Delete:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("TransportProcessConfigBO:Delete")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue() || ((Boolean) (getObject("TransportUpdateForm:Delete:Value"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",349,e);}if (_boolean_result) { %> checked="checked"<% } %>/> 
<label class="fielditem" for="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>_TRUE"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Delete.true","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<p/> 
<input type="radio" name="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>" id="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>_FALSE" class="inputfield_en" value="false"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("TransportUpdateForm"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TransportUpdateForm:Delete:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("TransportProcessConfigBO:Delete"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue() || !((Boolean) (getObject("TransportUpdateForm:Delete:Value"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",354,e);}if (_boolean_result) { %> checked="checked"<% } %>/>
<label class="fielditem" for="<%=context.getFormattedValue(getObject("TransportUpdateForm:Delete:QualifiedName"),null)%>_FALSE"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Delete.false","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_title_description"><% {out.write(localizeISText("TransportUpdateConfiguration.Input.Delete.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="aldi">
<tr> 
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td><input type="submit" name="update" class="button" value="<% {out.write(localizeISText("TransportUpdateConfiguration.Apply.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" /></td>
<td><input type="reset" name="reset" class="button" value="<% {out.write(localizeISText("TransportUpdateConfiguration.Reset.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" /></td>
</tr>
</table>
</td>
</tr> 
</table>
<img src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {376}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/images/space.gif" width="1" height="4" alt="" border="0"/> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="">
<tr> 
<td class="backbar_left">
<input type="submit" name="backToList" class="button" value="<% {out.write(localizeISText("TransportUpdateConfiguration.Back.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" /> 
</td>
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>