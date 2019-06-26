<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><!-- Title -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("DataTransferSend.DataTransferEMail.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
</table>
<!-- EO Title -->
<!-- confirm/error settings --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ClusterInfoPropertyEventDistributionError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("DataTransferSend.PropertyChangesCouldNotBeDistributed.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Sendmail")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Applymail")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ZipError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.AttachmentCouldNotBeProduced.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoMailFromDefinedError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.NoMailFromDefined.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EmailSendError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.EmailCouldNotBeSent.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AttachmentMaxSizeError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.SizeOfTheAttachmentsExceeded.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidEmailAddress",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.ProvideAValidEmailAddress.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Sendmail"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td colspan="2" class="confirm" width="100%"><% {out.write(localizeISText("DataTransferSend.EmailSentSuccessfully.confirm","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><!-- EO confirm/error settings -->
<!-- Mail Menu --><% URLPipelineAction action74 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null));String site74 = null;String serverGroup74 = null;String actionValue74 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null);if (site74 == null){  site74 = action74.getDomain();  if (site74 == null)  {      site74 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup74 == null){  serverGroup74 = action74.getServerGroup();  if (serverGroup74 == null)  {      serverGroup74 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dataTransferForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue74, site74, serverGroup74,true)); %><!-- Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("DataTransferSend.SpecifyTheEMailRecipientAndClickApply.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("MailServ"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Description -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left" nowrap="nowrap" class="fielditem"><% {out.write(localizeISText("DataTransferSend.To.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="radio" name="Email" value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Mail0"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="table_detail" nowrap><% {out.write(localizeISText("DataTransferSend.SupportMailDe.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="radio" name="Email" value="1"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Mail1"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
<td class="table_detail" nowrap><% {out.write(localizeISText("DataTransferSend.SupportMailCom.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="radio" name="Email" value="2"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Mail2"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>checked="checked"<% } %>></td>
<td class="table_detail" width="100%">
<input type="text" name="EmailInput" class="inputfield_en" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("MailInput"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td align="left" nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("DataTransferSend.Cc.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="checkbox" onClick="javascript:changeElementState('ccField')" name="CCField" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CCField"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="table_detail" width="100%">
<input type="text" name="CCFieldInput" class="inputfield_en" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CCFieldInput"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="ccField" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CCFieldInput")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
</tr>
<tr>
<td align="left" nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("DataTransferSend.Bcc.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="checkbox" onClick="javascript:changeElementState('bccField')" name="BCCField" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BCCField"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="table_detail" width="100%">
<input type="text" name="BCCFieldInput" class="inputfield_en" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BCCFieldInput"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="bccField" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("BCCFieldInput")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Mail Menu -->
<!-- Button Mail Menu -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="Applymail" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSend.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Button Mail Menu -->
<!-- Message -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_subtitle w e s"><% {out.write(localizeISText("DataTransferSend.Message.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Message -->
<!-- File Content -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("DataTransferSend.SpecifyAnEMailSubjectAndAMessageText.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%">
<table cellpadding="0" cellspacing="4" border="0" >
<tr>
<td align="left" class="fielditem"><% {out.write(localizeISText("DataTransferSend.Subject.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" name="UserSubject" class="inputfield_en" size="60" />
</td>
<td class="table_title_description"><% {out.write(localizeISText("DataTransferSend.PleaseUseThePattern.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td align="left" class="fielditem"><% {out.write(localizeISText("DataTransferSend.MessageText.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colsapn="2">
<textarea name="UserEntry" cols="60" rows="12" class="inputfield_en"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"datatransfer/mail/UserText", null, "169");} %></textarea>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LogFiles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><td align="left" class="fielditem"><% {out.write(localizeISText("DataTransferSend.Files.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colsapn="2">&nbsp;<td><% } %></tr><% while (loop("LogFiles","File",null)) { %><tr>
<td>&nbsp;</td>
<td><% {Object temp_obj = (getObject("File")); getPipelineDictionary().put("CurrentFile", temp_obj);} %><%
									getPipelineDictionary().put("FileLength", ((java.io.File) getPipelineDictionary().get("CurrentFile")).length());
								%><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("File:Name"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
<input type="hidden" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td> 
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("FileLength")).doubleValue() <((Number)(((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
(<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("FileLength")).doubleValue() /((Number) new Double(1024)).doubleValue())),"#.##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;KB)
<% } else { %>
(<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("FileLength")).doubleValue() /((Number) ((new Double( ((Number) new Double(1024)).doubleValue() *((Number) new Double(1024)).doubleValue())))).doubleValue())),"#.##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;MB)
<% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-RemoveAttachment",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ObjectUUID",null),context.getFormattedValue(getObject("File:Name"),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("DataTransferSend.Remove.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="n">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="Sendmail" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSend.SendEMail.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DataTransferSend.Cancel.button",null)),null)%>" class="button"/></td> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>