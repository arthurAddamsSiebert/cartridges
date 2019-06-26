<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action79 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfiguration-Select",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null)))),null));String site79 = null;String serverGroup79 = null;String actionValue79 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfiguration-Select",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null)))),null);if (site79 == null){  site79 = action79.getDomain();  if (site79 == null)  {      site79 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup79 == null){  serverGroup79 = action79.getServerGroup();  if (serverGroup79 == null)  {      serverGroup79 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfiguration-Select",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ConfigurationSelect");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue79, site79, serverGroup79,true)); %><table border="0" cellspacing="0" cellpadding="4" class="infobox aldi w100"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorKey"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><tr><td colspan="2">
<table width="100%" cellspacing="0" cellpadding="4" border="0" class="error_box">
<tr valign="top">
<td class="error_icon top"><img width="16" height="15" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif"></td>
<td width="100%" class="error top"><% {out.write(localizeISText(context.getFormattedValue(getObject("ErrorKey"),null),"",null,getObject("ErrorIdentifier"),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td></tr><% } %><tr>
<td class="infobox_description" colspan="2"><% {out.write(localizeISText("ContextSelection.EnterTheDetailsBelow.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item" valign="top" width="100px"><% {out.write(localizeISText("ContextSelection.Scope.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select id="ContextSelection_SelectedScope" name="SelectedScope" class="inputfield_en" onChange="setSelectionVisibility();"><% while (loop("ConfigurationScopes","ConfigurationScope",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ConfigurationScope"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedScope")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedScope"),null).equals(context.getFormattedValue(getObject("ConfigurationScope"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
selected="true"
<% } %>
> 
<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationScope"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</option><% } %></select>
</td>
</tr>
<tr id="ContextSelection_DomainNameRow">
<td class="infobox_item" valign="top" width="100px"><% {out.write(localizeISText("ContextSelection.DomainName.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="SelectedDomainName" class="inputfield_en"><% while (loop("DomainNames","DomainName",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DomainName"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedDomainName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedDomainName"),null).equals(context.getFormattedValue(getObject("DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
selected="true"
<% } %>
> 
<% {String value = null;try{value=context.getFormattedValue(getObject("DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</option><% } %></select>
</td>
</tr>
<tr id="ContextSelection_AppNameRow">
<td class="infobox_item" valign="top" width="100px"><% {out.write(localizeISText("ContextSelection.AppName.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="SelectedAppName" class="inputfield_en"><% while (loop("Apps","App",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("App:ID"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedAppName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedAppName"),null).equals(context.getFormattedValue(getObject("App:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
selected="true"
<% } %>
> 
<% {String value = null;try{value=context.getFormattedValue(getObject("App:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</option><% } %></select>
</td>
</tr>
<tr>
<td class="infobox_item" valign="top" width="100px"><% {out.write(localizeISText("ContextSelection.KeyPrefixCanBeLeftBlank.infobox_description","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" class="inputfield_en" name="SelectedKeyPrefix" size="75"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedKeyPrefix"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedKeyPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %>
/>
</td>
</tr>
<tr>
<td class="w100" colspan="2">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContextSelection.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<script language="JavaScript" type="text/javascript">
<!--
function setSelectionVisibility()
{
if (document.getElementById('ContextSelection_SelectedScope').value == 'domain')
{
document.getElementById('ContextSelection_DomainNameRow').className='displayTableRow';
document.getElementById('ContextSelection_AppNameRow').className='displayTableRow';
}
else
{
document.getElementById('ContextSelection_DomainNameRow').className='hideTableRow';
if(document.getElementById('ContextSelection_SelectedScope').value == 'server')
{
document.getElementById('ContextSelection_AppNameRow').className='displayTableRow';
}
else
{
document.getElementById('ContextSelection_AppNameRow').className='hideTableRow';
}
}
}
setSelectionVisibility();
-->
</script><% out.print("</form>"); %><% printFooter(out); %>