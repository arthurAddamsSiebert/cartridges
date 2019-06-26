<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.app.capi.AppContext"%>
<%@page import="java.util.Collection"%>
<%@page import="com.intershop.component.customer.catalog.filter.capi.CatalogFilterBOCustomerSegmentAssignmentExtension"%>
<%@page import="com.intershop.component.mvc.capi.filter.CatalogFilterBO"%>
<%@page import="com.intershop.component.mvc.capi.filter.RepositoryBOCatalogFilterExtension"%>
<%@page import="com.intershop.component.mvc.capi.filter.CatalogFilterBORepository"%>
<%@page import="com.intershop.component.repository.capi.BusinessObjectRepositoryContext"%>
<%@page import="com.intershop.component.mvc.capi.filter.CatalogFilter"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.component.customer.capi.CustomerSegmentBO"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%
	CatalogFilter filter = getPipelineDictionary().get("filter");

    AppContext appContext = AppContextUtil.getCurrentAppContext();
	BusinessObjectRepositoryContext boRepositoryContext = appContext.getVariable(BusinessObjectRepositoryContext.CURRENT);
	CatalogFilterBORepository cfRepo = boRepositoryContext.getRepository(RepositoryBOCatalogFilterExtension.EXTENSION_ID);
	CatalogFilterBO catalogFilterBO = cfRepo.getCatalogFilterBOByID(filter.getUUID());
	CatalogFilterBOCustomerSegmentAssignmentExtension ext = catalogFilterBO.getExtension(CatalogFilterBOCustomerSegmentAssignmentExtension.EXTENSION_ID);
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