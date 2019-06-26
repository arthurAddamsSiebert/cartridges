<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<enfinity
    xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/7.1/xcs/impex catalog.xsd
    	http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd"
    xmlns="http://www.intershop.com/xml/ns/enfinity/7.1/xcs/impex"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
    major="6" minor="1" family="enfinity" branch="enterprise" build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<% context.setCustomTagTemplateName("product","inc/Product",false,new String[]{"product"},null); %>
<% context.setCustomTagTemplateName("producttype","inc/ProductType",false,new String[]{"producttype"},null); %>
<% context.setCustomTagTemplateName("catalogcategory","inc/CatalogCategory",false,new String[]{"catalogcategory"},null); %>
<% context.setCustomTagTemplateName("variationtype","inc/VariationType",false,new String[]{"variationtype"},null); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("exportObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>

    <%
        java.util.Iterator objects = (java.util.Iterator) getObject("exportObjects");

        while (objects instanceof com.intershop.beehive.foundation.util.ResettableIterator)
        {
            objects = ((com.intershop.beehive.foundation.util.ResettableIterator) objects).toSequence();
        }

        while (objects.hasNext())
        {
            Object object = objects.next();

            getPipelineDictionary().put("object", object);

            if (object instanceof com.intershop.beehive.xcs.capi.product.Product)
            {
                %>

                <% processOpenTag(response, pageContext, "product", new TagParameter[] {
new TagParameter("product",getObject("object"))}, 43); %>

                <%
            }
            else if (object instanceof com.intershop.beehive.xcs.capi.catalog.CatalogCategory)
            {
                %>

                <% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("catalogcategory",getObject("object"))}, 51); %>

                <%
            }
            else if (object instanceof com.intershop.beehive.xcs.capi.producttype.ProductType)
            {
                %>

                <% processOpenTag(response, pageContext, "producttype", new TagParameter[] {
new TagParameter("producttype",getObject("object"))}, 59); %>

                <%
            }
            else if (object instanceof com.intershop.beehive.xcs.capi.productvariation.VariationType)
            {
                %>

                <% processOpenTag(response, pageContext, "variationtype", new TagParameter[] {
new TagParameter("variationtype",getObject("object"))}, 67); %>

                <%
            }
        }
    %>
<% } %>
</enfinity>
<% printFooter(out); %>