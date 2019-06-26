<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import="com.intershop.beehive.core.internal.domain.ApplicationPO"%>
<%@page import="com.intershop.beehive.core.capi.domain.Domain"%>

<%
	PipelineDictionary dictionary = getPipelineDictionary();
	ApplicationPO app = AppContextUtil.getCurrentAppContext().getVariable("Application");
	Domain domain = app.getDomain();
	dictionary.put("domain", domain);
%>

<% context.setCustomTagTemplateName("getrecommrequests","inc/GetRecommRequests.isml",false,new String[]{"domain","requestType"},null); %>

<% context.setCustomTagTemplateName("getactiverecommservices","inc/GetActiveRecommServices.isml",false,new String[]{"domain"},null); %>

<% processOpenTag(response, pageContext, "getactiverecommservices", new TagParameter[] {
new TagParameter("domain",getObject("domain"))}, 26); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RecommServices") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
<% while (loop("RecommServices","RecommService",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RecommService:Capabilities:ShopRecommModulesIncludeTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("RecommService:Capabilities:ShopRecommModulesIncludeTemplate"),null), null, "30");} %>
	<% } %>
<% } %>
<% } %>




<% context.setCustomTagTemplateName("productrecommrequest","inc/ProductRecommRequest.isml",false,new String[]{"TemplateName","ItemIDs","UserID","MaxRecommendations","ResponseHandlerMethod","ResponseType","Execute"},null); %>

<% context.setCustomTagTemplateName("basketrecommrequest","inc/BasketRecommRequest.isml",false,new String[]{"TemplateName","ItemIDs","UserID","MaxRecommendations","ResponseHandlerMethod","ResponseType","Execute"},null); %>

<% context.setCustomTagTemplateName("searchrecommrequest","inc/SearchRecommRequest.isml",false,new String[]{"TemplateName","SearchTerm","UserID","MaxRecommendations","ResponseHandlerMethod","ResponseType","Execute"},null); %>

<% context.setCustomTagTemplateName("userrecommrequest","inc/UserRecommRequest.isml",false,new String[]{"TemplateName","UserID","MaxRecommendations","ResponseHandlerMethod","ResponseType","Execute"},null); %>

<% context.setCustomTagTemplateName("topsellerrecommrequest","inc/TopsellerRecommRequest",false,new String[]{"TemplateName","UserID","MaxRecommendations","ResponseHandlerMethod","ResponseType","Execute"},null); %>
<% printFooter(out); %>