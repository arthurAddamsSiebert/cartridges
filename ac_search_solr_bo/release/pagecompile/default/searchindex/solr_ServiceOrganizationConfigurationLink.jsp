<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<a class="action_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexConfiguration-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchEngine",null),context.getFormattedValue("solr",null))).addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null))),null)%>" ><% {out.write(localizeISText("solr_ServiceOrganizationConfigurationLink.Configure.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<% printFooter(out); %>