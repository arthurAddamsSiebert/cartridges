<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.google.common.collect.ListMultimap"%>
<%@page import="com.intershop.component.pmc.capi.model.PageletModelRepository"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.util.Iterator,
	java.io.IOException,
	com.intershop.beehive.core.capi.domain.Domain,
	com.intershop.component.pmc.capi.model.PageletModelRepository,
	com.intershop.component.pmc.internal.pagelet.PageletPO,
	com.intershop.component.pmc.internal.pagelet.PageletEntryPointPO,
	com.intershop.component.pmc.internal.viewcontext.ViewContextPO,
	com.intershop.component.pmc.internal.impex.PackageConstants,
	com.intershop.component.pmc.internal.impex.export.XmlSerializer,
	com.intershop.component.pmc.internal.impex.query.PageletExportResultMapper" %>
<enfinity 
	xmlns="<%=PackageConstants.NAMESPACE_URI%>"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="<%=PackageConstants.NAMESPACE_URI%> bc_pmc.xsd
	   http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd">
		
<%	
	Iterator<?> objects = (Iterator<?>)getObject("Objects");
	
	while (objects instanceof com.intershop.beehive.foundation.util.ResettableIterator)
	{
		objects = ((com.intershop.beehive.foundation.util.ResettableIterator)objects).toSequence();
	}
	
	ListMultimap<Set<String>, String> auditInformations = (ListMultimap<Set<String>, String>)getObject("AuditInformations");
	
	if (objects != null)
	{
		Domain contentRepositoryDomain = (Domain)getObject("ContentRepositoryDomain");
		PageletModelRepository pageletModelRepository = (PageletModelRepository)getObject("PageletModelRepository");
		XmlSerializer xs = new XmlSerializer(pageletModelRepository, contentRepositoryDomain, out, (String)getObject("SelectedExportMode"));		

		while (objects.hasNext())
		{
			Object object = objects.next();
	
			if (object instanceof PageletExportResultMapper)
			{
				PageletExportResultMapper perm = (PageletExportResultMapper)object;
				
				if (perm.isPageletEntryPoint())
				{
					xs.printPageletEntryPoint(perm.getPageletEntryPoint(),auditInformations);	
				}
				else if (perm.isPagelet())
				{
					xs.printPagelet(perm.getPagelet(),auditInformations);	
				}
				else if (perm.isViewContext())
				{
				    xs.printViewContext(perm.getViewContext(),auditInformations);
				}
			}
			else if (object instanceof PageletEntryPointPO)
			{
				xs.printPageletEntryPoint((PageletEntryPointPO)object,auditInformations);
			}
			else if (object instanceof PageletPO)
			{
				xs.printPagelet((PageletPO)object,auditInformations);
			}
			else if (object instanceof ViewContextPO)
			{
			    xs.printViewContext((ViewContextPO)object,auditInformations);
			}
		}
	}
%>

</enfinity><% printFooter(out); %>