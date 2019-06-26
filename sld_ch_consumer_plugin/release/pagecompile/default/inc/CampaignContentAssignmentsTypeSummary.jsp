<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.marketing.capi.campaign.Campaign"%>
<%@page import="com.intershop.component.pmc.capi.pagelet.assignment.PageletUserGroupAssignment"%>
<%@page import="java.util.Iterator"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ViewCampaignAssignments_52-GetAssignedObjects",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CampaignUUID",getObject("Campaign:UUID")))).addParameter(new ParameterEntry("ChannelRepositoryDomain",getObject("ChannelRepository:Domain")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><%
	int countPromos=0;
	int countPages=0;
	int countComponents=0;
	
	Campaign campaign = (Campaign) getObject("Campaign");
	if (campaign != null) countPromos = campaign.getPromotionsCount();
	
	Iterator<PageletUserGroupAssignment> it = (Iterator)getObject("resultDict:ContentAssignments");
	while (it.hasNext()) {
		PageletUserGroupAssignment pa = (PageletUserGroupAssignment) it.next();
		if (pa.getPagelet().isPage()) 
			countPages++; 
		else 
			countComponents++; 
	}
	
	if (countPromos > 0) out.write( countPromos + (countPromos > 1 ? " Promotions" : " Promotion") + "<br/>");
	if (countPages > 0) out.write( countPages + " Page" + (countPages > 1 ? " Variants" : " Variant") + "<br/>");
	if (countComponents > 0) out.write( countComponents + (countComponents > 1 ? " Components" : " Components") + "<br/>");
	if (countPromos == 0) if (countPages == 0) if (countComponents == 0) out.write("&nbsp;");
	
%><% printFooter(out); %>