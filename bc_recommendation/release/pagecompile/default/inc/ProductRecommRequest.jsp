<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.beehive.core.internal.domain.ApplicationPO"%>
<%@page import="com.intershop.component.service.capi.ServiceMgr"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.domain.Domain"%>

<%
	PipelineDictionary dict = getPipelineDictionary();
	dict.put("requestType", com.intershop.component.marketing.capi.recommendation.request.ProductRecommRequestAdapter.class);
	
	ServiceMgr serviceMgr = NamingMgr.getManager(ServiceMgr.class);
	ApplicationPO app = AppContextUtil.getCurrentAppContext().getVariable("Application");
	Domain domain = app.getDomain();
	dict.put("Domain", domain);
%>
<% processOpenTag(response, pageContext, "getrecommrequests", new TagParameter[] {
new TagParameter("requestType",getObject("requestType")),
new TagParameter("domain",getObject("Domain"))}, 20); %>
<% while (loop("RecommRequests","RecommRequest",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RecommRequest:RenderTemplate")))).booleanValue() && ((Boolean) getObject("RecommRequest:Enabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("RecommRequest:RenderTemplate"),null), null, "23");} %>
	<% } %>
<% } %><% printFooter(out); %>