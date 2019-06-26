<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-Overview",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Schedules.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-SchedulesPaging",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Scheduling.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Schedule:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("smc.Login.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Page Navigator --><% URLPipelineAction action112 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessLogin",null)))),null));String site112 = null;String serverGroup112 = null;String actionValue112 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessLogin",null)))),null);if (site112 == null){  site112 = action112.getDomain();  if (site112 == null)  {      site112 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup112 == null){  serverGroup112 = action112.getServerGroup();  if (serverGroup112 == null)  {      serverGroup112 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessLogin",null)))),null));out.print("\"");out.print(" name=\"");out.print("ScheduleLoginForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue112, site112, serverGroup112,true)); %><input type="hidden" name="ScheduleUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ScheduleUUID"),null)),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td><% {Object temp_obj = ("Login"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SMCScheduleTabs", null, "21");} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Schedule:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LOGINSTATE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("MISS_PASSWORD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("DIFFERENT_PASSWORD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("UNKNOWN_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("MISS_PASSWORD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("SMCScheduleLogin.PleaseSetPasswordAndConfirmation.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("DIFFERENT_PASSWORD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("SMCScheduleLogin.PasswordAndPasswordConfirmationDoesNotMa.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("UNKNOWN_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("SMCScheduleLogin.UnknownErrorWhileProcessScheduleLogin.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("CLEAR_LOGIN",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><td class="fielditem2" width="100%" style="color: #40A040;" ><% {out.write(localizeISText("SMCScheduleLogin.LoginCleared.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LOGINSTATE"),null).equals(context.getFormattedValue("SET_PASSWORD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><td class="fielditem2" width="100%" style="color: #40A040;" ><% {out.write(localizeISText("SMCScheduleLogin.SetLoginInformationSuccessfully.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
</table><% } %></td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCScheduleLogin.SpecifyALoginAndPasswordForSchedule.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCScheduleLogin.Login.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><input autocomplete="off" type="text" name="login" maxlength=85 size=25 value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("login"),null)),null)%>" class="inputfield_en" style="width: 200px;"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.Password.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input autocomplete="off" type="password" name="password" maxlength="85" size="25" value="" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.ConfirmPassword.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input autocomplete="off" type="password" name="passwordconfirm" maxlength="85" size="25" value="" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="save" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action113 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-SchedulesPaging",null)))),null));String site113 = null;String serverGroup113 = null;String actionValue113 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-SchedulesPaging",null)))),null);if (site113 == null){  site113 = action113.getDomain();  if (site113 == null)  {      site113 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup113 == null){  serverGroup113 = action113.getServerGroup();  if (serverGroup113 == null)  {      serverGroup113 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-SchedulesPaging",null)))),null));out.print("\"");out.print(" name=\"");out.print("ScheduleListBack");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue113, site113, serverGroup113,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>