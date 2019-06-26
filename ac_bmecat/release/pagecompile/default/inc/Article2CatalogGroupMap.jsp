<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% while (loop("Product:CatalogCategoriesIterator","PCA",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PCA:Domain:UUID"),null).equals(context.getFormattedValue(getObject("Catalog:CatalogDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
		<ARTICLE_TO_CATALOGGROUP_MAP>
			<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","32"),
new TagParameter("objectpath","Product:SKU"),
new TagParameter("element","ART_ID")}, 5); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PCA:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
				<CATALOG_GROUP_ID>1</CATALOG_GROUP_ID>
			<% } else { %>
				<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","PCA:Name"),
new TagParameter("element","CATALOG_GROUP_ID")}, 9); %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PCA:Position")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","PCA:Position"),
new TagParameter("style","integer"),
new TagParameter("optional","false"),
new TagParameter("element","ARTICLE_TO_CATALOGGROUP_MAP_ORDER")}, 12); %>
			<% } %>
		</ARTICLE_TO_CATALOGGROUP_MAP>
	<% } %>
<% } %><% printFooter(out); %>