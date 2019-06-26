<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action704 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));String site704 = null;String serverGroup704 = null;String actionValue704 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null);if (site704 == null){  site704 = action704.getDomain();  if (site704 == null)  {      site704 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup704 == null){  serverGroup704 = action704.getServerGroup();  if (serverGroup704 == null)  {      serverGroup704 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewStepForm");out.print("\"");out.print(" id=\"");out.print("NewStepForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue704, site704, serverGroup704,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("new"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><input type="hidden" name="new" value="new"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addJob"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><input type="hidden" name="addJob" value="addJob"><% } %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="editbox aldi" >
<tr>
<td class="editbox_title"><% {out.write(localizeISText("process.chain.steps.job.new","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addJobError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("process.chain.steps.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% {out.write(localizeISText("process.chain.steps.missing",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td>
<table cellspacing="0" cellpadding="5" border="0">
<tr>
<td class="fielditem2" valign="middle" nowrap="nowrap">
<label class="label"><% {out.write(localizeISText("process.chain.steps.domain","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</label>
</td>
<td>
<select name="NewStepForm_JobDomainUUID" class="dropdown inputfield_en" onchange="submit();"><% while (loop("AllJobDomains","Domain",null)) { %><option value="<%=context.getFormattedValue(getObject("Domain:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JobDomain:UUID"),null).equals(context.getFormattedValue(getObject("Domain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>selected="selected"<% } %>><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Domain:DomainName"),null)),null)%>&nbsp;</option> 
<% } %></select> 
</td>
</tr>
<tr>
<td class="fielditem2" valign="middle" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewStepForm:TimeOut:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><label class="label label_error"><% } else { %><label class="label"><% } %><% {out.write(localizeISText("process.chain.steps.timeout","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</td>
<td><input type="text" size="5" name="NewStepForm_TimeOut" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NewStepForm:TimeOut:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("NewStepForm:TimeOut:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>5<% } %>" class="inputfield_en"/></td>
</tr> 
<tr>
<td class="fielditem2" valign="middle" nowrap="nowrap">
<label class="label"><% {out.write(localizeISText("process.chain.steps.job","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</label>
</td>
<td>
<select name="NewStepForm_JobName" class="dropdown inputfield_en"><% while (loop("JobsByDomain","Job",null)) { %><option value="<%=context.getFormattedValue(getObject("Job"),null)%>"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Job"),null)),null)%>&nbsp;</option> 
<% } %></select> 
</td>
</tr> 
</table>
<table cellspacing="0" cellpadding="5" border="0" class="w100">
<tr> 
<td align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input class="button" type="submit" value="Apply" name="apply">
</td>
<td class="button">
<input type="submit" class="button" value="Cancel" name="cancelAction" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>