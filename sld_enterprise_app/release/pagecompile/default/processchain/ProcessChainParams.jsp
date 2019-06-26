<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProcessChainModules", null, "4");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MassData",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("process.chain.general.tab",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainList-List",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("MassDataOverview.ProcessChains.link",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChain-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProcessChainID",null),context.getFormattedValue(getObject("ProcessChainID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProcessChain.processchain.text",null)))}, 8); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_PROCESS_CHAINS")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PROCESS_CHAINS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("readonly", temp_obj);} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
</table><% URLPipelineAction action699 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainParams-Dispatch",null)))),null));String site699 = null;String serverGroup699 = null;String actionValue699 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainParams-Dispatch",null)))),null);if (site699 == null){  site699 = action699.getDomain();  if (site699 == null)  {      site699 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup699 == null){  serverGroup699 = action699.getServerGroup();  if (serverGroup699 == null)  {      serverGroup699 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainParams-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProcessChainParamsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue699, site699, serverGroup699,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_title2 n s w100"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChainStep:Pipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChainStep:Startnode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("process.chain.params.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("process.chain.params.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% {out.write(localizeISText("process.chain.params.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<input name="ProcessChainID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessChainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden">
<input name="SelectedStep" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedStep"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden">
<table class="w e" width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td colspan="4" class="s">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.params.new",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="new" /></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Params") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.params.delete",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="delete" /></td><% } %></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Params"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %> 
<tr>
<td colspan="4" class="s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr valign="top">
<td class="error_icon"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"> 
<% {out.write(localizeISText("process.chain.params.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table> 
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Params") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("new")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %> 
<tr>
<td class="table_header s e center" width="80" nowrap="nowrap">
<div id="A">
<table class="table_header center" width="80" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader">Select All</a></td>
</tr>
</tbody>
</table>
</div>
<div id="B" style="display:none">
<table class="table_header center" width="80" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader">Clear All</a></td>
</tr>
</tbody>
</table>
</div>
</td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("process.chain.params.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s left" nowrap="nowrap"><% {out.write(localizeISText("process.chain.params.value","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s left center" nowrap="nowrap"><% {out.write(localizeISText("process.chain.params.multi","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Params","Param","counter")) { %><tr>
<td class="table_detail2 e s center" width="75"><input name="DeletedParams" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Param:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox"></td>
<td class="table_detail2 e s left" valign="middle" nowrap="nowrap"><input name="Name_<%=context.getFormattedValue(getObject("counter"),null)%>" type="text" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Param:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td class="table_detail2 s left"><input name="Value_<%=context.getFormattedValue(getObject("counter"),null)%>" maxlength="4000" size="56" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Param:Content"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" type="text"></td>
<td class="table_detail2 w s center" width="80">
<input name="Multi_<%=context.getFormattedValue(getObject("counter"),null)%>" class="inputfield_en" type="checkbox" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Param:Multi"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>checked="checked"<% } %>>
</td> 
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("new"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><tr>
<td class="table_detail2 e s center" width="75"><input name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("newParam"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox" disabled=disabled></td>
<td class="table_detail2 e s left" valign="middle" nowrap="nowrap"><input name="Name_new" type="text" value="" class="inputfield_en"/></td>
<td class="table_detail2 s left"><input name="Value_new" maxlength="4000" size="56" value="" class="inputfield_en" type="text"></td>
<td class="table_detail2 w s center" width="80">
<input name="Multi_new" class="inputfield_en" type="checkbox" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Param:Multi"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected=selected<% } %> />
</td> 
</tr><% } %><% } else { %><tr>
<td colspan="4" class="table_detail"><% {out.write(localizeISText("process.chain.params.noelements",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></tbody>
</table>
<table cellspacing="4" cellpadding="0" border="0" class="w100 w e s">
<tr>
<td class="w100"></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("new")))).booleanValue() || ((Boolean) (hasLoopElements("Params") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %> 
<td class="button"><input type="submit" class="button" value="<% {out.write(localizeISText("process.chain.params.ok",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="apply" /></td><% } %></tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td align="left" class="w100"><input type="submit" class="button" value="&lt;&lt;&nbsp;<% {out.write(localizeISText("process.chain.params.backToList",null,null,null,null,null,null,null,null,null,null,null,null));} %>" name="back" /></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>