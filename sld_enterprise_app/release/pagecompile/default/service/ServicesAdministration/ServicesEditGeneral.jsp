<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditGeneral.General.text1",null)),null)),
new TagParameter("listview","false"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-General",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null))))),
new TagParameter("id","ViewServiceConfiguration"),
new TagParameter("text",getObject("ServiceConfiguration:DisplayName(Locale)"))}, 4); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesEditTabs", null, "6");} %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title e w s"><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action317 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null));String site317 = null;String serverGroup317 = null;String actionValue317 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null);if (site317 == null){  site317 = action317.getDomain();  if (site317 == null)  {      site317 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup317 == null){  serverGroup317 = action317.getServerGroup();  if (serverGroup317 == null)  {      serverGroup317 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServiceEdit-Delete",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue317, site317, serverGroup317,true)); %><input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfiguration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
<input type="hidden" name="DeleteJumpTarget" value="ViewServiceEdit-General" />
<table><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","Cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("message",localizeText(context.getFormattedValue("ServicesEditGeneral.AreYouSureThatYouWantToDeleteTheServiceConfigurati.message",null))),
new TagParameter("type","mdc")}, 23); %></table><% out.print("</form>"); %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("validateError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td class="error_box e w s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ServicesEditGeneral.PleaseFillOutAllRequiredFieldsAndClickOnApplyAgain.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("saveSuccessful"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td class="e w s">
<table border="0" cellspacing="4" cellpadding="0" width="100%" class="notification">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" border="0"/></td>
<td width="100%"><% {out.write(localizeISText("ServicesEditGeneral.ChangesSavedSuccessfully.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServiceSharingInformation", null, "60");} %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("ServicesEditGeneral.HereYouCanSetTheGlobalServiceConfigurationValues.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {Object temp_obj = ("true"); getPipelineDictionary().put("isOrganizationUserPermission", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"service/ServicesAdministration/ServicesEditGeneral_inc", null, "69");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "71");} %><% printFooter(out); %>