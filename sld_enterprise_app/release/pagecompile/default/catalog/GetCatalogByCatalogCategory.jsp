<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogCategory,
	com.intershop.beehive.core.capi.domain.Domain,
	com.intershop.beehive.core.capi.naming.NamingMgr,
	com.intershop.component.mvc.capi.catalog.Catalog,
	com.intershop.component.mvc.capi.catalog.MVCatalogMgr" %><%!
	MVCatalogMgr catalogMgr = (MVCatalogMgr)NamingMgr.getInstance().
		lookupManager(MVCatalogMgr.REGISTRY_NAME);
	
	Catalog getCatalog(CatalogCategory category)
	{
		return catalogMgr.getCatalogByCatalogDomain(category.getDomain());
	}
	
	Catalog getCatalog(Domain owningDomain, CatalogCategory category)
	{
		return catalogMgr.getCatalog(owningDomain, category.getDomain());
	}	
%><%
	CatalogCategory category = (CatalogCategory)getObject("category");
	String catalogAlias = (String)getObject("catalogalias");
	Domain owningDomain = (Domain)getObject("owningdomain");
	getPipelineDictionary().put(catalogAlias,
		owningDomain != null ? getCatalog(owningDomain, category) : getCatalog(category));
%><% printFooter(out); %>