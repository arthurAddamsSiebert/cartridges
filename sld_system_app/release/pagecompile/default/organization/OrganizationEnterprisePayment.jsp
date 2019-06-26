<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEnterprisePayment.Payment.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationEnterprisePayment-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null))))),
new TagParameter("id",getObject("Organization:UUID")),
new TagParameter("text",getObject("Organization:DisplayName"))}, 4); %><!-- EO Page Navigator --><% {Object temp_obj = ("Payment"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"organization/OrganizationTabs", null, "9");} %><!-- Titel and Description --><% URLPipelineAction action25 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationEnterprisePayment-Update",null)))),null));String site25 = null;String serverGroup25 = null;String actionValue25 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationEnterprisePayment-Update",null)))),null);if (site25 == null){  site25 = action25.getDomain();  if (site25 == null)  {      site25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup25 == null){  serverGroup25 = action25.getServerGroup();  if (serverGroup25 == null)  {      serverGroup25 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationEnterprisePayment-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("PaymentServicesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue25, site25, serverGroup25,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Organization:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td class="table_header e s w center" nowrap="nowrap" width="75">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationEnterprisePayment.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationEnterprisePayment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } else { %><td class="table_header e s w center" nowrap="nowrap" width="75"><% {out.write(localizeISText("OrganizationEnterprisePayment.Selected.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationEnterprisePayment.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationEnterprisePayment.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationEnterprisePayment.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("PaymentServices","PS",null)) { %><tr>
<td class="table_detail2 w e s center" nowrap="nowrap">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% while (loop("AssignedPaymentServices","APS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PS:ID"),null).equals(context.getFormattedValue(getObject("APS:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %> checked="checked" <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>disabled="disabled" <% } %><% } %>
/>
</td>
<td class="table_detail2 e s left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail2 e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "paymentservicedisplayname", new TagParameter[] {
new TagParameter("paymentservice",getObject("PS"))}, 63); %></td>
<td class="table_detail2 e s left" width="90%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PS:Capabilities:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PS:Capabilities:BODescriptionTemplate"),null), null, "67");} %><% } %>
&nbsp;
</td>
</tr><% } %></table>
<input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PAYMENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEnterprisePayment.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="CancelChanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationEnterprisePayment.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "93");} %><% printFooter(out); %>