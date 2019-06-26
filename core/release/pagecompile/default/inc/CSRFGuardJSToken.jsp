<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.request.Request"%>
<%@page import="com.intershop.beehive.core.capi.security.CrossSiteRequestForgeryGuard"%>
<%@page import="com.intershop.beehive.core.capi.security.StateChangeGuardProvider"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {6}",e);}} %> 

<%
String isSecureHeader = request.getHeader("X-IS-SERVER_PORT_SECURE");
if (isSecureHeader != null)
{
    if (isSecureHeader.equals("1"))
    {
        CrossSiteRequestForgeryGuard guard = (CrossSiteRequestForgeryGuard) NamingMgr.getProvider(StateChangeGuardProvider.class).getCurrentStateChangeGuard();
        getPipelineDictionary().put("SessionSynchronizerToken", guard.getSessionSynchronizerToken());
    }
}
%>

<script type="text/javascript">
	var SYNCHRONIZER_TOKEN_NAME = 'SynchronizerToken';
	var SYNCHRONIZER_TOKEN_VALUE = '<% {String value = null;try{value=context.getFormattedValue(getObject("SessionSynchronizerToken"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value,"JavaScript");out.write(value);} %>';
</script><% printFooter(out); %>