<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ContentIncludeSelectAction.EditAllContentIncludes",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("ContentIncludeSelectAction.EditSelectedContentIncludes",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %><% }} %><% {Object temp_obj = (localizeText(context.getFormattedValue("ContentIncludeSelectAction.Step1SelectAction",null))); getPipelineDictionary().put("StepMessage", temp_obj);} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("StepMessage")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeProcessingWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("backToSelectAction",null),context.getFormattedValue("true",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",context.getFormattedValue(getObject("EditMessage"),null) + context.getFormattedValue(" - ",null))}, 22); %><!-- EO Page Navigator --><% URLPipelineAction action394 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeProcessingWizard-Dispatch",null)))),null));String site394 = null;String serverGroup394 = null;String actionValue394 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeProcessingWizard-Dispatch",null)))),null);if (site394 == null){  site394 = action394.getDomain();  if (site394 == null)  {      site394 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup394 == null){  serverGroup394 = action394.getServerGroup();  if (serverGroup394 == null)  {      serverGroup394 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludeProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue394, site394, serverGroup394,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("EditMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("StepMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ACTION_NOT_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ContentIncludeSelectAction.YouHaveNotSelectedAnActionSelectAnAction.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteContentIncludes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentIncludeSelectAction.Product.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteContentIncludes"),
new TagParameter("okbtnname","deleteContentIncludes"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ContentIncludeSelectAction.AreYouSureThatYouWantToDeleteTheSelectedIncludes.message",null)))}, 50); %></table>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectAction.DeletingIncludes.input",null)),null)%>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IncludePageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description" nowrap="nowrap"><% {out.write(localizeISText("ContentIncludeSelectAction.Step1SelectAnActionNextStepsDependOnTheActionTypeS.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="8">
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignComponent",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignComponent" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignComponent"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("ContentIncludeSelectAction.AssignAComponentToTheSelectedIncludes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="AssignLabel" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="AssignLabel"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("ContentIncludeSelectAction.AssignALabelToTheSelectedIncludes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="select w e s center" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteContentIncludes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><input type="radio" name="ActionID" value="DeleteContentIncludes" checked="checked"/><% } else { %><input type="radio" name="ActionID" value="DeleteContentIncludes"/><% } %></td>
<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("ContentIncludeSelectAction.DeleteTheSelectedIncludes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UniquePageletSearchID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><input type="hidden" name="PageIncludeSearchID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UniquePageletSearchID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><input type="submit" name="selectNextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectAction.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIncludeSelectAction.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>