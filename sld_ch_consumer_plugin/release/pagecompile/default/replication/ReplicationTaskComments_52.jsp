<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationTaskComments_52.Comments.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-ShowComments",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ReplicationTaskUUID",null),context.getFormattedValue(getObject("ReplicationTask:UUID"),null))))),
new TagParameter("id","ReplicationTaskDetail"),
new TagParameter("text",getObject("ReplicationTask:TaskID"))}, 3); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><%
			getPipelineDictionary().put("SelectedTab", "Comments");
			%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ReplicationTaskTabs_52", null, "11");} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationTask:TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ReplicationTaskComments_52.Comments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CommentTextMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ReplicationTaskComments_52.CommentCouldNotBeSaved.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CommentTextMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("ReplicationTaskComments_52.PleaseProvideAComment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><!-- EO errors--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicationTaskComments_52.FieldsWithRedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/>
<br/><% {out.write(localizeISText("ReplicationTaskComments_52.ClickAddToSaveNewComment.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% URLPipelineAction action159 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));String site159 = null;String serverGroup159 = null;String actionValue159 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null);if (site159 == null){  site159 = action159.getDomain();  if (site159 == null)  {      site159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup159 == null){  serverGroup159 = action159.getServerGroup();  if (serverGroup159 == null)  {      serverGroup159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue159, site159, serverGroup159,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Comments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("Comments","Comment",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><tr>
<td class="fielditem2" nowrap="nowrap" width="130"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("ReplicationTaskComments_52.CommentHistory.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% } else { %>&nbsp;<% } %></td>
<td class="table_detail" colspan="2"><b><% {String value = null;try{value=context.getFormattedValue(getObject("Comment:Author:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Comment:Author:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Comment:CreationTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Comment:CreationTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</b><br/><% {String value = null;try{value=context.getFormattedValue(getObject("Comment:Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CommentTextMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="130"><% {out.write(localizeISText("ReplicationTaskComments_52.NewComment.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="130"><% {out.write(localizeISText("ReplicationTaskComments_52.NewComment.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><textarea rows="5" cols="69" name="CommentText" class="inputfield_en"></textarea></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td>
</tr>
<tr>
<td align="right" colspan="2" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ReplicationTaskUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ReplicationTask:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="AddComment" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationTaskComments_52.Add.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "96");} %><% printFooter(out); %>