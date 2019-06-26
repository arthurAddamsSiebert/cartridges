<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript" type="text/javascript">
<!--
function hideshow(which) {
nn6 = (document.captureEvents)? true:false
ie5 = (document.all)? true:false
if (document.getElementById(which).className == 'hide_dept') {
if(ie5){
document.getElementById(which).className = "show_dept_nn";
}
if(nn6){
document.getElementById(which).className = "show_dept_nn";
}
document.images[which + '_img'].src = '<%=context.getFormattedValue(context.webRoot(),null)%>/images/minus.gif';
}
else {
document.getElementById(which).className = "hide_dept";
document.images[which + '_img'].src = '<%=context.getFormattedValue(context.webRoot(),null)%>/images/plus.gif';
}
}
-->
</script><% printFooter(out); %>