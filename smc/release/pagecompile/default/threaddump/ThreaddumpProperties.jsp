<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="form_bg w e">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_header e s" nowrap="nowrap">
<div id="A" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("LockedMonitors"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LockedSynchronizers"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>style="display: none;"<% } %>>
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('Threaddump');" class="tableheader"><% {out.write(localizeISText("ThreaddumpProperties.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("LockedMonitors"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LockedSynchronizers"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>style="display: none;"<% } %>>
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('Threaddump');" class="tableheader"><% {out.write(localizeISText("ThreaddumpProperties.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header s e" width="40%"><% {out.write(localizeISText("ThreaddumpProperties.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" width="60%"><% {out.write(localizeISText("ThreaddumpProperties.Description.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="LockedMonitorsInfo" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LockedMonitors"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("ThreaddumpProperties.LockedMonitors.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("ThreaddumpProperties.InformationAboutLockedMonitors.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center s e"><input type="checkbox" name="LockedSynchronizersInfo" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LockedSynchronizers"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("ThreaddumpProperties.LockedSynchronizers.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("ThreaddumpProperties.InformationAboutLockedSynchronizers.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
</td>
</tr><% printFooter(out); %>