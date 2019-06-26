<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.mvc.capi.catalog.Catalog,
	com.intershop.component.mvc.capi.catalog.MVCatalogMgr,
	com.intershop.beehive.xcs.capi.catalog.CatalogMgr,
	com.intershop.beehive.xcs.capi.catalog.CatalogCategory,
	com.intershop.beehive.core.capi.domain.Domain,
	com.intershop.beehive.core.capi.naming.NamingMgr,
	com.intershop.beehive.core.capi.localization.LocaleInformation,
	com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
	java.util.HashMap,
	java.util.Iterator,
	java.util.Map"%> 
<%!
	CatalogMgr catalogMgr = (CatalogMgr)NamingMgr.getInstance().
		lookupManager(CatalogMgr.REGISTRY_NAME);
	MVCatalogMgr mvCatalogMgr = (MVCatalogMgr)NamingMgr.getInstance().
		lookupManager(MVCatalogMgr.REGISTRY_NAME);
			
	Catalog getCatalog(CatalogCategory catalogCategory, Domain catalogOwningDomain)
	{
		return catalogOwningDomain != null ?
			mvCatalogMgr.getCatalog(catalogOwningDomain, catalogCategory.getDomain()) : 
			mvCatalogMgr.getCatalogByCatalogDomain(catalogCategory.getDomain());
	}

	String getCatalogCategoryPath(CatalogCategory catalogCategory, Domain catalogOwningDomain)
	{
		LocaleInformation locale = 
			(LocaleInformation)getObject("CurrentSession:Locale");
		StringBuilder path = new StringBuilder();

		for (Iterator<?> i = catalogMgr.createCatalogCategoriesPathIterator(catalogCategory); i.hasNext(); )
		{
			CatalogCategory cc = (CatalogCategory)i.next();
			String displayName = cc.isRootCategory() ?
				getCatalog(cc, catalogOwningDomain).getDisplayName(locale) : cc.getDisplayName(locale);
			displayName = displayName != null ? displayName :
				cc.isRootCategory() ? getCatalog(cc, catalogOwningDomain).getDisplayName() : cc.getDisplayName();
			path = path.append(displayName);

			if (i.hasNext()) 
			{ 
				path = path.append(" / ");
			}
		}

		return path.toString();
	}
%><%
	out.print(getCatalogCategoryPath((CatalogCategory)getObject("category"), (Domain)getObject("catalogowningdomain")));
%><% printFooter(out); %>