<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "java.math.BigDecimal"%><%@page import = "com.intershop.beehive.foundation.quantity.Money"%><%@page import = "com.intershop.beehive.foundation.quantity.MoneyCalculator"%><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%
// get the input parameters
PipelineDictionary dict = getPipelineDictionary();

MoneyCalculator calc = MoneyCalculator.createLowPrecisionCalculator();
Money operand1 = (Money)dict.get("operand1");
Object operand2 = dict.get("operand2");
String method = (String)dict.get("method");

// set operand2 to zero money if operand2 is undefined
if(operand2==null)
{
	if(operand1!=null 
	&& !operand1.equals(Money.NOT_AVAILABLE))
	{
		operand2=Money.getZeroMoney(operand1.getCurrencyMnemonic());
	}
}

// do the calculation
Money calcResult = Money.NOT_AVAILABLE;
try
{
	if (method.equals("add"))
		calcResult = calc.add(operand1,(Money)operand2);
	else if (method.equals("subtract"))
		calcResult = calc.subtract(operand1,(Money)operand2);
	else if (method.equals("multiply"))
		calcResult = calc.multiply(operand1,(BigDecimal)operand2);
	else if (method.equals("divide"))
		calcResult = calc.divide(operand1,(BigDecimal)operand2);
}
catch(Exception ex)
{
}
// store the result
dict.put((String)dict.get("result"), calcResult);
%><% printFooter(out); %>