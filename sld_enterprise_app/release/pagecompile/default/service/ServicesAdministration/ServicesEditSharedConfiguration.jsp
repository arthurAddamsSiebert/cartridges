<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","false"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null))))),
new TagParameter("id",""),
new TagParameter("text",localizeText(context.getFormattedValue("ServicesEditSharedConfiguration.EditSharedServiceConfiguration.text",null)))}, 4); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title n e w s"><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noSelectedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td class="error_box e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ServicesEditSharedConfiguration.YouHaveNotSelectedAServiceTypeUseTheRadioButtonsTo.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("saveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td class="table_detail information e w s"><% {out.write(localizeISText("ServicesEditSharedConfiguration.ChangesSavedSuccessfully.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("ServicesEditSharedConfiguration.HereYouCanSetSharingRulesForTheNewServiceConfigura.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesEditSharedConfiguration_inc", null, "44");} %><div class="sfe-dialog-hidden"> 
<% URLPipelineAction action326 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Dispatch",null)))),null));String site326 = null;String serverGroup326 = null;String actionValue326 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Dispatch",null)))),null);if (site326 == null){  site326 = action326.getDomain();  if (site326 == null)  {      site326 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup326 == null){  serverGroup326 = action326.getServerGroup();  if (serverGroup326 == null)  {      serverGroup326 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue326, site326, serverGroup326,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="button"><input type="submit" name="cancel" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharedConfiguration.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div><% printFooter(out); %>