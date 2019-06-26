<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>	
	<CATALOG_STRUCTURE type="root">
		<GROUP_ID>1</GROUP_ID>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","GROUP_NAME")}, 5); %>
		<PARENT_ID>0</PARENT_ID>
	</CATALOG_STRUCTURE>	
<% } else { %>
	<%--
		It may be possible that there are categories that are not root, have no parent category but
		are in the domain of the catalog. They have to be ignored here, otherwise they would cause trouble.
	--%>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Category:Parent")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Category:Parent:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
	<CATALOG_STRUCTURE type="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:SubCategoriesCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>leaf<% } else { %>node<% } %>">
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Name"),
new TagParameter("localized","false"),
new TagParameter("element","GROUP_ID")}, 15); %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:DisplayName(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","GROUP_NAME")}, 17); %>
		<% } else { %>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Name"),
new TagParameter("localized","false"),
new TagParameter("element","GROUP_NAME")}, 19); %>
			<%
			  Logger.warn(this, "Category:DisplayName is null. Used Category:Name instead.");
			 %>			
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:Parent:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
			<PARENT_ID>1</PARENT_ID>
		<% } else { %>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Parent:Name"),
new TagParameter("localized","false"),
new TagParameter("element","PARENT_ID")}, 27); %>	
		<% } %>
		<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("objectpath","Category:Position"),
new TagParameter("localized","false"),
new TagParameter("optional","true"),
new TagParameter("style","integer"),
new TagParameter("element","GROUP_ORDER")}, 29); %>
	</CATALOG_STRUCTURE>
	<% } %>
<% } %>
<% printFooter(out); %>