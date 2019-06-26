<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.status")}, 4); %></td>
</tr>
</table>
<!-- delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteImpexJobs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="confirm_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.confirm-delete.message")}, 13); %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="DeleteImpexJobs" value="<% {out.write(localizeISText("impexjoblist.button.confirmdelete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="Status" value="<% {out.write(localizeISText("impexjoblist.button.canceldelete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.notselected.message")}, 29); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.delete.description")}, 29); %></td>
</tr>
</table><% } %><% } %><!-- EO delete confirmation --><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("FinishedImpexJobCount", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImpexJobs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="s" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('ImpexForm','SelectedObjectUUID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.selectall")}, 47); %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('ImpexForm','SelectedObjectUUID','A','B');" class="tableheader"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.clearall")}, 54); %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.process")}, 60); %></td>
<td class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.start")}, 61); %></td>
<td class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.duration")}, 62); %></td>
<td class="table_header s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.header.status")}, 63); %></td>
</tr><% while (loop("ImpexJobs","ImpexJob",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><td class="e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("ImpexJob:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("ImpexJob:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(ImpexJob:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ImpexJob:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("ImpexJob:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((( ((Number) getObject("ImpexJob:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("FinishedImpexJobCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("FinishedImpexJobCount", temp_obj);} %><% } %>/>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImpexJob:ProcessPipelineStartNode"),null).equals(context.getFormattedValue("Validate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="table_detail e s top" nowrap="nowrap"><a href="<% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("parametername1",getObject("pipelineparametername1")),
new TagParameter("parametervalue1",getObject("pipelineparametervalue1")),
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ValidationPipeline")}, 74); %>" class="selection_link"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","BOType")}, 74); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ImpexType")}, 74); %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a>&nbsp;</td><% } else { %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("pipeline"),null) + context.getFormattedValue("-Monitor",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("ImpexJob:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","BOType")}, 76); %> <% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","ImpexType")}, 76); %> &lt;<% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&gt;</a>&nbsp;</td><% } %><td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","LastExecutionTime")}, 78); %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("ImpexJob:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ImpexJob:LastExecutionDuration"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.seconds")}, 80); %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "impexmessage", new TagParameter[] {
new TagParameter("jobconfiguration",getObject("ImpexJob")),
new TagParameter("type","Status")}, 82); %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail" colspan="3"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","impexjoblist.emptylist.info.message")}, 89); %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Status" value="<% {out.write(localizeISText("impexjoblist.button.refresh","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("FinishedImpexJobCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ConfirmDeleteImpexJobs" value="<% {out.write(localizeISText("impexjoblist.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td><% } %></tr>
</table><% printFooter(out); %>