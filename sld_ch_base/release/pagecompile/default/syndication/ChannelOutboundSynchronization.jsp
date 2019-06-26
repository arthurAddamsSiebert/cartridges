<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% URLPipelineAction action125 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSynchronization-Dispatch",null)))),null));String site125 = null;String serverGroup125 = null;String actionValue125 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSynchronization-Dispatch",null)))),null);if (site125 == null){  site125 = action125.getDomain();  if (site125 == null)  {      site125 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup125 == null){  serverGroup125 = action125.getServerGroup();  if (serverGroup125 == null)  {      serverGroup125 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSynchronization-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ChannelOutboundSynchronization");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue125, site125, serverGroup125,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSynchronization-Start",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Synchronization.text",null)))}, 9); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelOutboundSynchronization.SynchronizeProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmSynchronization"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelOutboundSynchronization.TheProductsWillBeSynchronized.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Synchronize" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.OK.button",null)),null)%>" class="button"/></td><td>&nbsp;</td>
<td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelOutboundSynchronization.YouHaveNotSelectedAnyTarget.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelOutboundSynchronization.SynchronizeProductsToUpdateDerivedProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Syndications") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelOutboundSynchronization','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelOutboundSynchronization.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ChannelOutboundSynchronization','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelOutboundSynchronization.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header s"><% {out.write(localizeISText("ChannelOutboundSynchronization.Target.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ChannelOutboundSynchronization.LastSynchronization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s"><% {out.write(localizeISText("ChannelOutboundSynchronization.Schedule.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w e s">&nbsp;</td>
</tr><% while (loop("Syndications","Syndication",null)) { %><tr>
<td class="w e s center" width="1%">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Syndication:JobConfiguration:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>disabled="disabled"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Syndication:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSynchronization-Download",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail w s"><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:JobConfiguration:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:JobConfiguration:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% {Object temp_obj = (getObject("Syndication:JobConfiguration:JobCondition")); getPipelineDictionary().put("JobCondition", temp_obj);} %><select name="<%=context.getFormattedValue(getObject("Syndication:UUID"),null)%>_Interval">
<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("JobCondition"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.ManualSyncOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobCondition")))).booleanValue() && ((Boolean) ((( ((Number) getObject("JobCondition:Factor")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.EveryHour.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="6" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobCondition")))).booleanValue() && ((Boolean) ((( ((Number) getObject("JobCondition:Factor")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.Every6Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="12" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobCondition")))).booleanValue() && ((Boolean) ((( ((Number) getObject("JobCondition:Factor")).doubleValue() ==((Number)(new Double(12))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.Every12Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="24" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobCondition")))).booleanValue() && ((Boolean) ((( ((Number) getObject("JobCondition:Factor")).doubleValue() ==((Number)(new Double(24))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.EveryDay.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="168" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JobCondition")))).booleanValue() && ((Boolean) ((( ((Number) getObject("JobCondition:Factor")).doubleValue() ==((Number)(new Double(168))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelOutboundSynchronization.EveryWeek.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Syndication:JobConfiguration:Status")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProcessList_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-ListAll",null),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("ChannelOutboundSynchronization.ViewLog.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% {out.write(localizeISText("ChannelOutboundSynchronization.ViewLog.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="left" class="table_detail w s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Paging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Refresh.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right" class="table_detail e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ConfirmSynchronization" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Synchronize.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="Apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ChannelOutboundSynchronization.NoSourceRepositoryFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><!-- Start Page Cursor -->
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Syndications")}, 151); %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Back" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSynchronization.Back.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>