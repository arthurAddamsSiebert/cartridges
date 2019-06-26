<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action698 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));String site698 = null;String serverGroup698 = null;String actionValue698 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null);if (site698 == null){  site698 = action698.getDomain();  if (site698 == null)  {      site698 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup698 == null){  serverGroup698 = action698.getServerGroup();  if (serverGroup698 == null)  {      serverGroup698 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddPipelineForm");out.print("\"");out.print(" id=\"");out.print("AddPipelineForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue698, site698, serverGroup698,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("add"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><input type="hidden" name="add" value="add"><% } %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="editbox aldi" >
<tr>
<td class="editbox_title"><% {out.write(localizeISText("process.chain.steps.pipeline.new","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPipelineError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
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
<select name="AddPipelineForm_DomainUUID" class="dropdown inputfield_en"><% while (loop("SiteDomains","Domain",null)) { %><option value="<%=context.getFormattedValue(getObject("Domain:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Domain:UUID"),null).equals(context.getFormattedValue(getObject("AddPipelineForm:DomainUUID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>selected<% } %> ><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Domain:DomainName"),null)),null)%></option> 
<% } %></select> 
</td>
</tr>
<tr>
<td class="fielditem2" valign="middle" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:TimeOut:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><label class="label label_error"><% } else { %><label class="label"><% } %><% {out.write(localizeISText("process.chain.steps.timeout","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</label>
</td>
<td><input type="text" class="inputfield_en" size="5" name="AddPipelineForm_TimeOut" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AddPipelineForm:TimeOut:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AddPipelineForm:TimeOut:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>5<% } %>"/></td>
</tr>
<tr> 
<td class="fielditem2" valign="middle" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:PipelineName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><label class="label label_error"><% } else { %><label class="label"><% } %><% {out.write(localizeISText("process.chain.steps.pipeline.name","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</
</td>
<td><input type="text" class="inputfield_en" size="50" name="AddPipelineForm_PipelineName" value="<%=context.getFormattedValue(getObject("AddPipelineForm:PipelineName:Value"),null)%>"/></td>
</tr> 
<tr> 
<td class="fielditem2" valign="middle" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:StartnodeName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><label class="label label_error"><% } else { %><label class="label"><% } %><% {out.write(localizeISText("process.chain.steps.pipeline.startnode","",null,null,null,null,null,null,null,null,null,null,null));} %>:
<span class="star">*</span>
</
</td>
<td><input type="text" class="inputfield_en" size="50" name="AddPipelineForm_StartnodeName" value="<%=context.getFormattedValue(getObject("AddPipelineForm:StartnodeName:Value"),null)%>"/></td>
</tr> 
</table>
<table cellspacing="0" cellpadding="5" border="0" class="w100">
<tr> 
<td align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input class="button" type="submit" value="Apply" name="applyPipeline">
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