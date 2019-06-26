<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.mvc.capi.filter.CatalogFilter"%>
<%@page import="com.intershop.beehive.core.capi.domain.Application"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.beehive.core.capi.query.QueryContext"%>
<%@page import="com.intershop.component.customer.capi.CustomerBO"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.query.QueryMgr"%>
<%@page import="com.intershop.beehive.core.capi.query.Query"%>
<%@page import="com.intershop.beehive.core.capi.user.UserGroup"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%
	CatalogFilter filter = getPipelineDictionary().get("filter");
	QueryMgr queryMgr = NamingMgr.getManager(QueryMgr.class);
	
	UserGroup targetGroup = filter.getTargetGroup();
	if (targetGroup != null)
	{
	    Application currentApplication = AppContextUtil.getCurrentAppContext().getVariable(Application.CURRENT);
		Query query = queryMgr.loadQuery(currentApplication, "customer/GetTargetCustomers");
		query.setParameter("TargetGroupID", targetGroup.getID());
		query.setParameter("SortBy", "Customer");
		Iterator<CustomerBO> searchResult = queryMgr.executePageableQuery(query, new QueryContext());
		if (searchResult.hasNext())
		{
		    out.println("<customers>");
		    while (searchResult.hasNext())
			{
			    CustomerBO customerBO = searchResult.next();
			    out.println("<customer id=\"" + stringToXml(customerBO.getCustomerNo()) + "\"/>");
			}
		    out.println("</customers>");
		}
	}
%><% printFooter(out); %>