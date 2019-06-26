<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table class="listing editable">
<tr>
<th><p class="blackbold"><% {out.write(localizeISText("Table.Row0.table_header",null,null,"1",null,null,null,null,null,null,null,null,null));} %></p></th>
<th><p class="blackbold"><% {out.write(localizeISText("Table.Row0.table_header",null,null,"2",null,null,null,null,null,null,null,null,null));} %></p></th>
</tr>
<tr>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
</tr>
<tr>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
</tr>
<tr>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
<td><p class="blacknormal"><% {out.write(localizeISText("Table.Text.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p></td>
</tr>
</table><% printFooter(out); %>