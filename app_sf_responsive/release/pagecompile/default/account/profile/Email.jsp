<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("UserBO:Extension(\"UserBOPreferencesExtension\")")); getPipelineDictionary().put("Preferences", temp_obj);} %><div class="row section">
<div class="col-md-4 pull-right col-xs-2">
<a class="btn-tool" title="<% {out.write(localizeISText("account.profile.update.link","",null,null,null,null,null,null,null,null,null,null,null));} %>" href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-ViewLoginSettings",null)))),null)%>">
<span class="glyphicon glyphicon-pencil"></span>
</a>
</div>
<div class="col-md-8 col-xs-10">
<h3><% {out.write(localizeISText("account.profile.email.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div class="row">
<div class="col-sm-12">
<dl class="dl-horizontal dl-separator">
<dt><% {out.write(localizeISText("account.profile.email.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd data-testing-id="email-field"><% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
</dl>
</div>
</div>
</div>
</div><% printFooter(out); %>