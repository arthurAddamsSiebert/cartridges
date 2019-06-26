<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.foundation.capi.assignment.AssignmentStrategy"%>
<%@page import="com.intershop.component.foundation.capi.assignment.AssignmentLookupStrategy"%>
<%@page import="com.intershop.component.foundation.capi.assignment.Assignment"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.PageletEntryPoint"%>
<%@page import="com.intershop.beehive.xcs.capi.product.Product"%>
<%@page import="com.intershop.component.mvc.capi.catalog.Repository"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignmentStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("ToClass","com.intershop.beehive.xcs.capi.product.Product"),
new TagParameter("FromClass","com.intershop.component.pmc.capi.pagelet.PageletEntryPoint"),
new TagParameter("Domain",getObject("ContentRepository:RepositoryDomain"))}, 8); %><%
    PageletEntryPoint pep = (PageletEntryPoint)getObject("PageletEntryPoint");
    AssignmentStrategy strategy = (AssignmentStrategy)getObject("AssignmentStrategy");
    Repository repository = (Repository)getObject("ContentRepository");
    if (pep != null && repository!= null)
    {
        AssignmentLookupStrategy<PageletEntryPoint,Product> lookup = strategy.getAssignmentLookupStrategy(pep, (Product)null);
        lookup.setSearchParameterDomain(repository.getRepositoryDomain());
        Assignment<PageletEntryPoint, Product> assignment = lookup.getAssignment();
        if (assignment != null)
        {
            getPipelineDictionary().put("PageletEntryPointProductAssignment", assignment);
        }
    }
%><% printFooter(out); %>