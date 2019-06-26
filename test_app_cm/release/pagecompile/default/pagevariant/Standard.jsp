<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html>
<html>
<!--sfe:{ "prefixPayload":"{'id':'SFE_DUMMY_DATA', 'displayName':'Dummy Data', 'displayType':'Dummy Data', 'children':[", "suffixPayload":"]},", "id":"SFE_DUMMY_DATA" }-->
<head>
</head>
<body>
<header data-testing-id="page-header" class="top"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","test_app_cm:slot.pagevariant.header.pagelet2-Slot")}, 11); %></header>
<div class="wrapper">
<div role="main" class="container main-container"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","test_app_cm:slot.pagevariant.content.pagelet2-Slot")}, 16); %></div>
</div>
<footer data-testing-id="section-footer"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","test_app_cm:slot.pagevariant.footer.pagelet2-Slot")}, 21); %></footer>
</body>
</html><% printFooter(out); %>