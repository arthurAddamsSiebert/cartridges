<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "3");} %><subject><% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:Subject"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></subject><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "7");} %><base href="<%=context.getFormattedValue(url(true,(new URLPipelineAction())),null)%>">
<div><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.email.pagelet2-Slot")}, 13); %></div>
<p class="header"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:Subject"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Message1"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Message1"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><p><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PageletConfigurationParameters:Message1"))}, 20); %></p><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/email/ShoppingCart", "Dictionary", "25");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Message2"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Message2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><p><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("PageletConfigurationParameters:Message2"))}, 29); %></p><% } %><p><% {out.write(localizeISText("email.shopping_cart.happy_shopping.text",null,null,encodeString(context.getFormattedValue(url(true,context.getFormattedValue("http",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "37");} %><% printFooter(out); %>