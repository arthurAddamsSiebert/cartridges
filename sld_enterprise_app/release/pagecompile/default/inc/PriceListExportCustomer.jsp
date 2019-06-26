<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.product.pricing.capi.PriceListBOCustomerExtension"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceListBORepository"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceListBO"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceList"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%
	PriceList priceList = getPipelineDictionary().get("pricelist");
	ApplicationBO appBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
	PriceListBORepository priceListBORepository = appBO.getRepository("PriceListBORepository");
	PriceListBO priceListBO = priceListBORepository.getPriceListBOByID(priceList.getUUID());
	PriceListBOCustomerExtension customerExtension = priceListBO.getExtension(PriceListBOCustomerExtension.class);
		
	getPipelineDictionary().put("CustomerExtension", customerExtension);
%>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerExtension:CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
	<customers>
	<% while (loop("CustomerExtension:CustomerBOs","CustomerBO",null)) { %>
		<customer id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<% } %>
	</customers>
<% } %><% printFooter(out); %>