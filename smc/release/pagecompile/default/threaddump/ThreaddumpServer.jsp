<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Description -->
<tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("ThreaddumpServer.UseTheCheckboxesToSelectTheAppServers.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- EO Description -->
<tr>
<td class="form_bg w e">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_header e s" nowrap="nowrap">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAllServer('ThreaddumpServer');" class="tableheader"><% {out.write(localizeISText("ThreaddumpServer.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="D" style="display: none;">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAllServer('ThreaddumpServer');" class="tableheader"><% {out.write(localizeISText("ThreaddumpServer.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header s" width="100%"><% {out.write(localizeISText("ThreaddumpServer.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ServerList","TargetServer",null)) { %><tr>
<td class="table_detail center s e"><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetServer:Server"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TargetServer:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetServer:Server"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
</td>
</tr><% printFooter(out); %>