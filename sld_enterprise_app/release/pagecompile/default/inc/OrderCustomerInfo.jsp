<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%@page import = "com.intershop.component.order.capi.OrderBO"%>
<%@page import = "com.intershop.beehive.bts.capi.orderprocess.fulfillment.Order"%>
<%@page import = "com.intershop.component.order.capi.extension.OrderBOCompanyCustomerExtension"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import = "com.intershop.component.application.capi.ApplicationBO"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBORepository"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBO"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBODetailsExtension"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBOCompanyCustomerExtension"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBOPrivateCustomerExtension"%>
<%@page import = "com.intershop.beehive.core.capi.domain.PersistentObjectBOExtension"%>
<%
	String buyerName = "";
	OrderBO orderBO = (OrderBO) getObject("orderBO");
	if (orderBO != null && (
	                (orderBO.getBuyerFirstName() != null && !orderBO.getBuyerFirstName().isEmpty()) || 
	                (orderBO.getBuyerLastName() != null && !orderBO.getBuyerLastName().isEmpty())))
    {
    	buyerName = orderBO.getBuyerFirstName() + " " + orderBO.getBuyerLastName();
    	
	    OrderBOCompanyCustomerExtension occe = orderBO.getExtension("CompanyCustomer");
		if (occe != null)
		{
		    buyerName = occe.getCompanyName() + " (" + buyerName + ")";
		}
	}
	else 
	{
		String customerID = ((Order)orderBO.getExtension(PersistentObjectBOExtension.class).getPersistentObject()).getCustomerID();
		if (customerID != null)
		{
 			ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
			CustomerBORepository repository = applicationBO.getRepository("CustomerBORepository");
		
			CustomerBO customer = repository.getCustomerBOByCustomerID(customerID);
			if (customer != null)
			{
				CustomerBODetailsExtension customerDetails = customer.getExtension("CompanyCustomer");
				if (customerDetails == null)
				{
					customerDetails = customer.getExtension("PrivateCustomer");
				}
		
				buyerName = customerDetails.getName();
			}
		} 
	}
	
	getPipelineDictionary().put("customer_name", buyerName);
%>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("customer_name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("current_channel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("permissions_map:SLD_VIEW_CONSUMERS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("orderBO:CustomerBO")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %> 
		
		<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCustomer_",null) + context.getFormattedValue(getObject("current_channel:TypeCode"),null) + context.getFormattedValue("-Show",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("orderBO:CustomerBO:ID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("customer_name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>	
	<% } else { %>
		
		<% {String value = null;try{value=context.getFormattedValue(getObject("customer_name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
	<% } %>					
<% } else { %>
	
	<% {String value = null;try{value=context.getFormattedValue(getObject("orderBO:BuyerFirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("orderBO:BuyerLastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
<% } %><% printFooter(out); %>