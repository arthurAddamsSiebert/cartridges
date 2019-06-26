<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
<!-- Navigation and Content Area -->
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Cartridges",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Cartridges.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.DuplicatedPipelets.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewDuplicatePipelets-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "10");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100">
<tr>
<td><% URLPipelineAction action57 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Start",null)))),null));String site57 = null;String serverGroup57 = null;String actionValue57 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Start",null)))),null);if (site57 == null){  site57 = action57.getDomain();  if (site57 == null)  {      site57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup57 == null){  serverGroup57 = action57.getServerGroup();  if (serverGroup57 == null)  {      serverGroup57 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("DomainName");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue57, site57, serverGroup57,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_description" nowrap="nowrap"><% {out.write(localizeISText("monitor_duplicate_pipelets.SelectDomain.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/></td>
<td>
<select name="DomainName" size="1" class="select inputfield_en"><% while (loop("DomainNames",null,null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainNames"),null)),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainNames"),null).equals(context.getFormattedValue(getObject("DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %> selected="selected"<% } %>
><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainNames"),null)),null)%>&nbsp;</option><% } %></select>
</td>
<td>&nbsp;&nbsp;</td>
<td class="w100">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td>&nbsp;</td>
</tr>
</table><% out.print("</form>"); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DomainName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><td><% URLPipelineAction action58 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Update",null)))),null));String site58 = null;String serverGroup58 = null;String actionValue58 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Update",null)))),null);if (site58 == null){  site58 = action58.getDomain();  if (site58 == null)  {      site58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup58 == null){  serverGroup58 = action58.getServerGroup();  if (serverGroup58 == null)  {      serverGroup58 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDuplicatePipelets-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("PipelineName");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue58, site58, serverGroup58,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_description" nowrap="nowrap"><% {out.write(localizeISText("monitor_duplicate_pipelets.SelectPipeline.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:<input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="hidden" name="DomainName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td>
<select name="PipelineName" size="1" class="select"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DomainName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% while (loop("PipelineNames",null,null)) { %><% {String value = null;try{value=context.getFormattedValue("<option",null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(" value=\"",null) + context.getFormattedValue(getObject("PipelineNames"),null) + context.getFormattedValue("\">",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(getObject("PipelineNames"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></select>
</td>
<td>&nbsp;&nbsp;</td>
<td class="w100">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td class="w100">&nbsp;</td>
</tr>
</table><% out.print("</form>"); %></td><% } %></tr>
</table>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<!-- Content Area --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PipelineName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor_duplicate_pipelets.CartridgesDuplicatedPipelets.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor_duplicate_pipelets.PageGeneratesDuplicatePipeletsList.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="aldi">
<tr>
<td class="table_subtitle s"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("PipelineName"),null)),null)%></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PipelineExecutionPaths"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_header e s"><% {out.write(localizeISText("monitor_duplicate_pipelets.BadPipelineFlows.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("monitor.DuplicatedPipelets.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("PipelineExecutionPaths",null,null)) { %><tr>
<td class="table_detail e" valign="top"><% while (loop("PipelineExecutionPaths:PipelineNodeNames",null,null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PipelineNodeNames"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %></td>
<td class="table_detail" valign="top"><% while (loop("PipelineExecutionPaths:DuplicatePipelets",null,null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("DuplicatePipelets"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %></td>
</tr><% } %></table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PipelineError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><tr>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("PipelineError"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("monitor_duplicate_pipelets.NoProblemsFound.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% }} %></table>
</td>
</tr><% } %></table>
<!-- /Main Content --><% printFooter(out); %>