<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.product.pricing.internal.customer.segment.PriceListBOCustomerSegmentAssignmentExtension"%>
<%@page import="com.intershop.component.customer.capi.CustomerSegmentBO"%>
<%@page import="java.util.Collection"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceListBO"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.RepositoryBOPriceListExtension"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceListBORepository"%>
<%@page import="com.intershop.component.repository.capi.BusinessObjectRepositoryContext"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.beehive.app.capi.AppContext"%>
<%@page import="com.intershop.component.pricing.capi.pricelist.PriceList"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	PriceList priceList = getPipelineDictionary().get("pricelist");
	
	AppContext appContext = AppContextUtil.getCurrentAppContext();
	BusinessObjectRepositoryContext boRepositoryContext = appContext.getVariable(BusinessObjectRepositoryContext.CURRENT);
	PriceListBORepository priceListBORepo = boRepositoryContext.getRepository(RepositoryBOPriceListExtension.EXTENSION_ID);
	PriceListBO priceListBO = priceListBORepo.getPriceListBOByID(priceList.getUUID());
	PriceListBOCustomerSegmentAssignmentExtension ext = priceListBO.getExtension(PriceListBOCustomerSegmentAssignmentExtension.EXTENSION_ID);
	Collection<CustomerSegmentBO> customerSegments = ext.getCustomerSegmentBOs();
	if (!customerSegments.isEmpty())
	{
    	out.println("<customer-segments>");
    
    	for (CustomerSegmentBO customerSegmentBO : customerSegments)
		{
	    	out.println("<customer-segment id=\"" + stringToXml(customerSegmentBO.getID()) + "\" repository-id=\"" + stringToXml(customerSegmentBO.getRepository().getRepositoryName()) + "\" />");
		}
    	out.println("</customer-segments>");
	}
%><% printFooter(out); %>