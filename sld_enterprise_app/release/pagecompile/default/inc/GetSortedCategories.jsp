<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogCategory"%>
<%@page import="com.intershop.component.foundation.internal.iterator.ComparatorAdapter"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	Collection<CatalogCategory> categories = getPipelineDictionary().get("CategoriesCollection");
	if (categories != null && (categories.size() > 0))
	{
	    String sortAttribute = getPipelineDictionary().get("SortAttribute");
	    if (sortAttribute == null || (sortAttribute.isEmpty()))
	    {
	        sortAttribute = "Name";
	    }
	    
	    String sortDirection = getPipelineDictionary().get("SortDirection");
	    boolean sortOrder = false;
	    // if sort direction is NOT defined OR sort direction is NOT [asc, desc], then set default sort direction
	    if (sortDirection == null || (!sortDirection.equals("asc") && !sortDirection.equals("desc")))
	    {
	        sortDirection = "asc";
	    }
	    
	    if ("asc".equals(sortDirection))
	    {
	        sortOrder = true;
	    }
	    
	    ComparatorAdapter comparator = new ComparatorAdapter(sortAttribute, sortOrder);
		List<CatalogCategory> subCategoriesList = new ArrayList<CatalogCategory>(categories);
	    Collections.sort(subCategoriesList, comparator);
	    getPipelineDictionary().put("SortedCategories", subCategoriesList);
	}
	else
	{
	    getPipelineDictionary().put("SortedCategories", Collections.emptyList());
	}
%><% printFooter(out); %>