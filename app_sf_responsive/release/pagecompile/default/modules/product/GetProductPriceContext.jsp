<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.product.pricing.capi.DefaultProductPriceContextImpl"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.component.product.pricing.capi.ProductPriceContext"%>
<%@page import="com.intershop.component.product.capi.ProductBO"%>
<%@page import="com.intershop.component.address.capi.AddressBO"%>
<%@page import="com.intershop.component.customer.capi.CustomerBO"%>
<%@page import="com.intershop.component.user.capi.UserBO"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	PipelineDictionary dictionary = getPipelineDictionary();
	CustomerBO customerBO = dictionary.get("CustomerBO");
	UserBO userBO = dictionary.get("UserBO");
	boolean isAddressSpecificPrice = "true".equals(dictionary.get("AddressSpecificPrice"));
	AddressBO shipFrom = dictionary.get("ShipFromAddressBO");
	ProductBO contextProduct = dictionary.get("ContextProductBO");

  	ProductPriceContext productPriceContext = (new DefaultProductPriceContextImpl.Builder()).setCustomerBO(customerBO).setUserBO(userBO)
  	                .setShipFromAddressBO(shipFrom).setContextProductBO(contextProduct).setAddressSpecificPrice(isAddressSpecificPrice).build();
	
	getPipelineDictionary().put("ProductPriceContext", productPriceContext);
%><% printFooter(out); %>