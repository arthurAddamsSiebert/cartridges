<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% {Object temp_obj = (getObject("CustomerDetails:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "6");} %><subject><% {out.write(localizeISText("email.registration.approval.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></subject><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "10");} %><p><% {out.write(localizeISText("email.hello.label","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("email.new.customer.registered.message",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.registration.approval.user.name.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
<p><% {try{executePipeline("DetermineRepositories-Channel",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 21.",e);}} %><% {out.write(localizeISText("email.registration.needs.approval.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
<table cellpadding="0" cellspacing="0" class="mobileButtonPattern" bgcolor="<%=context.getFormattedValue("#",null)%>1db5b5">
<tr>
<td>
<table cellpadding="0" cellspacing="10" width="100%">
<tr>
<td class="button"><% {out.write(localizeISText("email.approve_customer.button",null,null,url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table>
<p class="copyLink"><% {out.write(localizeISText("email.password.link.expiry",null,null,encodeString(context.getFormattedValue(getObject("PasswordRelatedLinkLifeTime"),null)),url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Show",null),context.getFormattedValue("WFS",null),context.getFormattedValue(getObject("dict:Repository:OwningDomain:Site:DomainName"),null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("dict:ManagementApplication:UrlIdentifier"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.kind_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.notification.service",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "54");} %><% printFooter(out); %>