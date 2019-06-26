<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.adapter.payment.std.internal.directdebit.BankingInformationSEPA"%>
<%@page import="com.intershop.component.payment.capi.PaymentInstrumentInfoBO"%>
<%@page import="com.intershop.beehive.bts.capi.payment.PaymentInstrumentInfo"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%
	PipelineDictionary dict = getPipelineDictionary();
	PaymentInstrumentInfoBO pii = (PaymentInstrumentInfoBO) dict.get("PIIBO");
	String iban = "";
	
	if (pii != null)
	{
	    BankingInformationSEPA info = pii.getConfiguration(pii.getPaymentService().getPaymentParameterDefinitions());
		if (info != null)
		{
		    iban = info.getIBAN();
		    iban = iban.replaceAll(" ", "");
		}
	
		if ( null != iban && iban.length()>4){
		    
			dict.put("ccEndString", iban.substring(iban.length()-4));
		}
	}
%>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("short",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
	<% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:AccountHolder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> xxxxxxxxxxxx<% {String value = null;try{value=context.getFormattedValue(getObject("ccEndString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
<% } %>



<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PaymentDisplayMode"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>

	<table class="attributes" summary="This table shows details of your selected bank account.">
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.AccountHolder.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value"><% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:AccountHolder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.AccountNumber.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value">xxxxxxxxxxxx<% {String value = null;try{value=context.getFormattedValue(getObject("ccEndString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.BankCode.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value"><% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:BankCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>   
	</table>
	
<% } %><% printFooter(out); %>