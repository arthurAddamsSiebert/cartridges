<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderList_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PaymentMethodList_52.Orders.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PaymentMethodList_52.PaymentMethods.text",null)))}, 4); %><!-- Title and Description --><% URLPipelineAction action216 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodList_52-Dispatch",null)))),null));String site216 = null;String serverGroup216 = null;String actionValue216 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodList_52-Dispatch",null)))),null);if (site216 == null){  site216 = action216.getDomain();  if (site216 == null)  {      site216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup216 == null){  serverGroup216 = action216.getServerGroup();  if (serverGroup216 == null)  {      serverGroup216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethodList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue216, site216, serverGroup216,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PaymentMethodList_52.PaymentMethods.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Messages --> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_DELETE_SELECTION_INVALID")))).booleanValue() && ((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="7">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PaymentMethodList_52.YouHaveSelectedLegacyPaymentMethods.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_UP")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_DOWN")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_DELETE_NOSELECTION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="7">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PaymentMethodList_52.YouHaveNotSelectedAnythingSelectPaymentMethods.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> &quot;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_UP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentMethodList_52.MoveUp.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_DELETE_NOSELECTION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentMethodList_52.Delete.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PaymentMethodList_52.MoveDown.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %>&quot; <% {out.write(localizeISText("PaymentMethodList_52.Again.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<!-- End Error Messages --><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PaymentMethodList_52.AreYouSureYouWantToDelete.confirm",null)))}, 44); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("type","mde")}, 46); %><% } %><% } %><% }} %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PaymentMethodList_52.TheListShowsAllAvailablePaymentMethods.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PaymentMethodList_52.SelectAPaymentMethodToActivateOrDeactivate.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodList_52.New.button",null)),null)%>"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PaymentConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodList_52.Delete.button",null)),null)%>"/></td><% } %></tr>
</table>
</td>
</tr><% } %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PaymentConfigurations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><th class="table_header e s center select_all" nowrap="nowrap">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PaymentMethodList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PaymentMethodList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</th><% } %><th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodList_52.PaymentMethod.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap" width="1%"><% {out.write(localizeISText("PaymentMethodList_52.ManagedServices.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("PaymentMethodList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodList_52.ActivatedFor.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PaymentMethodList_52.Default.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><th class="table_header e s"><% {out.write(localizeISText("PaymentMethodList_52.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %></tr><% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("PaymentConfigsCount", temp_obj);} %><% while (loop("PaymentConfigurations","PaymentConfiguration",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("PaymentConfigsCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("PaymentConfigsCount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PaymentConfigsCount")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %><% } else { %><% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %> 
<% } %><% } %><% while (loop("PaymentConfigurations","PaymentConfiguration",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><td class="table_detail e s center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(PaymentConfiguration:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>checked="checked" <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>disabled="disabled" <% } %>/> 
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null)%>"/>
</td><% } %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentMethod_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s center" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PaymentConfiguration:PaymentService:isManagedService"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/check.png" alt="" /><% } else { %>&nbsp;
<% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "paymentservicedisplayname", new TagParameter[] {
new TagParameter("paymentservice",getObject("PaymentConfiguration:PaymentService"))}, 139); %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentTypes:get(PaymentConfiguration:UUID)"),null).equals(context.getFormattedValue("AssignmentToNoOne",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentMethodList_52.NoOne.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentTypes:get(PaymentConfiguration:UUID)"),null).equals(context.getFormattedValue("AssignmentToAll",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% {out.write(localizeISText("PaymentMethodList_52.AllCustomers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PaymentMethodList_52.SelectedCustomerSegments.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
<td class="table_detail e s top center" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><input type="radio" name="PaymentConfigurationDefaultUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isDefault"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="radio" name="PaymentConfigurationDefaultUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentConfiguration:isDefault"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("DisplayRowSpan"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><td width="1" class="table_detail e s top center sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfigsCount"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayMoveArrows"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td><input type="hidden" name="PaymentConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><input type="image" name="moveUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/><% } %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td><input type="hidden" name="PaymentConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PaymentConfiguration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><input type="image" name="moveDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/><% } %></td>
</tr>
</table><% } else { %>
&nbsp;
<% } %></td><% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %><% } %></tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("PaymentMethodList_52.CurrentlyThisChannelHasNoPaymentMethods.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PaymentMethodList_52.Apply.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><!-- End Page Cursor -->
<!-- EO Working Area --><% printFooter(out); %>