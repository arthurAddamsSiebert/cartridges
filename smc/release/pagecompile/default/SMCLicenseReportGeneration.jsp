<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("smc.LicenseReport.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorText")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><tr>
<td class="s" colspan="1">
<table cellpadding="4" cellspacing="0" border="0" width="100%" class="error_box">
<tr>
<td class="error_icon e w" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><td class="error e"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ErrorText"),null)),null)%></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("StartDate_is_in_future",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><td class="error e"><% {out.write(localizeISText("SMCLicenseReportGeneration.TheStartDateForTheReportIsInTheFuture.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EndDate_before_StartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><td class="error e"><% {out.write(localizeISText("SMCLicenseReportGeneration.PleaseMakeSureTheStartDateIsBeforeTheEndDate.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}} %> 
</tr>
</table>
</td>
<tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCLicenseReportGeneration.EnterTheStartAndEndDateAndPressGenerate.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.
</td>
</tr>
</table><% URLPipelineAction action5 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Generate",null)))),null));String site5 = null;String serverGroup5 = null;String actionValue5 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Generate",null)))),null);if (site5 == null){  site5 = action5.getDomain();  if (site5 == null)  {      site5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup5 == null){  serverGroup5 = action5.getServerGroup();  if (serverGroup5 == null)  {      serverGroup5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Generate",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue5, site5, serverGroup5,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLicenseReportGeneration.StartDate.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>&nbsp;</td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDate"),
new TagParameter("DateString",stringToHtml(context.getFormattedValue(getObject("StartDate_Day"),null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("StartDay_ErrorCode"))))}, 49); %></tr>
</table>
</td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCLicenseReportGeneration.EndDate.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>&nbsp;</td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDate"),
new TagParameter("DateString",stringToHtml(context.getFormattedValue(getObject("EndDate_Day"),null))),
new TagParameter("DateObject",getObject("CurrentDate")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("EndDay_ErrorCode"))))}, 67); %></tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<input type="hidden" name="webform-id" value="LicenseReport"/>
<td class="button"><input type="submit" name="Generate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLicenseReportGeneration.Generate.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>