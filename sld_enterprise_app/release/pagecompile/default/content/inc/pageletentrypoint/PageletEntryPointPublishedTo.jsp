<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.foundation.capi.assignment.AssignmentStrategy"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.PageletEntryPoint"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.Pagelet"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.assignment.PageletPageletEntryPointAssignment"%>
<%@page import="com.intershop.component.foundation.capi.assignment.AssignmentLookupStrategy"%>
<%@page import="com.intershop.component.foundation.capi.assignment.Assignment"%>
<%@page import="com.intershop.component.mvc.capi.catalog.Repository"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.common.Factory"%>
<%@page import="java.util.Collection,java.util.Iterator"%>
<%@page import="com.intershop.component.pmc.capi.sharing.ContentSharingHelper"%>
<%@page import="com.intershop.beehive.orm.capi.common.ORMHelper"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("ToClass","com.intershop.component.pmc.capi.pagelet.PageletEntryPoint"),
new TagParameter("FromClass","com.intershop.component.pmc.capi.pagelet.Pagelet"),
new TagParameter("Domain",getObject("ContentRepository:RepositoryDomain"))}, 15); %><% processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("ContentRepository:RepositoryDomain"))}, 16); %><%! 
    private String getDomainCondition(ContentSharingHelper sharingHelper)
    {
    	String domainUUIDCondition="";
    	Collection<String> domainUUIDs=sharingHelper.getDomainUUIDsAsSet();
    	Iterator<?> domainUUIDsIterator=domainUUIDs.iterator();
    	
    	while(domainUUIDsIterator.hasNext())
    	{
    		String domainUUID=(String)domainUUIDsIterator.next();
    		if(domainUUIDCondition!="")
    			domainUUIDCondition=domainUUIDCondition+",";
    		domainUUIDCondition=domainUUIDCondition+"'"+domainUUID+"'";
    	}
    	return domainUUIDCondition;
    }
%><%
    PageletEntryPoint pageletentrypoint = (PageletEntryPoint)getObject("PageletEntryPoint");
    AssignmentStrategy strategy = (AssignmentStrategy)getObject("AssignStrategy");
    Repository repository = (Repository)getObject("ContentRepository");
    ContentSharingHelper sharingHelper = (ContentSharingHelper)getObject("SharingHelper");
    if (pageletentrypoint != null && repository!= null)
    {
        Object args[]=new Object[1];
        args[0]=pageletentrypoint.getUUID();
        Class<? extends PageletPageletEntryPointAssignment> po=null;
        po=(Class<? extends PageletPageletEntryPointAssignment>)strategy.getAssignmentClassByTo(pageletentrypoint);
        Factory factory=NamingMgr.getInstance().lookupFactory(po);
        Collection<?> objs=factory.getObjectsBySQLJoin("pagelet p",
        "this.pageletid=p.uuid AND "+
        "this.entrypointid=? AND "+
        "this.domainid IN (" + getDomainCondition(sharingHelper) + ") AND "+
        "this.onlineflag = 1 AND "+
        "p.onlineflag = 1 ORDER BY "+
        "CASE WHEN this.validto is null then 2 else 1 END,"+
        "this.validto DESC"
        ,args);
        
        Iterator<?> validToDate_object=objs.iterator();
        if(validToDate_object.hasNext())
        {
        	PageletPageletEntryPointAssignment assignment=po.cast(validToDate_object.next());
        	getPipelineDictionary().put("MaxPublishedToDate", assignment.getValidTo());
        	ORMHelper.closeIterator(validToDate_object);
        }
    }
%><% printFooter(out); %>