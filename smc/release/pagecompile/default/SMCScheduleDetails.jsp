<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-Overview",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Schedules.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-SchedulesPaging",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Scheduling.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Schedule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Schedule:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("smc.NewSchedule.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;-&nbsp;<% {out.write(localizeISText("smc.General.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Page Navigator --><% URLPipelineAction action91 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessDetailAction",null)))),null));String site91 = null;String serverGroup91 = null;String actionValue91 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessDetailAction",null)))),null);if (site91 == null){  site91 = action91.getDomain();  if (site91 == null)  {      site91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup91 == null){  serverGroup91 = action91.getServerGroup();  if (serverGroup91 == null)  {      serverGroup91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCScheduler-ProcessDetailAction",null)))),null));out.print("\"");out.print(" name=\"");out.print("ScheduleDetailsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue91, site91, serverGroup91,true)); %><input type="hidden" name="ScheduleUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ScheduleUUID"),null)),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ScheduleUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% } else { %><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SMCScheduleTabs", null, "27");} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Schedule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Schedule:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("smc.NewSchedule.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorText"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td class="s" colspan="1">
<table cellpadding="4" cellspacing="0" border="0" width="100%" class="error_box">
<tr>
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("runtimeOnceParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.UnparseableTime.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} %>: &quot;<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("RuntimeOnce"),null)),null)%>&quot;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorText"),null).equals(context.getFormattedValue("runtimeRecurringParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("smc.UnparseableTime.fielditem2_error","",null,null,null,null,null,null,null,null,null,null,null));} %>: &quot;<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Runtime"),null)),null)%>&quot;
<% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ErrorText"),null)),null)%><% }} %></td>
</tr>
</table>
</td>
<tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td class="s" colspan="1">
<table cellpadding="4" cellspacing="0" border="0" width="100%" class="error_box">
<tr>
<td class="error_icon e" width="20"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% while (loop("ErrorMap:EntrySet","Entry",null)) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Entry:Value"),null)),null)%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><br/><% } %><% } %></td>
</tr>
</table>
</td>
<tr><% } %><tr>
<td class="table_title_description s"><% {out.write(localizeISText("SMCScheduleDetails.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.Name.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><input type="text" name="Name" maxlength="127" size=35 value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Name"),null)),null)%>" class="inputfield_en" style="width: 200px;"/></td>
<td class="table_detail"></td>
<td><input type="checkbox" name="EnabledFlag"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>checked="checked"<% } %> value="1" /></td>
<td align="left" class="fielditem2"><% {out.write(localizeISText("smc.Enabled.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.Description.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><textarea name="Description" cols="60" rows="5"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Description"),null)),null)%></textarea></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCScheduleDetails.Application.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="ApplicationUUID" class="select">
<option value="" selected="selected"><% {out.write(localizeISText("smc.None.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Applications","app",null)) { %><option value="<%=context.getFormattedValue(getObject("app:UUID"),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("Schedule"))))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("save"))))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SMCDomain")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SMCDomain:Site:DefaultApplication:UUID"),null).equals(context.getFormattedValue(getObject("app:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
selected="selected"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Schedule")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("Application"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Schedule:SiteDefaultApplication:UUID"),null).equals(context.getFormattedValue(getObject("app:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
selected="selected"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Schedule")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Application")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Application:UUID"),null).equals(context.getFormattedValue(getObject("app:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
selected="selected"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("save")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ApplicationUUID"),null).equals(context.getFormattedValue(getObject("app:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
selected="selected"
<% }}}} %>><% {String value = null;try{value=context.getFormattedValue(getObject("app:Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("app:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("app:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>&nbsp;(<% {out.write(localizeISText("SMCScheduleDetails.Default.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %></option><% } %></select>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.Pipeline.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="text" name="Pipeline" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Pipeline"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCScheduleDetails.Startnode.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="text" name="StartNode" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("StartNode"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCScheduleDetails.Hostname.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="Hostname" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Hostname"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.InstallationID.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="InstallationID" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("InstallationID"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.ServerName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="ServerName" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ServerName"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.ServerGroup.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="ServerGroup" class="select">
<option value="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serverGroup"),null).equals(context.getFormattedValue(getObject("ServerGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>selected="selected"<% } %>>(<% {out.write(localizeISText("smc.None.option1","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% while (loop("ServerGroups:Iterator","serverGroup",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("serverGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("serverGroup"),null).equals(context.getFormattedValue(getObject("ServerGroup"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("serverGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("smc.DataCenter.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="DataCenter" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DataCenter"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="n"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% {Object temp_obj = (getObject("Schedule:AttributeValue(\"executeOnOrderCreation\"):BooleanValue")); getPipelineDictionary().put("ExecuteOnOrderCreation", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ExecuteOnOrderCreation")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ExecuteOnOrderCreation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" valign="middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/><br/><input type="radio" name="Type" value="0"
checked="checked" disabled="disabled"/>
</td>
<td valign="top" class="table_detail3" nowrap><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/><br/><% {out.write(localizeISText("SMCScheduleDetails.RunsOnOrderCreation.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("SMCScheduleDetails.RunsOnOrderCreation.description.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td nowrap="nowrap" valign="top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/><br/><input type="radio" name="Type" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Type"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Type"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %>checked="checked"<% } %><% } else { %>
checked="checked"
<% } %>
/>
</td>
<td valign="top" class="table_detail3" nowrap><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/><br/>Run Once:</td>
<td class="table_detail" width="100%">
<table cellspacing="0" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDateOnce"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateOnce"),
new TagParameter("DateObject",getObject("StartDateOnce"))}, 210); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateOnce"),
new TagParameter("DateObject",getObject("CurrentDate"))}, 212); %><% } %><td valign="top" class="fielditem2">at</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td><input type="text" name="RuntimeOnce" maxlength=16 size=10 value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RuntimeOnce"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RuntimeOnce"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" style="width: 100px;"/></td>
</tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
</table>
</td>
<td></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="n" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap><input type="radio" name="Type" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Type"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td colspan="2" class="table_detail3" nowrap>Recurring Interval:</td>
</tr>
<tr>
<td class="table_detail3">&nbsp;&nbsp;</td>
<td valign="top" class="table_detail3" nowrap><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/><br/>Active:</td>
<td class="table_detail">
<table cellspacing="0" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",256,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDate"),
new TagParameter("DateObject",getObject("StartDate"))}, 257); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDate"),
new TagParameter("DateObject",getObject("CurrentDate"))}, 259); %><% } %><td class="fielditem2">to</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDate"),
new TagParameter("DateObject",getObject("EndDate"))}, 263); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDate"),
new TagParameter("DateObject","")}, 265); %><% } %></tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="fielditem2" nowrap>Run Time:</td>
<td class="table_detail">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td><input type="text" name="Runtime" maxlength=16 size=10 value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Runtime"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",278,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Runtime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {278}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {278}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" style="width: 100px;"/></td>
<td class="fielditem2"></td>
</tr>
<tr>
<td class="fielditem_comment"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:timePatternUserHint"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {282}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="fielditem2"></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="fielditem2" nowrap><input type="radio" name="RecurrencePattern" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %>/> Every:</td>
<td class="table_detail">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td><input type="text" name="Interval" maxlength=10 size=10 value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Interval"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",294,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Interval"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>60<% } %>" class="inputfield_en" style="width: 100px;"/></td>
<td></td>
<td class="fielditem2">&nbsp;
<select name="Unit" class="inputfield_en" style="width: 100px;">
<option value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",299,e);}if (_boolean_result) { %>selected<% } %>
>Minutes
</option>
<option value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>selected<% } %>
>Hours
</option>
<option value="2"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %>selected<% } %>
>Days
</option>
<option value="4"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",311,e);}if (_boolean_result) { %>selected<% } %>
>Weeks
</option>
<option value="5"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",315,e);}if (_boolean_result) { %>selected<% } %>
>Months
</option>
<option value="6"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Unit"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %>selected<% } %>
>Years
</option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="fielditem2" nowrap><input type="radio" name="RecurrencePattern" value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecurrencePattern"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",330,e);}if (_boolean_result) { %>checked="checked"<% } %>/> On these days:</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail"><input type="checkbox" name="day0" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day0"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",334,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Monday</td>
<td class="table_detail"><input type="checkbox" name="day1" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day1"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",335,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Tuesday</td>
<td class="table_detail"><input type="checkbox" name="day2" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day2"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",336,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Wednesday</td>
<td class="table_detail"><input type="checkbox" name="day3" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day3"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Thursday</td>
</tr>
<tr>
<td class="table_detail"><input type="checkbox" name="day4" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day4"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",340,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Friday</td>
<td class="table_detail"><input type="checkbox" name="day5" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day5"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Saturday</td>
<td class="table_detail"><input type="checkbox" name="day6" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("day6"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",342,e);}if (_boolean_result) { %>checked="checked"<% } %>/> Sunday</td>
</tr>
</table>
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="save" value="Apply" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="Reset" class="button"/></td>
<td width="10"></td>
<td class="button"><input type="submit" name="cancel" value="Cancel" class="button"/></td></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO Working Area --><% printFooter(out); %>