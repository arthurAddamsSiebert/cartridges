<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("LicenseReport"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><meta http-equiv="Refresh" content="10; URL='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-DisplayResult",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LicenseReportFileName",null),context.getFormattedValue(getObject("LicenseReportFileName"),null)))),null)%>'"/><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("smc.LicenseReport.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="fielditem2_error"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ErrorText"),null)),null)%></td>
</tr>
</table>
</td>
<tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LicenseReport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s">
<p><% {out.write(localizeISText("SMCLicenseReport.EnterAnEMailAddressAndPressSend.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LicenseReport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e">
<textarea cols="85" rows="25" name="report" wrap="off" readonly="readonly"><% {String value = null;try{value=context.getFormattedValue(getObject("LicenseReport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";out.write(value);} %></textarea>
</td>
</tr>
</table><% URLPipelineAction action87 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Dispatch",null)))),null));String site87 = null;String serverGroup87 = null;String actionValue87 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Dispatch",null)))),null);if (site87 == null){  site87 = action87.getDomain();  if (site87 == null)  {      site87 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup87 == null){  serverGroup87 = action87.getServerGroup();  if (serverGroup87 == null)  {      serverGroup87 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LicenseReport");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue87, site87, serverGroup87,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail3" nowrap><% {out.write(localizeISText("SMCLicenseReport.FromEMailAddress.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><input type="text" name="emailFrom" size="40" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("emailFrom"),null)),null)%>"/></td>
</tr>
<tr>
<td class="table_detail3" nowrap><% {out.write(localizeISText("SMCLicenseReport.ToEMailAddress.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><input type="text" name="emailTo" size="40" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("emailTo"),null)),null)%>"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="LicenseReportFileName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LicenseReportFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SendEmail" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLicenseReport.SendAsEMail.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="DownloadReport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLicenseReport.DownloadReport.button",null)),null)%>" class="button"/>
</td>
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
</table><% out.print("</form>"); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCLicenseReport.TheLicenseReportIsBeingGenerated.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("SMCLicenseReport-DisplayResult",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LicenseReportFileName",null),context.getFormattedValue(getObject("LicenseReportFileName"),null)))),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% printFooter(out); %>