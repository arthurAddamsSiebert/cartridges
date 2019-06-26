<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_locking_breadcrumb", null, "5");} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" width="100%" nowrap="nowrap"><% {out.write(localizeISText("monitor.NamedResources.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s" width="100%"><% {out.write(localizeISText("monitor_locking_resources_named.ClickPlusIconToExpandResourceTree.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% while (loop("ResourceTreeControls","ResourceTreeControl",null)) { %><% while (loop("ResourceTreeControl:ExpandedElements","TreeControlElement",null)) { %><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td nowrap="nowrap"><% while (loop("TreeControlElement:LevelSpaces",null,null)) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="1" alt="" border="0"/><% } %></td>
<td height="20"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TreeControlElement:RootElement"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/L.gif" width="22" height="28" alt="" border="0"/><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="28" alt="" border="0"/><% } %></td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="3" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("TreeControlElement:Expanded"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><td class="n w s" bgcolor="#999999"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Named",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TreeControlID",null),context.getFormattedValue(getObject("ResourceTreeControl:ID"),null))).addURLParameter(context.getFormattedValue("TreeControlElementID",null),context.getFormattedValue(getObject("TreeControlElement:ID"),null)).addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("Collapse",null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/minus.gif" alt="" border="0" width="20" height="20"/></a></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TreeControlElement:Childs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><td class="n w s" bgcolor="#999999"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Named",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TreeControlID",null),context.getFormattedValue(getObject("ResourceTreeControl:ID"),null))).addURLParameter(context.getFormattedValue("TreeControlElementID",null),context.getFormattedValue(getObject("TreeControlElement:ID"),null)).addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("Expand",null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/plus.gif" alt="" border="0" width="20" height="20"/></a></td><% } else { %><td class="n w s" bgcolor="#999999"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="20" height="20"/></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TreeControlElement:ModelObject:ResourceOwner"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><td class="n w s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/locked.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.ResourceIsLocked.alt",null)),null)%>" border="0" width="20" height="20"/></td><% } %><td class="n w s e" >
<table>
<tr>
<td nowrap="nowrap">
<a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLockingResources-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ResourceName",null),context.getFormattedValue(getObject("TreeControlElement:ModelObject:Name"),null))).addURLParameter(context.getFormattedValue("DomainUUID",null),context.getFormattedValue(getObject("TreeControlElement:ModelObject:Domain:UUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("TreeControlElement:ModelObject:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TreeControlElement:ModelObject:Domain:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
(<% {String value = null;try{value=context.getFormattedValue(getObject("TreeControlElement:ModelObject:Domain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %>
(<% {String value = null;try{value=context.getFormattedValue(getObject("TreeControlElement:ModelObject:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } %></a>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="3" alt="" border="0"/></td>
</tr>
</table>
</td>
<td width="100%">
&nbsp;
</td>
</tr>
</table><% } %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>