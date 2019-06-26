<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.ReplicationProcessStep4ActivationRules.text",null)))}, 3); %><% URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationProcessWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProcess:ProcessID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ReplicationProcessSelectActivationRule.ActivationRules.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorStartDate")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPublicationStartDate")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPublicationBeforeReplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ReplicationProcessSelectActivationRule.ReplicationProcessCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorStartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("ReplicationProcessSelectActivationRule.TheTransferStartDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPublicationStartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("ReplicationProcessSelectActivationRule.ThePublishingStartDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorPublicationBeforeReplication"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {out.write(localizeISText("ReplicationProcessSelectActivationRule.ThePublishingStartDateHaveToResideAfterTransferStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% } %><!-- EO errors-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationProcessSelectActivationRule.Step4Of4SpecifyAStartTime.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td colspan="9"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="infobox_title" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ReplicationProcessSelectActivationRule.ActivationRule.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="infobox_item"><input type="Radio" name="CreateProcess_ActivationRule" value="MANUAL" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CreateProcess:ActivationRule:Value")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateProcess:ActivationRule:Value"),null).equals(context.getFormattedValue("MANUAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ReplicationProcessSelectActivationRule.Manually.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" colspan="6">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title">&nbsp;</td>
<td class="infobox_item"><input type="Radio" name="CreateProcess_ActivationRule" value="AUTOMATIC" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreateProcess:ActivationRule:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreateProcess:ActivationRule:Value"),null).equals(context.getFormattedValue("AUTOMATIC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="infobox_item" nowrap="nowrap">&nbsp;<% {out.write(localizeISText("ReplicationProcessSelectActivationRule.Automatic.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateProcess_StartDateDay"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.TransferStartDate.InputFieldLabel",null))),
new TagParameter("DateString",getObject("CreateProcess:StartDateDay:Value")),
new TagParameter("InputFieldLabelClass","table_detail"),
new TagParameter("InputFieldSize","14"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorStartDate"))))}, 50); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateProcess_StartDateTime"),
new TagParameter("TimeString",getObject("CreateProcess:StartDateTime:Value")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.Time.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass","table_detail"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorStartDate"))))}, 58); %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProcess:ReplicationType:Value"),null).equals(context.getFormattedValue("Replication",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td colspan="3">&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateProcess_PublicationStartDay"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.PublishingStartDate.InputFieldLabel",null))),
new TagParameter("DateString",getObject("CreateProcess:PublicationStartDay:Value")),
new TagParameter("InputFieldLabelClass","table_detail"),
new TagParameter("InputFieldSize","14"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorPublicationStartDate"))))}, 69); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreateProcess_PublicationStartTime"),
new TagParameter("TimeString",getObject("CreateProcess:PublicationStartTime:Value")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.Time.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass","table_detail"),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorPublicationStartDate"))))}, 77); %></tr><% } %><tr>
<td colspan="9"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="SelectType" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="Finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.Finish.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="hidden" name="DefaultButton" value="Finish"/><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationProcessSelectActivationRule.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>