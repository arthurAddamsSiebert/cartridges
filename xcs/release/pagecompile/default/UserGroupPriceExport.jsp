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
    major="6" minor="1" family="enfinity" branch="enterprise" build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<%@page import="com.intershop.beehive.xcs.capi.product.*,
	com.intershop.beehive.xcs.capi.price.*,
	java.util.Iterator" %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("exportObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
<%
    java.util.Iterator objects = (java.util.Iterator) getObject("exportObjects");

    while (objects instanceof com.intershop.beehive.foundation.util.ResettableIterator)
    {
      objects = ((com.intershop.beehive.foundation.util.ResettableIterator) objects).toSequence();
    }

    while (objects.hasNext())
    {
        getPipelineDictionary().put("product", objects.next());

        if (getObject("ExportRefIDs") == null)
        {
            getPipelineDictionary().put("ExportRefIDs", Boolean.TRUE);
        }
        else if (!(getObject("ExportRefIDs") instanceof Boolean))
        {
            getPipelineDictionary().put("ExportRefIDs", new Boolean((String) getObject("ExportRefIDs")));
        }

        if (getObject("ExportDomainRefs") == null)
        {
            getPipelineDictionary().put("ExportDomainRefs", Boolean.TRUE);
        }
        else if (!(getObject("ExportDomainRefs") instanceof Boolean))
        {
            getPipelineDictionary().put("ExportDomainRefs", new Boolean((String) getObject("ExportDomainRefs")));
        }


        ProductPriceMgr priceManager     = (ProductPriceMgr) getObject("PriceManager");
        Product         product          = (Product)         getObject("product");
        Iterator        ugs              = priceManager.createUserGroupPricesIterator(product.getProductRef());
        boolean         exportDomainRefs = ((Boolean) getObject("ExportDomainRefs")).booleanValue();

        while(ugs.hasNext())
        {
            UserGroupPrice ugp = (UserGroupPrice) ugs.next();

            String domainAttribute = (exportDomainRefs) ? " user-group-domain = \"" + stringToXml(ugp.getUserGroupDomainName()) + '"' : "";

            out.println("<user-group-price sku=\""+
                         ugp.getProductRefSKU()+
                         "\" user-group-id = \"" +
                         ugp.getUserGroupID() + '"' +
                         domainAttribute +
                         " currency=\""+
                         ugp.getCurrency()+
                         "\">");

            String value = ugp.getValue().toString();

            if (value != null)
            {
                    if (ugp.isNetPrice())
                    {
                            out.println(" <price net-price=\"1\">"+value+"</price>");
                    }
                    else
                    {
                            out.println(" <price net-price=\"0\">"+value+"</price>");
                    }
                    out.println();
            }

            out.println("</user-group-price>");
       }
    }
%>
<% } %>
</enfinity>
<% printFooter(out); %>