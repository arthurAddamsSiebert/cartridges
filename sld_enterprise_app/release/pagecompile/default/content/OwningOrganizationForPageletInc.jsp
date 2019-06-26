<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %><%@page import="com.intershop.beehive.core.capi.domain.Domain,
	com.intershop.beehive.core.capi.domain.DomainMgr,
	com.intershop.beehive.core.capi.naming.NamingMgr,
	com.intershop.component.pmc.capi.pagelet.Pagelet,
	com.intershop.component.pmc.capi.pagelet.PageletEntryPoint,
	com.intershop.component.mvc.capi.catalog.Repository,
	com.intershop.component.mvc.capi.catalog.MVCatalogMgr,
	com.intershop.component.organization.capi.Organization,
	com.intershop.component.organization.capi.OrganizationStructureMgr" %><%

Pagelet pagelet = (Pagelet)getObject("Pagelet");
PageletEntryPoint pageletentrypoint = (PageletEntryPoint)getObject("PageletEntryPoint");
Domain domain = null;
if (pagelet != null)
{
	domain = pagelet.getDomain();
} 
else if (pageletentrypoint != null)
{
	domain = pageletentrypoint.getDomain();
}
if (domain != null)
{
	MVCatalogMgr mgr = (MVCatalogMgr)NamingMgr.getInstance().lookupManager(MVCatalogMgr.REGISTRY_NAME);
	DomainMgr domainMgr = NamingMgr.getManager(DomainMgr.class);
	if (domainMgr.getSystemDomain().equals(domain) == false)
	{
		Repository repository = mgr.getRepositoryByRepositoryDomain(domain);
		OrganizationStructureMgr orgStructMgr = (OrganizationStructureMgr)NamingMgr.getInstance().lookupManager(OrganizationStructureMgr.REGISTRY_NAME);
		Organization organization = orgStructMgr.getOrganizationByOrganizationDomain(repository.getOwningDomain());
		out.print(organization.getDisplayName());
	}
}
%><% printFooter(out); %>