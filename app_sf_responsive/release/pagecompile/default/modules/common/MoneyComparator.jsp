<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import = "com.intershop.beehive.foundation.quantity.MoneyCalculator"%><%@page import = "com.intershop.beehive.foundation.quantity.Money"%><%@page import = "com.intershop.beehive.foundation.quantity.CurrencyException"%><%
    PipelineDictionary pipelineDictionary = getPipelineDictionary();
    
    MoneyCalculator calculator = MoneyCalculator.createLowPrecisionCalculator();
    
    String comparisonMethod = pipelineDictionary.get("method");
    if(comparisonMethod == null)
    {
    	throw new NullPointerException("The required attribute method is not provided");
    }
    
    Money operand1 = pipelineDictionary.get("operand1");
    if(operand1 == null)
    {
    	throw new NullPointerException("The required attribute operand1 is not provided");
    }
    
    Money operand2 = pipelineDictionary.get("operand2");
    if(operand2 == null)
    {
    	throw new NullPointerException("The required attribute operand2 is not provided");
    }
    
    boolean result = false;

    try
    {
        if (comparisonMethod.equals("lessThan"))
            result = calculator.isLessThan(operand1, operand2);
        else if (comparisonMethod.equals("greaterThan"))
            result = calculator.isGreaterThan(operand1, operand2);
    }
    catch(CurrencyException ex)
    {
        Logger.error(this, "CurrencyException is thrown during the comparison of two Money objects", ex);
    }

    String comparisonResultDictionaryKey = (String)pipelineDictionary.get("comparisonresult");
    pipelineDictionary.put(comparisonResultDictionaryKey, result);
%><% printFooter(out); %>