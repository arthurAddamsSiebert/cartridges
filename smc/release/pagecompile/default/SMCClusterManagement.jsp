<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><applet archive="smc.jar, util.jar"
codebase="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("AdminServerURL"),null)),null)%>/classes"
code="com.intershop.beehive.server.admin.toolkit.AdminApplet"
width=750 height=500>
<param name=admin.languages value="1">
<param name=admin.language.1 value="en,US">
<param name=admin.trace value="">
<param name=admin.default.console value="Services">
<param name=admin.show.console.buttons value="false">
<param name=admin.poll.default value=10>
<param name=admin.poll.fast value=2>
</applet><% printFooter(out); %>