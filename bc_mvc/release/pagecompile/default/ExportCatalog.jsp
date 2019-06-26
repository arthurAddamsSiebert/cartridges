<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"ExportCatalogHeader", null, "4");} %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% context.setCustomTagTemplateName("product","inc/Product",false,new String[]{"product","outboundproductflag"},null); %>
	<% context.setCustomTagTemplateName("producttype","inc/ProductType",false,new String[]{"producttype"},null); %>
	<% context.setCustomTagTemplateName("catalogcategory","inc/CatalogCategory",false,new String[]{"catalogcategory"},null); %>
	<% context.setCustomTagTemplateName("variationtype","inc/VariationType",false,new String[]{"variationtype"},null); %>
	<%
		com.intershop.beehive.core.capi.pipeline.PipelineDictionary dict = getPipelineDictionary();
		java.util.Iterator iter = (java.util.Iterator) getObject("Objects");
	%>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
		<%
			while (iter instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				iter = ((com.intershop.beehive.foundation.util.ResettableIterator) iter).toSequence();
			}
		%>
	<% } %>
	<%
	while (iter.hasNext())
	{
		java.lang.Object object = iter.next();
		dict.put("object", object);

		if (object instanceof com.intershop.component.mvc.internal.syndication.OutboundProductImpl)
		{
			%><% processOpenTag(response, pageContext, "product", new TagParameter[] {
new TagParameter("product",getObject("object")),
new TagParameter("outboundproductflag","true")}, 31); %><%
		}
		else if (object instanceof com.intershop.beehive.xcs.capi.product.Product)
		{
			%><% processOpenTag(response, pageContext, "product", new TagParameter[] {
new TagParameter("product",getObject("object")),
new TagParameter("outboundproductflag","false")}, 35); %><%
		}
		else if (object instanceof com.intershop.beehive.xcs.capi.producttype.ProductType)
		{
			%><% processOpenTag(response, pageContext, "producttype", new TagParameter[] {
new TagParameter("producttype",getObject("object"))}, 39); %><%
		}
		else if (object instanceof com.intershop.beehive.xcs.capi.catalog.CatalogCategory)
		{
			%><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("catalogcategory",getObject("object"))}, 43); %><%
		}
		else if (object instanceof com.intershop.beehive.xcs.capi.productvariation.VariationType)
		{
			%><% processOpenTag(response, pageContext, "variationtype", new TagParameter[] {
new TagParameter("variationtype",getObject("object"))}, 47); %><%
		}
	}
	%>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"DefaultExportFooter", null, "53");} %>
<% } %>
<% printFooter(out); %>