<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>



<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>

<%@ page import = "com.intershop.beehive.xcs.capi.product.ProductAttributeEnumerationConstants,com.intershop.beehive.xcs.capi.productvariation.VariationType,java.util.Iterator,com.intershop.beehive.core.capi.domain.AttributeValue" %>
<%
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
%>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("variationtype"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>

    <variation-type<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("variationtype:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("variationtype:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">

        <name><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("variationtype:Name"),null)),null)%></name>
        <attribute-name><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("variationtype:AttributeName"),null)),null)%></attribute-name>
        
        <% while (loop("variationtype:AttributeValues","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name><% } %>
        <% } %>

        <%
            VariationType variationType = (VariationType) getObject("variationtype");

            if(variationType.isLocalized())
            {
                out.println("<localizable>1</localizable>");
            }
        else
        {
            out.println("<localizable>0</localizable>");
        }
        
        if(variationType.getValueType() == ProductAttributeEnumerationConstants.PRODUCT_ATTRIBUTE_TYPE_INTEGER)
        {
            out.println("<type>int</type>");
        }
        else if (variationType.getValueType() == ProductAttributeEnumerationConstants.PRODUCT_ATTRIBUTE_TYPE_DOUBLE)
        {
            out.println("<type>double</type>");
        }
        else if (variationType.getValueType() == ProductAttributeEnumerationConstants.PRODUCT_ATTRIBUTE_TYPE_STRING)
        {
            out.println("<type>string</type>");
        }
        
        out.println("<variation-type-values>");
        
        Iterator avs = variationType.createAttributeValuesIterator();
        
        String  defaultLocale = null;

        while (avs.hasNext())
        {
            AttributeValue  av          = (AttributeValue) avs.next();
            String          avName      = av.getName();

            if (avName.equals(ProductAttributeEnumerationConstants.ENUMERATION_VALUES_NAME))
            {
                out.println("<variation-type-value>");

                String localeID = av.getXMLLocaleID();
                Object enumValues  = av.getObject();

                if (enumValues instanceof Iterator)
                {
                    Iterator enumIterator = (Iterator) enumValues;

                    while (enumIterator.hasNext())
                    {
                        Object value = enumIterator.next();
                        out.print("<value");
                        out.print(" xml:lang=\"");
                        out.print(localeID);
                        out.print("\">");
                        out.print(stringToXml(value.toString()));
                        out.println("</value>");
                    }

                }

                out.println("</variation-type-value>");
            }   
        }
        
        out.println("</variation-type-values>");
        
        getPipelineDictionary().put("variationTypeCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(variationType.createCustomAttributesIterator(), variationType));
        
        %>
        
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("variationTypeCustomAttributes"))}, 112); %>

    </variation-type>
<% } %>
<% printFooter(out); %>