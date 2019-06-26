<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="ish-dialog-content">
<div class="kor-content-contents kor-dialog-concurent-modification">
<h1><% {out.write(localizeISText("account.address.warning","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<p class="kor-field-error-list-item"><% {out.write(localizeISText("account.delete.address.warning","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div class="ish-field-buttonGroup">
<a class="ish-button" href="javascript:window.location.reload()"><% {out.write(localizeISText("account.reloadpage.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div><% printFooter(out); %>