<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("GiftCardDetails_52.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificate_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("GiftCardID",null),context.getFormattedValue(getObject("GiftCardID"),null)))),
new TagParameter("id","GiftCard/Details"),
new TagParameter("text",context.getFormattedValue(getObject("GiftCardCode"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("General"),null))}, 5); %><% URLPipelineAction action553 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificate_52-Dispatch",null)))),null));String site553 = null;String serverGroup553 = null;String actionValue553 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificate_52-Dispatch",null)))),null);if (site553 == null){  site553 = action553.getDomain();  if (site553 == null)  {      site553 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup553 == null){  serverGroup553 = action553.getServerGroup();  if (serverGroup553 == null)  {      serverGroup553 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewGiftCertificate_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("GiftCardDetailsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue553, site553, serverGroup553,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%"> 
<!-- Begin tabs row -->
<tr> 
<td> 
<%
				getPipelineDictionary().put("SelectedTab", "General");
				%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GiftCardTabs_52", null, "15");} %></td>
</tr>
<!-- End tabs row -->
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("GiftCardService:Capabilities:BOGiftCardDetailsTemplate"),null), null, "23");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><!-- Start Action Buttons left and right-->
<tr> 
<td class="w e s ">
<div style="width: 100%;">
<div style="float: right; width: auto;">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="save" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GiftCardDetails_52.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GiftCardDetails_52.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("allowDelete")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>disbled="disabled"<% } %> />
</td>
</tr>
</table>
</div>
</div>
</td>
</tr><% } %><!-- EO Action Buttons left and right--> 
</table> 
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "52");} %><% printFooter(out); %>