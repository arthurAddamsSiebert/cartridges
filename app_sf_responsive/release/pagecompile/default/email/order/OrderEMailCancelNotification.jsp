<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Gifting\")")); getPipelineDictionary().put("CartGifting", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("CartPayment", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"Payment\")")); getPipelineDictionary().put("OrderPayment", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PriceDisplayTypeName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderBO:PriceDisplayTypeName")); getPipelineDictionary().put("PriceDisplayTypeName", temp_obj);} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "13");} %><subject><% {out.write(localizeISText("email.order_cancellation.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></subject><% getPipelineDictionary().put("CurrentDate", new java.util.Date()); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "18");} %><p class="header"><% {out.write(localizeISText("email.order_cancellation.heading","",null,getObject("ChannelName"),null,null,null,null,null,null,null,null,null));} %></p>
<p> 
<% {out.write(localizeISText("order.order_number.label","",null,getObject("OrderBO:DocumentNo"),null,null,null,null,null,null,null,null,null));} %></p>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OrderBO:UserBO:Title")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("OrderBO:UserBO:Title"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("email.dear.label.title_firstname_lastname","",null,getObject("OrderBO:UserBO:Title"),getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("email.dear.label.firstname_lastname","",null,getObject("OrderBO:UserBO:FirstName"),getObject("OrderBO:UserBO:LastName"),null,null,null,null,null,null,null,null));} %><% } %></p>
<p><% {out.write(localizeISText("email.order_cancellation.orderCanceled.text",null,null,getObject("CurrentDate"),encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrders-SimpleOrderSearch",null)))),null)),null,null,null,null,null,null,null,null));} %></p>
<br />
<p><% {out.write(localizeISText("email.order_confirmation.questions",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),null,null,null,null,null,null,null));} %> 
</p>
<p><% {out.write(localizeISText("email.best_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.user_services.label",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "61");} %><% printFooter(out); %>