<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<% processOpenTag(response, pageContext, "placeholderpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("parametervalue7")),
new TagParameter("Placeholder",getObject("Placeholder")),
new TagParameter("ContextType",getObject("Placeholder:UUID")),
new TagParameter("parametervalue6",getObject("parametervalue6")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("parametername0")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("parametervalue0",getObject("parametervalue0")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername6",getObject("parametername6")),
new TagParameter("parametername7",getObject("parametername7"))}, 5); %>

<% processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 31); %>
<% {Object temp_obj = (getObject("PlaceholderUtils:PlaceholdersForPlaceholder(Placeholder,ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("PlaceholderPlaceholders", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PlaceholderPlaceholders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
	<% while (loop("PlaceholderPlaceholders","PlaceholderPlaceholder",null)) { %>
		<% processOpenTag(response, pageContext, "placeholderwithsubplaceholders", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("parametervalue7")),
new TagParameter("Placeholder",getObject("PlaceholderPlaceholder")),
new TagParameter("ContextType",getObject("Placeholder:UUID")),
new TagParameter("parametervalue6",getObject("parametervalue6")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("parametername0")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("parametervalue0",getObject("parametervalue0")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername6",getObject("parametername6")),
new TagParameter("parametername7",getObject("parametername7"))}, 35); %>
	<% } %>
<% } %><% printFooter(out); %>