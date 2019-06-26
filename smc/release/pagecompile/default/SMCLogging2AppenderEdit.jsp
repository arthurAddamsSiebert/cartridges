<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Overview-Start",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.Logging.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a
>&nbsp;&gt;&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("Cluster",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2ClusterSettings-Display",null)))),null)%>"class="breadcrumb"><% {out.write(localizeISText("smc.ClusterWideSettings.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a
><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("ClusterAdvanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2ClusterSettings-DisplayAdvanced",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.ClusterWideAdvancedSettings.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a
><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("Server",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2-Display",null)))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("smc.LoggingSettings.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a
><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("ServerAdvanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2-DisplayAdvanced",null)))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("smc.AdvancedLoggingSettings.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a
><% }}}} %>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Appender:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<!-- EO Page Navigator --><% URLPipelineAction action109 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null));String site109 = null;String serverGroup109 = null;String actionValue109 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null);if (site109 == null){  site109 = action109.getDomain();  if (site109 == null)  {      site109 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup109 == null){  serverGroup109 = action109.getServerGroup();  if (serverGroup109 == null)  {      serverGroup109 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("levelUpdate");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue109, site109, serverGroup109,true)); %><input type="hidden" name="AppenderName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Appender:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SettingsScope" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SettingsScope"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s " nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Appender:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NewEmptyCategoryNameErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("SMCLogging2AppenderEdit.YouHaveNotSelectedAnyItemsToBeUnassigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LogSystemData:isServerSpecific"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCLogging2AppenderEdit.HereYouCanSetAppServerSpecificAppenderSettings.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SMCLogging2AppenderEdit.HereYouCanSetClusterWideAppenderSettings.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_subtitle w e s" nowrap="nowrap"><% {out.write(localizeISText("smc.LevelFilter.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCLogging2AppenderEdit.HereYouCanSetALevelFilterForLogMessages.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="left top fielditem2"><% {out.write(localizeISText("SMCLogging2AppenderEdit.FilterType.left","",null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail left top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterType"),null).equals(context.getFormattedValue("THRESHOLD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><input type="radio" name="FilterLevelType" value="THRESHOLD" checked="checked"/><% } else { %><input type="radio" name="FilterLevelType" value="THRESHOLD"/><% } %><% {out.write(localizeISText("SMCLogging2AppenderEdit.ThresholdMessagesOfTheSelectedLevel.input","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="left top fielditem2">
&nbsp;
</td>
<td class="table_detail left top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterType"),null).equals(context.getFormattedValue("FIXED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><input type="radio" name="FilterLevelType" value="FIXED" checked="checked"/><% } else { %><input type="radio" name="FilterLevelType" value="FIXED"/><% } %><% {out.write(localizeISText("SMCLogging2AppenderEdit.FixedOnlyMessagesOfTheSelectedLevel.input","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="left top fielditem2"><% {out.write(localizeISText("SMCLogging2AppenderEdit.FilterLevel.left","",null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail left top">
<select name="FilterLevel" class="select">
<option value="Error" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterLevel"),null).equals(context.getFormattedValue("ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Error.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Warn" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterLevel"),null).equals(context.getFormattedValue("WARN",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Warn.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Info" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterLevel"),null).equals(context.getFormattedValue("INFO",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Info.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Debug" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterLevel"),null).equals(context.getFormattedValue("DEBUG",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Debug.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Trace" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Appender:LevelFilterLevel"),null).equals(context.getFormattedValue("TRACE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("smc.Trace.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="none" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Appender:LevelFilterType"),null).equals(context.getFormattedValue("THRESHOLD",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Appender:LevelFilterType"),null).equals(context.getFormattedValue("FIXED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SMCLogging2AppenderEdit.None.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
<tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="updateLevel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table><% out.print("</form>"); %><% URLPipelineAction action110 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null));String site110 = null;String serverGroup110 = null;String actionValue110 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null);if (site110 == null){  site110 = action110.getDomain();  if (site110 == null)  {      site110 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup110 == null){  serverGroup110 = action110.getServerGroup();  if (serverGroup110 == null)  {      serverGroup110 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("categoryUpdate");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue110, site110, serverGroup110,true)); %><input type="hidden" name="AppenderName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Appender:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SettingsScope" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SettingsScope"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="n w e s">
<table cellspacing="0" cellpadding="5" border="0" width="100%" class="infobox">
<tr>
<td colspan="2" class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("smc.AssignedCategories.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2AppenderEdit.RootCategory.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td width="99%">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="infobox_item" nowrap="nowrap">
<select name="RootCategory" class="select" onchange="this.form.action='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-Edit",null)))),null)%>';this.form.submit();"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("RootCategory")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RootCategory"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><option></option><% } %><% while (loop("LogSystemData:KnownCategories","category",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("category:isAdditiveMode")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (getObject("category:isRootCategory"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("category:Name"),null).equals(context.getFormattedValue(getObject("RootCategory"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("category:DeclaredLevel"),null).equals(context.getFormattedValue("UNDEFINED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>(<% {String value = null;try{value=context.getFormattedValue(getObject("category:DeclaredLevel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)<% } %></option><% } %><% } %></select>
</td>
<td>
<noscript>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="button">
<input class="button" type="submit" name="selectRootCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLogging2AppenderEdit.Select.button",null)),null)%>"/>
</td>
</tr>
</table>
</noscript>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("SMCLogging2AppenderEdit.Category.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td width="99%">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="infobox_item" nowrap="nowrap">
<select name="Category" class="select"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("RootCategory")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RootCategory"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><option><% {out.write(localizeISText("SMCLogging2AppenderEdit.PleaseSelectARootCategoryFirst.option","",null,null,null,null,null,null,null,null,null,null,null));} %>...</option><% } else { %><% while (loop("LogSystemData:KnownCategories","category",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("category:Name"),null).equals(context.getFormattedValue(getObject("RootCategory"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("category:isIncludedByCategory(RootCategory)")).booleanValue() && ((Boolean) ((((Boolean) getObject("category:isIncludedByAppender(Appender)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("category:DeclaredLevel"),null).equals(context.getFormattedValue("UNDEFINED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %>(<% {String value = null;try{value=context.getFormattedValue(getObject("category:DeclaredLevel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)<% } %></option><% } %><% } %><% } %></select>
</td>
<td class="button">
<input class="button" type="submit" name="assignCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLogging2AppenderEdit.Assign.button",null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("RootCategory")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RootCategory"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SMCLogging2AppenderEdit.TheListShowsAllCategoriesExplicitlyAssigned.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Appender:AssignedCategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("SMCLogging2AppenderEdit.ThereAreCurrentlyNoCategoriesAssigned.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_header w e s center" nowrap="nowrap" width="70">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('categoryUpdate','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("smc.SelectAll.link3","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('categoryUpdate','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("smc.ClearAll.link3","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("smc.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Appender:AssignedCategories","cat",null)) { %><tr>
<td class="w e s center"><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("cat:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("cat:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) getObject("Clipboard:contains(cat:Name)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2Appender-ShowSubCategories",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SettingsScope",null),context.getFormattedValue(getObject("SettingsScope"),null))).addURLParameter(context.getFormattedValue("AppenderName",null),context.getFormattedValue(getObject("Appender:Name"),null)).addURLParameter(context.getFormattedValue("RootCategory",null),context.getFormattedValue(getObject("cat:Name"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("cat:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {246}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
</tr><% } %><tr>
<td colspan="2" class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="unassignCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCLogging2AppenderEdit.Unassign.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
<td>
</tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("Cluster",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2ClusterSettings-Display",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("ClusterAdvanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",273,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2ClusterSettings-DisplayAdvanced",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("Server",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2-Display",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SettingsScope"),null).equals(context.getFormattedValue("ServerAdvanced",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("SMCLogging2-DisplayAdvanced",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% }}}} %><% URLPipelineAction action111 = new URLPipelineAction(context.getFormattedValue(getObject("FormAction"),null));String site111 = null;String serverGroup111 = null;String actionValue111 = context.getFormattedValue(getObject("FormAction"),null);if (site111 == null){  site111 = action111.getDomain();  if (site111 == null)  {      site111 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup111 == null){  serverGroup111 = action111.getServerGroup();  if (serverGroup111 == null)  {      serverGroup111 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("FormAction"),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue111, site111, serverGroup111,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
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