<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPayment.Payment.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null))))),
new TagParameter("id",getObject("Repository:UUID")),
new TagParameter("text",getObject("Repository:DisplayName"))}, 4); %><% {Object temp_obj = ("Payment"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"channel/ChannelTabs", null, "7");} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PaymentServicesAvailable", temp_obj);} %><% while (loop("PaymentServices","PS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PS:isManagedService"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("PaymentServicesAvailable", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",14);}else{getLoopStack().pop();break;} %><% } %><% } %><% URLPipelineAction action21 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPayment-Update",null)))),null));String site21 = null;String serverGroup21 = null;String actionValue21 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPayment-Update",null)))),null);if (site21 == null){  site21 = action21.getDomain();  if (site21 == null)  {      site21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup21 == null){  serverGroup21 = action21.getServerGroup();  if (serverGroup21 == null)  {      serverGroup21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPayment-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("PaymentServicesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue21, site21, serverGroup21,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Repository:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> - <% {out.write(localizeISText("ChannelPayment.Payment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelPayment.TheListShowsAllCurrentlyAvailablePaymentMethodsFor.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><br><% {out.write(localizeISText("ChannelPayment.UseTheCheckboxesAndClickApplyToActivateAPaymentMet.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentServicesAvailable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">
<tr>
<th class="table_header e s center" nowrap="nowrap" width="80"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelPayment.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelPayment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div><% } %></th>
<th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelPayment.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelPayment.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelPayment.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("PaymentServices","PS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PS:isManagedService"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><tr>
<td class="table_detail e s center" nowrap="nowrap">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% while (loop("AssignedPaymentServices","APS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PS:ID"),null).equals(context.getFormattedValue(getObject("APS:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %> checked="checked" <% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ChannelValidPaymentServices:get(PS:ID)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %> disabled="true" <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>disabled<% } %>
/>
</td>
<td class="table_detail e s left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "paymentservicedisplayname", new TagParameter[] {
new TagParameter("paymentservice",getObject("PS"))}, 78); %></td>
<td class="table_detail e s left" width="90%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PS:Capabilities:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PS:Capabilities:BODescriptionTemplate"),null), null, "82");} %><% } %>
&nbsp;
</td>
</tr><% } %><% } %></table>
<input type="hidden" name="RepositoryUUID" value="<%=context.getFormattedValue(getObject("Repository:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPayment.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="CancelChanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPayment.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_detail s" nowrap="nowrap"><% {out.write(localizeISText("ChannelPayment.ThereAreNoPaymentMethodsAvailableForThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "117");} %><!-- EO Working Area --><% printFooter(out); %>