<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.DatabaseStatus.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td><% URLPipelineAction action36 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDatabaseStatus-Display",null)))),null));String site36 = null;String serverGroup36 = null;String actionValue36 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDatabaseStatus-Display",null)))),null);if (site36 == null){  site36 = action36.getDomain();  if (site36 == null)  {      site36 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup36 == null){  serverGroup36 = action36.getServerGroup();  if (serverGroup36 == null)  {      serverGroup36 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDatabaseStatus-Display",null)))),null));out.print("\"");out.print(" name=\"");out.print("TypeID");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue36, site36, serverGroup36,true)); %><table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100">
<tr>
<td class="infobox_description" nowrap="nowrap"><% {out.write(localizeISText("monitor_database_status.SelectAReport.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="UUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("UUID"),null)),null)%>"/></td>
<td>
<select name="TypeID" size="1" class="inputfield_en">
<option selected="selected"><% {out.write(localizeISText("monitor_database_status.SelectReport.option","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("TypeNames",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TypeNames:Name"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TypeNames:Name"),null).equals(context.getFormattedValue(getObject("TypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("TypeNames:Name"),null,null);value=pad(value,-5);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("TypeNames:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<td class="w100">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td>&nbsp;</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor.EnfinityClusterDatabaseStatus.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("monitor_database_status.PageDisplaysDatabaseInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TableHeader")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Table")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="w">
<tr>
<td colspan="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("NumberOfColumns"),null)),null)%>" class="table_subtitle e s"><% while (loop("TypeNames",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TypeID"),null).equals(context.getFormattedValue(getObject("TypeNames:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TypeNames:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("TypeNames:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
</tr><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><tr><% while (loop("TableHeader",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("counter"),new Integer(INTEGER)),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("TableHeader"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td><% } else { %><td class="table_header e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("TableHeader"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><% } %></tr><% while (loop("Table","row",null)) { %><tr><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("counter2", temp_obj);} %><% while (loop("row","column",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(context.getFormattedValue(getObject("counter2"),new Integer(INTEGER)),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %> <td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("column"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td><% } else { %><td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("column"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("counter2")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter2", temp_obj);} %><% } %></tr><% } %></table>
</td>
</tr><% } %></table>
<!-- /Main Content --><% printFooter(out); %>