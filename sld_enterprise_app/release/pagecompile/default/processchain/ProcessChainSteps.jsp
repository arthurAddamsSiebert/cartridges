<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProcessChainModules", null, "4");} %><!-- Tabs --><% {Object temp_obj = ("Steps"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/ProcessChainTabs", null, "8");} %><!-- EO Tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChain:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("process.chain.steps.tab","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PROCESS_CHAINS")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PROCESS_CHAINS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("readonly", temp_obj);} %><% } %><!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" data-testing-id="page-bo-processchains-steps">
<tr>
<td class="table_title_description e w"><% {out.write(localizeISText("process.chain.steps.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr> 
<tr>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PROCESS_CHAINS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %> 
<!-- Begin of step editor form --><% URLPipelineAction action694 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));String site694 = null;String serverGroup694 = null;String actionValue694 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null);if (site694 == null){  site694 = action694.getDomain();  if (site694 == null)  {      site694 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup694 == null){  serverGroup694 = action694.getServerGroup();  if (serverGroup694 == null)  {      serverGroup694 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProcessChainStepsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue694, site694, serverGroup694,true)); %><input type="hidden" name="ProcessChainID" value="<%=context.getFormattedValue(getObject("ProcessChainID"),null)%>"/>
<!-- Process Chain Steps -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_title2 n s w100"><% {out.write(localizeISText("process.chain.steps.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="confirm_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedStep"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","Steps"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","cmdc"),
new TagParameter("message",localizeText(context.getFormattedValue("process.chain.steps.confirm.delete",null))),
new TagParameter("class","s")}, 52); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","Steps"),
new TagParameter("type","cmde"),
new TagParameter("message",localizeText(context.getFormattedValue("process.chain.steps.confirm.stepsmissing",null))),
new TagParameter("class","s")}, 57); %><% } %></table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_ProcessChain")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Param")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr valign="top">
<td class="error_icon"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("NotSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.notselected","",null,null,null,null,null,null,null,null,null,null,null));} %> </br> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("ERROR_Group",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.group","",null,null,null,null,null,null,null,null,null,null,null));} %> </br> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("ERROR_Ungroup",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.ungroup","",null,null,null,null,null,null,null,null,null,null,null));} %> </br> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("ERROR_Move",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.move","",null,null,null,null,null,null,null,null,null,null,null));} %> </br> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("ERROR_UpdateType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.updatetype","",null,null,null,null,null,null,null,null,null,null,null));} %> </br> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_ProcessChain"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% {out.write(localizeISText("process.chain.steps.error.other","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr>
</table>
</td>
</tr> 
<% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProcessChain")))).booleanValue() && ((Boolean) (hasLoopElements("ProcessChain:StepBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("NewStepForm")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e">
<tr>
<td class="table_detail">Currently there is no step defined. <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("EditCondition"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>Click &quot;New&quot; to create a step.<% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("EditCondition")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewStepForm")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="n e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("EditCondition"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="New" name="new" /></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% } %><% } else { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "printstep", new TagParameter[] {
new TagParameter("conditionclipboard",getObject("ConditionClipboard")),
new TagParameter("readonly",((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("step",getObject("ProcessChain")),
new TagParameter("newstepform",getObject("NewStepForm")),
new TagParameter("editstep",getObject("EditCondition")),
new TagParameter("processchainid",getObject("ProcessChainID"))}, 129); %></td>
</tr>
</table><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("add"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr>
<td width="65">&nbsp;
</td>
<td class="table_detail"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/NewStep", null, "148");} %></td>
<td width="6">&nbsp;
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("new")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("addJob")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("addJobError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("cancelAction")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr>
<td width="65">&nbsp;
</td>
<td class="table_detail"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/NewJobStep", null, "162");} %></td>
<td width="6">&nbsp;
</td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("addPipeline")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("addPipelineError")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("cancelAction")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr>
<td width="65">&nbsp;
</td>
<td class="table_detail"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"processchain/NewPipelineStep", null, "175");} %></td>
<td width="6">&nbsp;
</td>
</tr>
</table><% }} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProcessChain")))).booleanValue() && ((Boolean) (hasLoopElements("ProcessChain:StepBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td class="ruleBar" width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EditCondition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Group",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="group" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Ungroup",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="ungroup" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.MoveUp",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="moveUp" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.MoveDown",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="moveDown" disabled="disabled" /></td>
<td ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Add",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="add" disabled="disabled" /></td>
<td class="button"><input type="abosubmit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Delete",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="confirmDelete" disabled="disabled" /></td><% } else { %><td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Group",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="group" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Ungroup",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="ungroup" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.MoveUp",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="moveUp" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.MoveDown",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="moveDown" /></td>
<td ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Add",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="add" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Delete",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="confirmDelete" /></td>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.steps.Apply",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="applyChange" /></td> 
<% } %></tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %> 
<% } %> 
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left"><% URLPipelineAction action695 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));String site695 = null;String serverGroup695 = null;String actionValue695 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null);if (site695 == null){  site695 = action695.getDomain();  if (site695 == null)  {      site695 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup695 == null){  serverGroup695 = action695.getServerGroup();  if (serverGroup695 == null)  {      serverGroup695 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("BackForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue695, site695, serverGroup695,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td align="left" class="w100"><input type="submit" class="button" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("process.chain.params.backToList",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="back" /></td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>