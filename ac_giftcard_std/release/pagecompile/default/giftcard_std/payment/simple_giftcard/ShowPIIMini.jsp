<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.adapter.giftcard.std.internal.payment.GiftCardInformation"%>
<%@page import="com.intershop.component.payment.capi.PaymentInstrumentInfoBO"%>
<%
	int nowMonth = new GregorianCalendar().get(GregorianCalendar.MONTH)+1;
	PipelineDictionary dict = getPipelineDictionary();	
	PaymentInstrumentInfoBO pii = (PaymentInstrumentInfoBO) dict.get("PIIBO");
	if (pii != null)
	{
	    GiftCardInformation info = pii.getConfiguration(pii.getPaymentService().getPaymentParameterDefinitions());
		dict.put("GiftCardNumber", ((info!=null) ? info.getGiftCardNumber() : ""));
	}
%>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("short",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedGiftCardNumber"),
new TagParameter("character","x"),
new TagParameter("length","3"),
new TagParameter("text",getObject("GiftCardNumber")),
new TagParameter("direction","begin")}, 18); %>
	<span class="ish-giftCardList-number">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PII:CustomAttributes:GiftCardType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PII:CustomAttributes:GiftCardType"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
			<% {out.write(localizeISText("ShowPIIMini.GiftCertificate","",null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PII:CustomAttributes:GiftCardType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PII:CustomAttributes:GiftCardType"),null).equals(context.getFormattedValue("PHYSICAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
			<% {out.write(localizeISText("ShowPIIMini.GiftCard","",null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } else { %>
			<% {out.write(localizeISText("ShowPIIMini.GiftCardCertificate","",null,null,null,null,null,null,null,null,null,null,null));} %>
		<% }} %>
	</span> <% {String value = null;try{value=context.getFormattedValue(getObject("truncatedGiftCardNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>	
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PaymentDisplayMode"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>

	
	
	
	
	
	<div class="ish-giftCardList-number">
		<% {out.write(localizeISText("checkout.payment.giftcard.card_and_certificate","",null,null,null,null,null,null,null,null,null,null,null));} %> 
		<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
	</div>
	
	<div class="ish-giftCardList-total">
		<span class="ish-label-xs"><% {out.write(localizeISText("ShowPIIMini.Applied.ish","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentTotalAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
	</div>
<% } %>
<% printFooter(out); %>