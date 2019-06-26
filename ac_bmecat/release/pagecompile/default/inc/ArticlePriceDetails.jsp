<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% context.setCustomTagTemplateName("scaledprice","inc/ArticlePriceDetailsScaledPrice",false,new String[]{"scaledprice"},null); %>
<%@page import="java.util.*,
			com.intershop.beehive.xcs.capi.product.*,
			com.intershop.beehive.xcs.capi.price.*,
			com.intershop.beehive.core.capi.naming.*,
			com.intershop.component.pricing.capi.definition.*" %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
	<ARTICLE_PRICE_DETAILS>
	<% while (loop("Product:ListPrices","ListPrice",null)) { %>	
	    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BMEEnumChecker:isValidElement(\"bmecat\",\"dtCURRENCIES\",ListPrice:Currency)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
			<ARTICLE_PRICE price_type="net_list">
				<PRICE_AMOUNT><% {String value = null;try{value=context.getFormattedValue(getObject("ListPrice:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></PRICE_AMOUNT>
				<PRICE_CURRENCY><% {String value = null;try{value=context.getFormattedValue(getObject("ListPrice:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></PRICE_CURRENCY>
				<LOWER_BOUND>1</LOWER_BOUND>
			</ARTICLE_PRICE>
		<% } %>
	<% } %>
	</ARTICLE_PRICE_DETAILS>
<% } %>

<%
	PriceDefinitionMgr priceDefMgr = 
		(PriceDefinitionMgr)NamingMgr.getInstance().
			lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
	Product product = (Product)getObject("Product");
	getPipelineDictionary().put("ScaledProductListPrices",
		priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
	getPipelineDictionary().put("ScaledProductGroupPrices",
		priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));
%>
<% while (loop("ScaledProductListPrices","ScaledPrice",null)) { %>
	<% processOpenTag(response, pageContext, "scaledprice", new TagParameter[] {
new TagParameter("scaledprice",getObject("ScaledPrice"))}, 33); %>
<% } %>
<% while (loop("ScaledProductGroupPrices","ScaledPrice",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ScaledPrice:UserGroup:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("BuyingOrganization:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "scaledprice", new TagParameter[] {
new TagParameter("scaledprice",getObject("ScaledPrice"))}, 37); %>
	<% } %>
<% } %><% printFooter(out); %>