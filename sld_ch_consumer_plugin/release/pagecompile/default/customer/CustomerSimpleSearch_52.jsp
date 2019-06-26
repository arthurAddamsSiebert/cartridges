<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"customer/forms/CustomerFormModules", null, "2");} %><div class="infobox searchbox w e s"> 
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox js-searchbox-simpleSearch">
<tr>
<td class="infobox_title js-searchbox-simpleSearch-title" nowrap="nowrap"><% {out.write(localizeISText("customers.list.search.simple.short.caption","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0" width="1">
<tr><% processOpenTag(response, pageContext, "customerfieldstring", new TagParameter[] {
new TagParameter("Field",getObject("CustomerSearch:NameOrID")),
new TagParameter("LabelClass","label label_light")}, 15); %><td class="button left">
<input type="submit" name="search" value="<% {out.write(localizeISText("customer.search.buttons.find","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</div><% printFooter(out); %>