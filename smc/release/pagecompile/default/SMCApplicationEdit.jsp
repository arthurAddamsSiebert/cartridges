<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SMCApplicationEdit.General.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SiteManagementTabs", null, "17");} %></td>
</tr>
<tr>
<td width="100%" class="table_title w e s "><% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateSite:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("UpdateSite:isAnyParameterInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SMC_ERROR_NOTUNIQUE_URLREWRITENAME")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SMCApplicationEdit.SiteCouldNotBeUpdated.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateSite:URLRewriteSiteName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCApplicationEdit.PleaseProvideAValidURLRewriteSiteName.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SMC_ERROR_NOTUNIQUE_URLREWRITENAME"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCApplicationEdit.PleaseProvideAUniqueURLRewriteSiteName.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("SMCApplicationEdit.ClickApplyToSaveTheDetails.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Titel and Description --><% URLPipelineAction action89 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewApplicationDetails-Update",null)))),null));String site89 = null;String serverGroup89 = null;String actionValue89 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewApplicationDetails-Update",null)))),null);if (site89 == null){  site89 = action89.getDomain();  if (site89 == null)  {      site89 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup89 == null){  serverGroup89 = action89.getServerGroup();  if (serverGroup89 == null)  {      serverGroup89 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewApplicationDetails-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateORG");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue89, site89, serverGroup89,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td colspan="4"><input name="UpdateSite_id" type="hidden" value="UpdateSite"/>
<input name="DomainUUID" type="hidden" value="<%=context.getFormattedValue(getObject("Site:UUID"),null)%>"/><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/>
<input name="UpdateSite_HTTPS" type="hidden" value="true"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.ServerGroup.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="UpdateSite_ServerGroup" class="select"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> disabled="disabled"<% } %>>
<option value="">&nbsp;</option><% while (loop("ServerGroups","ServerGroup",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("UpdateSite:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ServerGroup"),null).equals(context.getFormattedValue(getObject("UpdateSite:ServerGroup:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (getObject("UpdateSite:isSubmitted"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ServerGroup"),null).equals(context.getFormattedValue(getObject("Site:ServerGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCApplicationEdit.URLRewriting.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateSite:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateSite_URLRewriting" value="Enabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateSite:URLRewriting:Value"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% } else { %><input type="checkbox" name="UpdateSite_URLRewriting" value="Enabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("URLRewriting"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% } %></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCApplicationEdit.URLRewriteSiteName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateSite:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><input type="text" name="UpdateSite_URLRewriteSiteName" class="inputfield_en" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateSite:URLRewriteSiteName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input type="text" name="UpdateSite_URLRewriteSiteName" class="inputfield_en" maxlength="35" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("URLRewriteSiteName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
<td class="fielditem2" nowrap="nowrap"></td>
<td class="table_detail" width="100%"></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.Status.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="3">
<select name="UpdateSite_DomainStatus" class="select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Site:DomainName"),null).equals(context.getFormattedValue(getObject("CurrentDomain:Site:DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateSite:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><option value="LIVE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("LIVE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Live.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MAINTENANCE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("MAINTENANCE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Maintenance.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DISABLED" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Disabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("LIVE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("MAINTENANCE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UpdateSite:DomainStatus:Value"),null).equals(context.getFormattedValue("DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><option value="" selected="selected"><% {out.write(localizeISText("smc.UnknownState.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% } else { %><option value="LIVE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Live.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MAINTENANCE" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Maintenance.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DISABLED" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("smc.Disabled.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Site:Status"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><option value="" selected="selected"><% {out.write(localizeISText("smc.UnknownState.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% } %></select>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
</table>
<!-- Primary Buttons -->
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="DomainUUID" value="<%=context.getFormattedValue(getObject("Site:UUID"),null)%>"/><input class="button" type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Primary Buttons -->
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action90 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));String site90 = null;String serverGroup90 = null;String actionValue90 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null);if (site90 == null){  site90 = action90.getDomain();  if (site90 == null)  {      site90 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup90 == null){  serverGroup90 = action90.getServerGroup();  if (serverGroup90 == null)  {      serverGroup90 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue90, site90, serverGroup90,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>