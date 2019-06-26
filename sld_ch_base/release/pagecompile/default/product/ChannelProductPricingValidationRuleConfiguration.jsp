<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.currency.Currency"%>
<%@page import="com.intershop.beehive.core.capi.currency.CurrencyMgr"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.intershop.component.product.validation.capi.config.ValidationRuleConfigurationBO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collection"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="application/json;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("application/json"); %><%
	CurrencyMgr currencyMgr;

	Collection<String> currenciesCfg = new ArrayList<String>();
	ValidationRuleConfigurationBO validationRuleConfigurationBO = (ValidationRuleConfigurationBO) getPipelineDictionary().get("ValidationRuleConfigurationBO");
	String currenciesAttr = validationRuleConfigurationBO.getConfiguration().getString("Currencies");
	if (currenciesAttr != null && !currenciesAttr.isEmpty())
	{
	    String[] currencyIDs = currenciesAttr.split(",");
		if (currencyIDs.length > 0)
		{
		    currencyMgr = NamingMgr.getManager(CurrencyMgr.class);
		    for (int i = 0; i < currencyIDs.length; i++)
			{
				String currencyID = currencyIDs[i];
				Currency currency = currencyMgr.getCurrency(currencyID);
				String currencyName = currency.getCurrencyName();
				currenciesCfg.add(currencyID + ':' + currencyName);
			}
		}
	}
	getPipelineDictionary().put("CurrenciesInformation", currenciesCfg);
%>
{
"Prices" : [
"<% {String value = null;try{value=context.getFormattedValue(getObject("ValidationRuleConfigurationBO:Configuration:String(\"Prices\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
],
"Currencies" : [
<% while (loop("CurrenciesInformation","CurrencyInformation",null)) { %>"<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyInformation"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("CurrencyInformation") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>,<% } %><% } %>
]
}<% printFooter(out); %>