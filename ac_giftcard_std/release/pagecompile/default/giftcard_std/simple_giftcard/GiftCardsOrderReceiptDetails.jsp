<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<h5><% {out.write(localizeISText("checkout.giftcard.details.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h5>
<% while (loop("GiftCardsDetail:ReceiptViewContent:Values","GiftCard",null)) { %>
	<div data-testing-id="giftcardNumber">
		<% {out.write(localizeISText("checkout.giftcard.details.number","",null,null,null,null,null,null,null,null,null,null,null));} %>
		<span><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Cardnumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
	</div>
	<p data-testing-id="giftcardPin">
		<% {out.write(localizeISText("checkout.giftcard.details.pin","",null,null,null,null,null,null,null,null,null,null,null));} %>
		<span><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Pin"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
	</p>
<% } %>
<% printFooter(out); %>