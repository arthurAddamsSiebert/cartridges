<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript">
<!--
function change(what) 
{
nn6 = (document.captureEvents)? true : false;
ie5 = (document.all)? true : false;
if (!document.getElementById)
return;
which = document.getElementById(what);
if (which.style.display == "none") 
{
if (nn6) 
{
which.style.display = "table-row";
}
if (ie5)
{
which.style.display = "block";
}
}
else
{
which.style.display = "none";
}
}
function appAll(howMuch)
{
for(i = 1;i < howMuch + 1; ++i)
{
document.getElementById("ref" + i).checked = false;
document.getElementById("app" + i).checked = true;
}
}
function refAll(howMuch)
{
for(i = 1; i< howMuch + 1; ++i)
{
document.getElementById("app" + i).checked = false;
document.getElementById("ref" + i).checked = true;
}
}
-->
</script><% printFooter(out); %>