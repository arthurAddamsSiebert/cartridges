<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>



<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>

<%@ page import = "com.intershop.beehive.xcs.capi.product.*,com.intershop.beehive.xcs.capi.producttype.*,java.util.Iterator,com.intershop.beehive.core.capi.domain.*" %>
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
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("producttype"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>

    <product-type<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("producttype:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("producttype:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
        <name><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("producttype:Name"),null)),null)%></name>

    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("producttype:ParentProductType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
            <parent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("producttype:ParentProductType:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("producttype:ParentProductType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportDomainRefs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %> domain="<% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("producttype:ParentProductType:Domain:DomainName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/><% } %>

        <% while (loop("producttype:AttributeValues","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name><% } %>
        <% } %>

        <%
            ProductType productType = (ProductType) getObject("producttype");

            if(productType.isDefault())
            {
                out.println("<default>1</default>");
            }
            else
            {
                out.println("<default>0</default>");
            }


            Iterator productAttributes = productType.createProductAttributesIterator();

            if(productAttributes.hasNext())
            {
                out.println("<product-type-attributes>");

                while (productAttributes.hasNext())
                {
                    ProductAttribute productAttribute = (ProductAttribute) productAttributes.next();
                    out.print("<product-type-attribute name=\"");
                    out.print(stringToXml(productAttribute.getName()));
                    out.print("\"");

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_STRING)
                    {
                        out.println(" dt:dt=\"string\">");
                    }

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_INT)
                    {
                        out.println(" dt:dt=\"int\">");
                    }

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_DOUBLE)
                    {
                        out.println(" dt:dt=\"double\">");
                    }
                    
                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_TEXT)
                    {
                        out.println(" dt:dt=\"text\">");
                    }

                    if(productAttribute.isOrderRequired())
                    {
                        out.println("<order-required>1</order-required>");
                    }
                    else
                    {
                        out.println("<order-required>0</order-required>");
                    }

                    for (Iterator iter = productAttribute.createAttributeValuesIterator("unit"); iter.hasNext(); )
                    {
                    	AttributeValue unit = (AttributeValue)iter.next();
                    	out.print("<unit xml:lang=\"" + unit.getXMLLocaleID() + "\">");
                    	out.println(stringToXml(unit.getStringValue()) + "</unit>");
                    }

                    if(productAttribute.isLocalized())
                    {
                        out.println("<localizable>1</localizable>");
                    }
                    else
                    {
                        out.println("<localizable>0</localizable>");
                    }

                    Object defaultValue = productAttribute.getDefaultValue();

                    Iterator avs = productAttribute.createAttributeValuesIterator();

                    String  defaultLocale = null;

                    while(avs.hasNext())
                    {
                        AttributeValue  av          = (AttributeValue) avs.next();
                        String          avName      = av.getName();

                        if(avName.equals("defaultValue"))
                        {
                            defaultLocale = av.getXMLLocaleID();
                        }

                        if(avName.equals(ProductAttributeEnumerationConstants.ENUMERATION_VALUES_NAME))
                        {
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
                                    out.print("\"");
                                    out.print(" default=\"");
                                    if(value.equals(defaultValue))
                                    {
                                        out.print("1");
                                    }
                                    else
                                    {
                                        out.print("0");
                                    }
                                    out.print("\">");
                                    out.print(stringToXml(value.toString()));
                                    out.println("</value>");
                                }

                            }
                        }
                    }

                    if (!productAttribute.isEnumeration())
                    {
                        if (defaultValue != null)
                        {
                            out.print("<value");
                            out.print(" xml:lang=\"");
                            out.print(defaultLocale);
                            out.print("\"");
                            out.print(" default=\"1\">");
                            out.print(stringToXml(defaultValue.toString()));
                            out.println("</value>");
                        }
                    }

                    out.println("</product-type-attribute>");
                }
                out.println("</product-type-attributes>");
            }

            getPipelineDictionary().put("productTypeCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(productType.createCustomAttributesIterator(), productType));
        %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("productTypeCustomAttributes"))}, 185); %>

    </product-type>

<% } %>
<% printFooter(out); %>