<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.app.capi.AppContext"%><%@page import="com.intershop.beehive.core.capi.domain.Application"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import="com.intershop.beehive.core.capi.domain.Domain"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="com.intershop.component.application.capi.ApplicationBO"%><%@page import="com.intershop.component.pmc.capi.pagelet.ContentSharingProvider"%><%@page import="com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension"%><%
	ContentSharingProvider provider = NamingMgr.getProvider(ContentSharingProvider.class);
	Domain contentDomain = (Domain)getObject("contentDomain");
    Application app = provider.getManagementApplicationByContentRepositoryDomain(contentDomain);

    AppContext appContext = AppContextUtil.getCurrentAppContext();
    ApplicationBO currentApplicationBO = appContext.getVariable(ApplicationBO.CURRENT);

	ApplicationBO appBO = currentApplicationBO.getRepository().getApplicationBOByID(app.getUUID());
	getPipelineDictionary().put("contentRepositoryDisplayName", appBO.getExtension(ApplicationBOApplicationSelectorExtension.class).getDisplayName());
%><% printFooter(out); %>