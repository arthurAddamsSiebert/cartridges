<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "2");} %><SUBJECT><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.subject",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></SUBJECT><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/Modules", null, "5");} %><!-- Added the e-mail style--><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailStyle", null, "8");} %><% {Object temp_obj = (getObject("PersonalDataRequestBO:Extension(\"PersonalDataRequestBODoubleOptInExtension\")")); getPipelineDictionary().put("DoubleOptInExtension", temp_obj);} %><% processOpenTag(response, pageContext, "mailheader", new TagParameter[] {
new TagParameter("ChannelName",getObject("ChannelName"))}, 12); %><p class="header"><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.header","",null,getObject("ChannelName"),null,null,null,null,null,null,null,null,null));} %></p>
<div class="emailBody">
<p><% {out.write(localizeISText("email.gdpr.common.user.greeting","",null,getObject("PersonalDataRequestBO:RequesterName"),null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.statement","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p>
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewPersonalDataRequestHandling-Confirm",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("PersonalDataRequestID",null),context.getFormattedValue(getObject("PersonalDataRequestBO:ID"),null))).addURLParameter(context.getFormattedValue("Hash",null),context.getFormattedValue(getObject("DoubleOptInExtension:ConfirmationLinkHash"),null))),null)%>"><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a><br /><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.link.expiration","",null,getObject("ApplicationBO:Configuration:Integer(\"PersonalDataConfirmationLinkExpirationPeriod\",\"(Integer)24\")"),null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.warning","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.gdpr.confirm.request.personal.data.confirmation.contact","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.gdpr.common.regards",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %></p>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "46");} %><% printFooter(out); %>