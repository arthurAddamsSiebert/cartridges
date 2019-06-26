<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Organization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Organization:DisplayName")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Organization:ID")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationPayment_32.PaymentServices.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganization_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("Organization:UUID")),
new TagParameter("text",getObject("OrgDisplayName"))}, 7); %><!-- Tabs --><% {Object temp_obj = ("Payment"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"organization/OrganizationTabs_32", null, "11");} %><% URLPipelineAction action142 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationPayment_32-Update",null)))),null));String site142 = null;String serverGroup142 = null;String actionValue142 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationPayment_32-Update",null)))),null);if (site142 == null){  site142 = action142.getDomain();  if (site142 == null)  {      site142 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup142 == null){  serverGroup142 = action142.getServerGroup();  if (serverGroup142 == null)  {      serverGroup142 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationPayment_32-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("PaymentServicesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue142, site142, serverGroup142,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e "><% {String value = null;try{value=context.getFormattedValue(getObject("OrgDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("OrganizationPayment_32.PaymentServices.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PaymentServices") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_header aldi center" nowrap="nowrap" width="80"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationPayment_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('PaymentServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationPayment_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div><% } else { %><table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("OrganizationPayment_32.Selected",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table><% } %></td>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationPayment_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationPayment_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationPayment_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("PaymentServices","PS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PS:isManagedService"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><tr>
<td class="table_detail2 w e s center" nowrap="nowrap">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% while (loop("AssignedPaymentServices","APS",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PS:ID"),null).equals(context.getFormattedValue(getObject("APS:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %> checked="checked" <% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
<td class="table_detail2 e s left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PS:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail2 e s left" nowrap="nowrap"><% processOpenTag(response, pageContext, "paymentservicedisplayname", new TagParameter[] {
new TagParameter("paymentservice",getObject("PS"))}, 74); %></td>
<td class="table_detail2 e s left" width="90%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PS:Capabilities:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PS:Capabilities:BODescriptionTemplate"),null), null, "78");} %><% } %>
&nbsp;
</td>
</tr><% } %><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PAYMENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationPayment_32.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="CancelChanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationPayment_32.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w e">
<tr>
<td class="table_detail s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationPayment_32.ThereAreNoPaymentMethodsAvailableForThisPartner.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "114");} %><!-- EO Secondary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>